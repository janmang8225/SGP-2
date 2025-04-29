import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? returnTotalPrice(
  double qty,
  double price,
) {
  return qty * price;
}

double? getCartTotal(
  double itemPrice,
  double totalPrice,
) {
  return (itemPrice + totalPrice);
}

double? subtract2num(
  double a,
  double b,
) {
  return a - b;
}

String? getPublicImageUrl(String? filePath) {
  const String supabaseProjectId = 'igdczbttminqpocvermq';
  return 'https://$supabaseProjectId.supabase.co/storage/v1/object/public/$filePath';
}
