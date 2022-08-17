import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'converter_record.g.dart';

abstract class ConverterRecord
    implements Built<ConverterRecord, ConverterRecordBuilder> {
  static Serializer<ConverterRecord> get serializer =>
      _$converterRecordSerializer;

  @nullable
  BuiltList<String> get converterCurrency;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ConverterRecordBuilder builder) =>
      builder..converterCurrency = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('converter');

  static Stream<ConverterRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ConverterRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ConverterRecord._();
  factory ConverterRecord([void Function(ConverterRecordBuilder) updates]) =
      _$ConverterRecord;

  static ConverterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createConverterRecordData() => serializers.toFirestore(
    ConverterRecord.serializer,
    ConverterRecord((c) => c..converterCurrency = null));
