import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_user_widget.dart' show CreateUserWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateUserModel extends FlutterFlowModel<CreateUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaController;
  String? Function(BuildContext, String?)? contrasenaControllerValidator;
  // State field(s) for Contrasena2 widget.
  FocusNode? contrasena2FocusNode;
  TextEditingController? contrasena2Controller;
  String? Function(BuildContext, String?)? contrasena2ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    correoFocusNode?.dispose();
    correoController?.dispose();

    nombreFocusNode?.dispose();
    nombreController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaController?.dispose();

    contrasena2FocusNode?.dispose();
    contrasena2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
