import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'country_record.g.dart';

abstract class CountryRecord
    implements Built<CountryRecord, CountryRecordBuilder> {
  static Serializer<CountryRecord> get serializer => _$countryRecordSerializer;

  @nullable
  String get countryPhoneNumbers;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CountryRecordBuilder builder) =>
      builder..countryPhoneNumbers = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('country');

  static Stream<CountryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CountryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CountryRecord._();
  factory CountryRecord([void Function(CountryRecordBuilder) updates]) =
      _$CountryRecord;

  static CountryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCountryRecordData({
  String countryPhoneNumbers,
}) =>
    serializers.toFirestore(CountryRecord.serializer,
        CountryRecord((c) => c..countryPhoneNumbers = countryPhoneNumbers));
