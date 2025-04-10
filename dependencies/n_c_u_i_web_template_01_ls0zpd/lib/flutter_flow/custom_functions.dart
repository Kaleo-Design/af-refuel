import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';

double? getProgressBarValue(
  int? totalValue,
  int? progressValue,
) {
  // take the progressValue and divide by the totalValue and return as a double
  if (totalValue == null || progressValue == null || totalValue == 0) {
    return null;
  }
  return progressValue / totalValue;
}

double? getAverage(List<double>? ratings) {
  // I need to take the list of ratings and get an average and return it.
  if (ratings == null || ratings.isEmpty) {
    return null;
  }
  double sum = 0;
  for (final rating in ratings) {
    sum += rating;
  }
  return sum / ratings.length;
}
