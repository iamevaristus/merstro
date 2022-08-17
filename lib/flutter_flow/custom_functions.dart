import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String goals(
  bool yesGoal,
  int noGoal,
) {
  // check if a string is true
  return yesGoal
      ? '$yesGoal goals'
      : noGoal == 0
          ? ''
          : '$noGoal goals.';
}
