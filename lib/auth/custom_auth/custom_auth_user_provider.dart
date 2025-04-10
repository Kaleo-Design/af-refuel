import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class RefuelAuthUser {
  RefuelAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  AccountStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<RefuelAuthUser> refuelAuthUserSubject =
    BehaviorSubject.seeded(RefuelAuthUser(loggedIn: false));
Stream<RefuelAuthUser> refuelAuthUserStream() =>
    refuelAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
