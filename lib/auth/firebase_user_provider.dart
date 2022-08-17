import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MerstroFirebaseUser {
  MerstroFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MerstroFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MerstroFirebaseUser> merstroFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MerstroFirebaseUser>(
        (user) => currentUser = MerstroFirebaseUser(user));
