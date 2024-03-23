import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_car_model.dart';
export 'add_car_model.dart';

class AddCarWidget extends StatefulWidget {
  const AddCarWidget({super.key});

  @override
  State<AddCarWidget> createState() => _AddCarWidgetState();
}

class _AddCarWidgetState extends State<AddCarWidget> {
  late AddCarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddCarModel());

    _model.carNombreController ??= TextEditingController();
    _model.carNombreFocusNode ??= FocusNode();

    _model.carColorController ??= TextEditingController();
    _model.carColorFocusNode ??= FocusNode();

    _model.carPlacasController ??= TextEditingController();
    _model.carPlacasFocusNode ??= FocusNode();

    _model.carMotorController ??= TextEditingController();
    _model.carMotorFocusNode ??= FocusNode();

    _model.carCilindrosController ??= TextEditingController();
    _model.carCilindrosFocusNode ??= FocusNode();

    _model.carPasajerosController ??= TextEditingController();
    _model.carPasajerosFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).customColor1,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          backgroundColor: Color(0xFF7E0000),
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(1.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).alternate,
                      size: 36.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          elevation: 0.0,
        ),
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      '\nIngrese los datos del Vehiculo:\n',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                    child: TextFormField(
                      controller: _model.carNombreController,
                      focusNode: _model.carNombreFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7E0000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF09),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.carNombreControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                    child: TextFormField(
                      controller: _model.carColorController,
                      focusNode: _model.carColorFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Color',
                        labelStyle: GoogleFonts.getFont(
                          'Roboto',
                        ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7E0000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF09),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.carColorControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                    child: StreamBuilder<List<MarcasRecord>>(
                      stream: queryMarcasRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: SpinKitDualRing(
                                color: Color(0xFF8C0303),
                                size: 60.0,
                              ),
                            ),
                          );
                        }
                        List<MarcasRecord> dropDownMarcasRecordList =
                            snapshot.data!;
                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController1 ??=
                              FormFieldController<String>(null),
                          options: dropDownMarcasRecordList
                              .map((e) => e.nombreMarca)
                              .toList(),
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue1 = val),
                          width: 178.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Marca',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).alternate,
                          elevation: 2.0,
                          borderColor: Color(0xFF7E0000),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController2 ??=
                          FormFieldController<String>(null),
                      options: [
                        '2025',
                        '2024',
                        '2023',
                        '2022',
                        '2021',
                        '2020',
                        '2019',
                        '2018',
                        '2017',
                        '2016',
                        '2015',
                        '2014',
                        '2013',
                        '2012',
                        '2011',
                        '2010',
                        '2009',
                        '2008',
                        '2007',
                        '2006',
                        '2005',
                        '2004',
                        '2003',
                        '2002',
                        '2001',
                        '2000',
                        '1999',
                        '1998',
                        '1997',
                        '1996',
                        '1995',
                        '1994',
                        '1993',
                        '1992',
                        '1991',
                        '1990',
                        '1989',
                        '1988',
                        '1987',
                        '1986',
                        '1985',
                        '1984',
                        '1983',
                        '1982',
                        '1981',
                        '1980'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue2 = val),
                      width: 178.0,
                      height: 50.0,
                      textStyle: FlutterFlowTheme.of(context).bodyMedium,
                      hintText: 'Año',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      elevation: 2.0,
                      borderColor: Color(0xFF7E0000),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                    child: TextFormField(
                      controller: _model.carPlacasController,
                      focusNode: _model.carPlacasFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Placas',
                        labelStyle: GoogleFonts.getFont(
                          'Roboto',
                        ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7E0000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF09),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.carPlacasControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                    child: TextFormField(
                      controller: _model.carMotorController,
                      focusNode: _model.carMotorFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Motor',
                        labelStyle: GoogleFonts.getFont(
                          'Roboto',
                        ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7E0000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF09),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontSize: 14.0,
                      ),
                      validator: _model.carMotorControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 20.0),
                    child: TextFormField(
                      controller: _model.carCilindrosController,
                      focusNode: _model.carCilindrosFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Cilindros',
                        labelStyle: GoogleFonts.getFont(
                          'Roboto',
                        ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7E0000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF09),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.carCilindrosControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 20.0),
                    child: TextFormField(
                      controller: _model.carPasajerosController,
                      focusNode: _model.carPasajerosFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Pasajeros',
                        labelStyle: GoogleFonts.getFont(
                          'Roboto',
                        ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7E0000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF09),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontSize: 14.0,
                      ),
                      validator: _model.carPasajerosControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ],
            ),
            FFButtonWidget(
              onPressed: () async {
                await AutosRecord.collection.doc().set(createAutosRecordData(
                      nombreAuto: valueOrDefault<String>(
                        _model.carNombreController.text,
                        'No Name',
                      ),
                      marca: _model.dropDownValue1,
                      color: valueOrDefault<String>(
                        _model.carColorController.text,
                        'No Color',
                      ),
                      anio: _model.dropDownValue2,
                      placas: valueOrDefault<String>(
                        _model.carPlacasController.text,
                        'No Placas',
                      ),
                      motor: valueOrDefault<String>(
                        _model.carMotorController.text,
                        'No Motor',
                      ),
                      cilindros: valueOrDefault<String>(
                        _model.carCilindrosController.text,
                        'No Cilindros',
                      ),
                      pasajeros: valueOrDefault<String>(
                        _model.carPasajerosController.text,
                        'No Pasajeros',
                      ),
                      email: currentUserEmail,
                    ));

                context.pushNamed('ListaCarros');
              },
              text: 'Guardar',
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFF087700),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: FlutterFlowAdBanner(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                showsTestAd: false,
                androidAdUnitID: 'ca-app-pub-9536734685921304/9614563695',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
