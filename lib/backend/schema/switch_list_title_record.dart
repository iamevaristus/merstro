import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'switch_list_title_record.g.dart';

abstract class SwitchListTitleRecord
    implements Built<SwitchListTitleRecord, SwitchListTitleRecordBuilder> {
  static Serializer<SwitchListTitleRecord> get serializer =>
      _$switchListTitleRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'SwitchOn')
  bool get switchOn;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SwitchListTitleRecordBuilder builder) =>
      builder..switchOn = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SwitchListTitle');

  static Stream<SwitchListTitleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SwitchListTitleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  SwitchListTitleRecord._();
  factory SwitchListTitleRecord(
          [void Function(SwitchListTitleRecordBuilder) updates]) =
      _$SwitchListTitleRecord;

  static SwitchListTitleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSwitchListTitleRecordData({
  bool switchOn,
}) =>
    serializers.toFirestore(SwitchListTitleRecord.serializer,
        SwitchListTitleRecord((s) => s..switchOn = switchOn));
