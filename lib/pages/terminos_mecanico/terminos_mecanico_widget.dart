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
import 'terminos_mecanico_model.dart';
export 'terminos_mecanico_model.dart';

class TerminosMecanicoWidget extends StatefulWidget {
  const TerminosMecanicoWidget({super.key});

  @override
  State<TerminosMecanicoWidget> createState() => _TerminosMecanicoWidgetState();
}

class _TerminosMecanicoWidgetState extends State<TerminosMecanicoWidget> {
  late TerminosMecanicoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosMecanicoModel());
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
                      '\nChecklist Básico para Prestador De Servicio: Mecánico de AuxVi®',
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
                                        '1.\tGato hidráulico y soporte:\n•\tUn gato robusto y seguro para levantar el vehículo.\n•\tSoportes para mantener el vehículo elevado de manera segura.\n\n\n2.\tLlave cruz o Llave de ruedas:\n•\tPara quitar las tuercas de las ruedas.\n\n\n3.\tLlave inglesa ajustable:\n•\tPara tareas diversas.\n\n\n4.\tGato de tijera:\n•\tCompacto y útil para levantar el vehículo en espacios limitados.\n\n\n5.\tDestornilladores:\n•\tPhillips y planos para posibles reparaciones simples.\n\n\n6.\tAlicates de bloqueo (Vise-Grips):\n•\tPara sujetar piezas o componentes.\n',
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
                                '7.\tKit de herramientas de reparación de neumáticos:\n•\tIncluyendo un parche y una llave para válvulas.\n\n\n8.\tLinterna y baterías de repuesto:\n•\tPara trabajar en condiciones de poca luz.\n\n\n9.\tChaleco reflectante y conos de seguridad:\n•\tPara aumentar la visibilidad y la seguridad en la carretera.\n\n\n10.\tGuantes de trabajo resistentes:\n•\tPara proteger las manos durante las reparaciones.\n\n\n11.\tCables de arranque:\n•\tPara ayudar a vehículos con batería descargada.\n\n\n12.\tBotiquín de primeros auxilios:\n•\tCon suministros básicos de primeros auxilios.\n\n\n13.\tLlave de bujías y juego de bujías de repuesto:\n•\tPara problemas relacionados con el encendido.\n\n\n14.\tComprobador de presión de neumáticos:\n•\tPara verificar y ajustar la presión de los neumáticos.',
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
                                      '15.\tAceite de motor y líquido refrigerante de repuesto:\n•\tEn pequeñas cantidades para las emergencias más comunes.\n\n\n16.\tExtintor de incendios:\n•\tDebería ser adecuado para incendios de automóviles.\n\n\n17.\tCinta aislante y herramientas eléctricas básicas:\n•\tPara reparaciones eléctricas simples.\n',
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
                                          'Aceptas que cumpliras con el Checklist Básico para Prestador De Servicio: Mecanico de AuxVi®\n\n',
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
                                      socioMecanico: 'Pendiente',
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
