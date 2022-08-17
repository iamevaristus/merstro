import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'exchange_record.g.dart';

abstract class ExchangeRecord
    implements Built<ExchangeRecord, ExchangeRecordBuilder> {
  static Serializer<ExchangeRecord> get serializer =>
      _$exchangeRecordSerializer;

  @nullable
  DocumentReference get exchangeUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ExchangeRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exchange');

  static Stream<ExchangeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ExchangeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ExchangeRecord._();
  factory ExchangeRecord([void Function(ExchangeRecordBuilder) updates]) =
      _$ExchangeRecord;

  static ExchangeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createExchangeRecordData({
  DocumentReference exchangeUser,
}) =>
    serializers.toFirestore(ExchangeRecord.serializer,
        ExchangeRecord((e) => e..exchangeUser = exchangeUser));
