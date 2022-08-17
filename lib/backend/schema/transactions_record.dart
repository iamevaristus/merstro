import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  @nullable
  String get transactionname;

  @nullable
  String get transactionamount;

  @nullable
  DateTime get transactiontime;

  @nullable
  String get transactionplace;

  @nullable
  DocumentReference get category;

  @nullable
  DocumentReference get user;

  @nullable
  BuiltList<String> get categoryname;

  @nullable
  String get transactionReason;

  @nullable
  DocumentReference get budgetAssociated;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..transactionname = ''
    ..transactionamount = ''
    ..transactionplace = ''
    ..categoryname = ListBuilder()
    ..transactionReason = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionsRecordData({
  String transactionname,
  String transactionamount,
  DateTime transactiontime,
  String transactionplace,
  DocumentReference category,
  DocumentReference user,
  String transactionReason,
  DocumentReference budgetAssociated,
}) =>
    serializers.toFirestore(
        TransactionsRecord.serializer,
        TransactionsRecord((t) => t
          ..transactionname = transactionname
          ..transactionamount = transactionamount
          ..transactiontime = transactiontime
          ..transactionplace = transactionplace
          ..category = category
          ..user = user
          ..categoryname = null
          ..transactionReason = transactionReason
          ..budgetAssociated = budgetAssociated));
