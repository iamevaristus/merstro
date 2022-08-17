import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'signup_record.g.dart';

abstract class SignupRecord
    implements Built<SignupRecord, SignupRecordBuilder> {
  static Serializer<SignupRecord> get serializer => _$signupRecordSerializer;

  @nullable
  String get emailaddress;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get uid;

  @nullable
  int get age;

  @nullable
  String get usertitle;

  @nullable
  DateTime get createdtime;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SignupRecordBuilder builder) => builder
    ..emailaddress = ''
    ..password = ''
    ..displayName = ''
    ..uid = ''
    ..age = 0
    ..usertitle = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..email = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('signup');

  static Stream<SignupRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SignupRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SignupRecord._();
  factory SignupRecord([void Function(SignupRecordBuilder) updates]) =
      _$SignupRecord;

  static SignupRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSignupRecordData({
  String emailaddress,
  String password,
  String displayName,
  String uid,
  int age,
  String usertitle,
  DateTime createdtime,
  LatLng location,
  String photoUrl,
  String phoneNumber,
  String email,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        SignupRecord.serializer,
        SignupRecord((s) => s
          ..emailaddress = emailaddress
          ..password = password
          ..displayName = displayName
          ..uid = uid
          ..age = age
          ..usertitle = usertitle
          ..createdtime = createdtime
          ..location = location
          ..photoUrl = photoUrl
          ..phoneNumber = phoneNumber
          ..email = email
          ..createdTime = createdTime));
