import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_address_widget.dart' show UpdateAddressWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateAddressModel extends FlutterFlowModel<UpdateAddressWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for updateAddressField widget.
  FocusNode? updateAddressFieldFocusNode;
  TextEditingController? updateAddressFieldTextController;
  String? Function(BuildContext, String?)?
      updateAddressFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    updateAddressFieldFocusNode?.dispose();
    updateAddressFieldTextController?.dispose();
  }
}
