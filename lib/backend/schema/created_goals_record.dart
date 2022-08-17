import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'created_goals_record.g.dart';

abstract class CreatedGoalsRecord
    implements Built<CreatedGoalsRecord, CreatedGoalsRecordBuilder> {
  static Serializer<CreatedGoalsRecord> get serializer =>
      _$createdGoalsRecordSerializer;

  @nullable
  BuiltList<String> get createdGoals;

  @nullable
  @BuiltValueField(wireName: 'ongoing_Goals')
  BuiltList<String> get ongoingGoals;

  @nullable
  @BuiltValueField(wireName: 'done_Goals')
  BuiltList<int> get doneGoals;

  @nullable
  String get noGoal;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CreatedGoalsRecordBuilder builder) => builder
    ..createdGoals = ListBuilder()
    ..ongoingGoals = ListBuilder()
    ..doneGoals = ListBuilder()
    ..noGoal = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('created_goals');

  static Stream<CreatedGoalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CreatedGoalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CreatedGoalsRecord._();
  factory CreatedGoalsRecord(
          [void Function(CreatedGoalsRecordBuilder) updates]) =
      _$CreatedGoalsRecord;

  static CreatedGoalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCreatedGoalsRecordData({
  String noGoal,
}) =>
    serializers.toFirestore(
        CreatedGoalsRecord.serializer,
        CreatedGoalsRecord((c) => c
          ..createdGoals = null
          ..ongoingGoals = null
          ..doneGoals = null
          ..noGoal = noGoal));
