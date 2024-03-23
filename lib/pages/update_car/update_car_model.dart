import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'update_car_widget.dart' show UpdateCarWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateCarModel extends FlutterFlowModel<UpdateCarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CarNombre widget.
  FocusNode? carNombreFocusNode;
  TextEditingController? carNombreController;
  String? Function(BuildContext, String?)? carNombreControllerValidator;
  // State field(s) for CarMarca widget.
  FocusNode? carMarcaFocusNode;
  TextEditingController? carMarcaController;
  String? Function(BuildContext, String?)? carMarcaControllerValidator;
  // State field(s) for CarColor widget.
  FocusNode? carColorFocusNode;
  TextEditingController? carColorController;
  String? Function(BuildContext, String?)? carColorControllerValidator;
  // State field(s) for CarAnio widget.
  FocusNode? carAnioFocusNode;
  TextEditingController? carAnioController;
  String? Function(BuildContext, String?)? carAnioControllerValidator;
  // State field(s) for CarPlacas widget.
  FocusNode? carPlacasFocusNode;
  TextEditingController? carPlacasController;
  String? Function(BuildContext, String?)? carPlacasControllerValidator;
  // State field(s) for CarMotor widget.
  FocusNode? carMotorFocusNode;
  TextEditingController? carMotorController;
  String? Function(BuildContext, String?)? carMotorControllerValidator;
  // State field(s) for CarCilindros widget.
  FocusNode? carCilindrosFocusNode;
  TextEditingController? carCilindrosController;
  String? Function(BuildContext, String?)? carCilindrosControllerValidator;
  // State field(s) for CarPasajeros widget.
  FocusNode? carPasajerosFocusNode;
  TextEditingController? carPasajerosController;
  String? Function(BuildContext, String?)? carPasajerosControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    carNombreFocusNode?.dispose();
    carNombreController?.dispose();

    carMarcaFocusNode?.dispose();
    carMarcaController?.dispose();

    carColorFocusNode?.dispose();
    carColorController?.dispose();

    carAnioFocusNode?.dispose();
    carAnioController?.dispose();

    carPlacasFocusNode?.dispose();
    carPlacasController?.dispose();

    carMotorFocusNode?.dispose();
    carMotorController?.dispose();

    carCilindrosFocusNode?.dispose();
    carCilindrosController?.dispose();

    carPasajerosFocusNode?.dispose();
    carPasajerosController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
