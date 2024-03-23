import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terminos_grua_model.dart';
export 'terminos_grua_model.dart';

class TerminosGruaWidget extends StatefulWidget {
  const TerminosGruaWidget({super.key});

  @override
  State<TerminosGruaWidget> createState() => _TerminosGruaWidgetState();
}

class _TerminosGruaWidgetState extends State<TerminosGruaWidget> {
  late TerminosGruaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosGruaModel());
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      '\nChecklist Básico para Prestador De Servicio: Grúa de AuxVi®',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: PageView(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        '1.\tInspección Preliminar:\n\n•\tVerificar visualmente el estado general de la grúa.\n•\tAsegurarse de que todas las luces estén funcionando correctamente.\n•\tInspeccionar los neumáticos para garantizar una presión adecuada y sin daños visibles.\n\n\n\n2.\tDocumentación y Licencias:\n\n•\tConfirmar que el conductor de la grúa tenga una licencia de conducir y certificaciones requeridas.\n•\tAsegurarse de que la grúa tenga todos los documentos necesarios, incluyendo registros de mantenimiento y seguros.\n\n\n\n3.\tEquipo de Seguridad:\n\n•\tVerificar que la grúa esté equipada con conos de seguridad y señales de advertencia.\n•\tAsegurarse de que el sistema de luces intermitentes y sirenas estén operativos.\n',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Text(
                                '4.\tComunicación:\n\n•\tAsegurar que la radio de comunicación o el teléfono móvil estén en funcionamiento.\n•\tConfirmar la disponibilidad de un sistema de comunicación entre el conductor de la grúa y el centro de operaciones.\n\n\n\n5.\tInspección del Cable o Gancho:\n\n•\tRevisar visualmente el estado del cable o gancho de remolque.\n•\tAsegurarse de que no haya signos de desgaste excesivo o daños.\n\n\n\n6.\tSeguridad del Vehículo a Remolcar:\n\n•\tConfirmar que el vehículo a remolcar esté asegurado correctamente al gancho de la grúa.\n•\tVerificar que el vehículo no tenga objetos sueltos que puedan caer durante el remolque.\n\n\n\n7.\tProcedimientos de Remolque:\n•\tFamiliarizarse con los procedimientos de remolque seguros y eficientes.\n•\tAsegurarse de seguir las normativas de remolque establecidas por las autoridades locales.',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Text(
                                      '8.\tComprobación Post-Remolque:\n\n•\tVerificar nuevamente el estado del vehículo remolcado después de cargarlo en la grúa.\n•\tConfirmar que todas las luces del vehículo remolcado estén apagadas y que esté correctamente asegurado.\n\n\n\n9.\tRegistro de Servicio:\n\n•\tMantener un registro detallado de cada servicio de remolque, incluyendo la ubicación, el estado del vehículo, y cualquier problema o situación especial.\n\n\n\n10.\tAtención al Cliente:\n\n•\tAsegurarse de brindar una atención amable y profesional al cliente siga Baco®.\n•\tProporcionar información clara sobre tarifas y procedimientos antes de realizar el servicio siga términos y condiciones de pago.\n',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Checklist Básico para Prestador De Servicio: Grúa de AuxVi®\n\n',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    await currentUserReference!
                                        .update(createUsuariosRecordData(
                                      socioGrua: 'Pendiente',
                                    ));

                                    context.pushNamed('Paso1_Formulario');
                                  },
                                  text: 'Acepto',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF087700),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 1.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          count: 4,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 3.0,
                            spacing: 8.0,
                            radius: 16.0,
                            dotWidth: 16.0,
                            dotHeight: 8.0,
                            dotColor: FlutterFlowTheme.of(context).accent1,
                            activeDotColor:
                                FlutterFlowTheme.of(context).primary,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
