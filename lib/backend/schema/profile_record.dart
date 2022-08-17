import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'profile_record.g.dart';

abstract class ProfileRecord
    implements Built<ProfileRecord, ProfileRecordBuilder> {
  static Serializer<ProfileRecord> get serializer => _$profileRecordSerializer;

  @nullable
  BuiltList<DocumentReference> get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProfileRecordBuilder builder) =>
      builder..name = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profile');

  static Stream<ProfileRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProfileRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProfileRecord._();
  factory ProfileRecord([void Function(ProfileRecordBuilder) updates]) =
      _$ProfileRecord;

  static ProfileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProfileRecordData() => serializers.toFirestore(
    ProfileRecord.serializer, ProfileRecord((p) => p..name = null));
