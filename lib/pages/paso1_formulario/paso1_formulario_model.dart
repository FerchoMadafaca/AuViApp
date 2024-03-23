import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'paso1_formulario_widget.dart' show Paso1FormularioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Paso1FormularioModel extends FlutterFlowModel<Paso1FormularioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ForNombre widget.
  FocusNode? forNombreFocusNode;
  TextEditingController? forNombreController;
  String? Function(BuildContext, String?)? forNombreControllerValidator;
  // State field(s) for ForCurp widget.
  FocusNode? forCurpFocusNode;
  TextEditingController? forCurpController;
  String? Function(BuildContext, String?)? forCurpControllerValidator;
  // State field(s) for ForRFC widget.
  FocusNode? forRFCFocusNode;
  TextEditingController? forRFCController;
  String? Function(BuildContext, String?)? forRFCControllerValidator;
  // State field(s) for ForSS widget.
  FocusNode? forSSFocusNode;
  TextEditingController? forSSController;
  String? Function(BuildContext, String?)? forSSControllerValidator;
  // State field(s) for ForDireccion widget.
  FocusNode? forDireccionFocusNode;
  TextEditingController? forDireccionController;
  String? Function(BuildContext, String?)? forDireccionControllerValidator;
  // State field(s) for ForTelefono widget.
  FocusNode? forTelefonoFocusNode;
  TextEditingController? forTelefonoController;
  String? Function(BuildContext, String?)? forTelefonoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    forNombreFocusNode?.dispose();
    forNombreController?.dispose();

    forCurpFocusNode?.dispose();
    forCurpController?.dispose();

    forRFCFocusNode?.dispose();
    forRFCController?.dispose();

    forSSFocusNode?.dispose();
    forSSController?.dispose();

    forDireccionFocusNode?.dispose();
    forDireccionController?.dispose();

    forTelefonoFocusNode?.dispose();
    forTelefonoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
