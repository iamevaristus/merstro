import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'investment_record.g.dart';

abstract class InvestmentRecord
    implements Built<InvestmentRecord, InvestmentRecordBuilder> {
  static Serializer<InvestmentRecord> get serializer =>
      _$investmentRecordSerializer;

  @nullable
  DocumentReference get investmentUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(InvestmentRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('investment');

  static Stream<InvestmentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<InvestmentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  InvestmentRecord._();
  factory InvestmentRecord([void Function(InvestmentRecordBuilder) updates]) =
      _$InvestmentRecord;

  static InvestmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createInvestmentRecordData({
  DocumentReference investmentUser,
}) =>
    serializers.toFirestore(InvestmentRecord.serializer,
        InvestmentRecord((i) => i..investmentUser = investmentUser));
