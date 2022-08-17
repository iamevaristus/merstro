import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'budgets_record.g.dart';

abstract class BudgetsRecord
    implements Built<BudgetsRecord, BudgetsRecordBuilder> {
  static Serializer<BudgetsRecord> get serializer => _$budgetsRecordSerializer;

  @nullable
  String get budgetName;

  @nullable
  String get budgetAmount;

  @nullable
  DateTime get budgetCreated;

  @nullable
  String get budgetDescription;

  @nullable
  DocumentReference get userBudget;

  @nullable
  String get budgetSpent;

  @nullable
  DateTime get budgetStardate;

  @nullable
  String get budgetTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BudgetsRecordBuilder builder) => builder
    ..budgetName = ''
    ..budgetAmount = ''
    ..budgetDescription = ''
    ..budgetSpent = ''
    ..budgetTime = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budgets');

  static Stream<BudgetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BudgetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BudgetsRecord._();
  factory BudgetsRecord([void Function(BudgetsRecordBuilder) updates]) =
      _$BudgetsRecord;

  static BudgetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBudgetsRecordData({
  String budgetName,
  String budgetAmount,
  DateTime budgetCreated,
  String budgetDescription,
  DocumentReference userBudget,
  String budgetSpent,
  DateTime budgetStardate,
  String budgetTime,
}) =>
    serializers.toFirestore(
        BudgetsRecord.serializer,
        BudgetsRecord((b) => b
          ..budgetName = budgetName
          ..budgetAmount = budgetAmount
          ..budgetCreated = budgetCreated
          ..budgetDescription = budgetDescription
          ..userBudget = userBudget
          ..budgetSpent = budgetSpent
          ..budgetStardate = budgetStardate
          ..budgetTime = budgetTime));
