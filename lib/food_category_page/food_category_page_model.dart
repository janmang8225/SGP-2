import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'food_category_page_widget.dart' show FoodCategoryPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodCategoryPageModel extends FlutterFlowModel<FoodCategoryPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  Stream<List<UserCartTotalPriceRow>>? addToCartIIconButtonSupabaseStream1;
  Stream<List<UserCartTotalPriceRow>>? addToCartIIconButtonSupabaseStream2;
  Stream<List<UserCartTotalPriceRow>>? addToCartIIconButtonSupabaseStream3;
  Stream<List<UserCartTotalPriceRow>>? addToCartIIconButtonSupabaseStream4;
  Stream<List<UserCartTotalPriceRow>>? addToCartIIconButtonSupabaseStream5;
  Stream<List<UserCartTotalPriceRow>>? addToCartIIconButtonSupabaseStream6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
