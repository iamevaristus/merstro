import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_category_record.g.dart';

abstract class TransactionCategoryRecord
    implements
        Built<TransactionCategoryRecord, TransactionCategoryRecordBuilder> {
  static Serializer<TransactionCategoryRecord> get serializer =>
      _$transactionCategoryRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  BuiltList<String> get categoryName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionCategoryRecordBuilder builder) =>
      builder..categoryName = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactionCategory');

  static Stream<TransactionCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionCategoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionCategoryRecord._();
  factory TransactionCategoryRecord(
          [void Function(TransactionCategoryRecordBuilder) updates]) =
      _$TransactionCategoryRecord;

  static TransactionCategoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionCategoryRecordData({
  DocumentReference user,
}) =>
    serializers.toFirestore(
        TransactionCategoryRecord.serializer,
        TransactionCategoryRecord((t) => t
          ..user = user
          ..categoryName = null));
