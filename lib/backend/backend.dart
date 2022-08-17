import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/signup_record.dart';
import 'schema/transactions_record.dart';
import 'schema/budgets_record.dart';
import 'schema/user_list_record.dart';
import 'schema/budget_list_record.dart';
import 'schema/transaction_category_record.dart';
import 'schema/investment_record.dart';
import 'schema/exchange_record.dart';
import 'schema/converter_record.dart';
import 'schema/country_record.dart';
import 'schema/profile_record.dart';
import 'schema/switch_list_title_record.dart';
import 'schema/created_goals_record.dart';
import 'schema/serializers.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/signup_record.dart';
export 'schema/transactions_record.dart';
export 'schema/budgets_record.dart';
export 'schema/user_list_record.dart';
export 'schema/budget_list_record.dart';
export 'schema/transaction_category_record.dart';
export 'schema/investment_record.dart';
export 'schema/exchange_record.dart';
export 'schema/converter_record.dart';
export 'schema/country_record.dart';
export 'schema/profile_record.dart';
export 'schema/switch_list_title_record.dart';
export 'schema/created_goals_record.dart';

/// Functions to query SignupRecords (as a Stream and as a Future).
Stream<List<SignupRecord>> querySignupRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(SignupRecord.collection, SignupRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<SignupRecord>> querySignupRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(SignupRecord.collection, SignupRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<SignupRecord>> querySignupRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      SignupRecord.collection,
      SignupRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query TransactionsRecords (as a Stream and as a Future).
Stream<List<TransactionsRecord>> queryTransactionsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        TransactionsRecord.collection, TransactionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<TransactionsRecord>> queryTransactionsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        TransactionsRecord.collection, TransactionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<TransactionsRecord>> queryTransactionsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      TransactionsRecord.collection,
      TransactionsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query BudgetsRecords (as a Stream and as a Future).
Stream<List<BudgetsRecord>> queryBudgetsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(BudgetsRecord.collection, BudgetsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<BudgetsRecord>> queryBudgetsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(BudgetsRecord.collection, BudgetsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<BudgetsRecord>> queryBudgetsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      BudgetsRecord.collection,
      BudgetsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UserListRecords (as a Stream and as a Future).
Stream<List<UserListRecord>> queryUserListRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UserListRecord.collection, UserListRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UserListRecord>> queryUserListRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(UserListRecord.collection, UserListRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<UserListRecord>> queryUserListRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      UserListRecord.collection,
      UserListRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query BudgetListRecords (as a Stream and as a Future).
Stream<List<BudgetListRecord>> queryBudgetListRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(BudgetListRecord.collection, BudgetListRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<BudgetListRecord>> queryBudgetListRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        BudgetListRecord.collection, BudgetListRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<BudgetListRecord>> queryBudgetListRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      BudgetListRecord.collection,
      BudgetListRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query TransactionCategoryRecords (as a Stream and as a Future).
Stream<List<TransactionCategoryRecord>> queryTransactionCategoryRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(TransactionCategoryRecord.collection,
        TransactionCategoryRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<TransactionCategoryRecord>> queryTransactionCategoryRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(TransactionCategoryRecord.collection,
        TransactionCategoryRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<TransactionCategoryRecord>>
    queryTransactionCategoryRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
        queryCollectionPage(
          TransactionCategoryRecord.collection,
          TransactionCategoryRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query InvestmentRecords (as a Stream and as a Future).
Stream<List<InvestmentRecord>> queryInvestmentRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(InvestmentRecord.collection, InvestmentRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<InvestmentRecord>> queryInvestmentRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        InvestmentRecord.collection, InvestmentRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<InvestmentRecord>> queryInvestmentRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      InvestmentRecord.collection,
      InvestmentRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ExchangeRecords (as a Stream and as a Future).
Stream<List<ExchangeRecord>> queryExchangeRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ExchangeRecord.collection, ExchangeRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<ExchangeRecord>> queryExchangeRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(ExchangeRecord.collection, ExchangeRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<ExchangeRecord>> queryExchangeRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      ExchangeRecord.collection,
      ExchangeRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ConverterRecords (as a Stream and as a Future).
Stream<List<ConverterRecord>> queryConverterRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ConverterRecord.collection, ConverterRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<ConverterRecord>> queryConverterRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(ConverterRecord.collection, ConverterRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<ConverterRecord>> queryConverterRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      ConverterRecord.collection,
      ConverterRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query CountryRecords (as a Stream and as a Future).
Stream<List<CountryRecord>> queryCountryRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(CountryRecord.collection, CountryRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<CountryRecord>> queryCountryRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(CountryRecord.collection, CountryRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<CountryRecord>> queryCountryRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      CountryRecord.collection,
      CountryRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ProfileRecords (as a Stream and as a Future).
Stream<List<ProfileRecord>> queryProfileRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ProfileRecord.collection, ProfileRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<ProfileRecord>> queryProfileRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(ProfileRecord.collection, ProfileRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<ProfileRecord>> queryProfileRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      ProfileRecord.collection,
      ProfileRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query SwitchListTitleRecords (as a Stream and as a Future).
Stream<List<SwitchListTitleRecord>> querySwitchListTitleRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        SwitchListTitleRecord.collection, SwitchListTitleRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<SwitchListTitleRecord>> querySwitchListTitleRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        SwitchListTitleRecord.collection, SwitchListTitleRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<SwitchListTitleRecord>> querySwitchListTitleRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      SwitchListTitleRecord.collection,
      SwitchListTitleRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query CreatedGoalsRecords (as a Stream and as a Future).
Stream<List<CreatedGoalsRecord>> queryCreatedGoalsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        CreatedGoalsRecord.collection, CreatedGoalsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<CreatedGoalsRecord>> queryCreatedGoalsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        CreatedGoalsRecord.collection, CreatedGoalsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<CreatedGoalsRecord>> queryCreatedGoalsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      CreatedGoalsRecord.collection,
      CreatedGoalsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

Stream<List<T>> queryCollection<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>> dataStream;
  final QueryDocumentSnapshot nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  CollectionReference collection,
  Serializer<T> serializer, {
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot> docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore record representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = SignupRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createSignupRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
