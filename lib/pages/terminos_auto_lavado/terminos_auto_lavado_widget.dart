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
import 'terminos_auto_lavado_model.dart';
export 'terminos_auto_lavado_model.dart';

class TerminosAutoLavadoWidget extends StatefulWidget {
  const TerminosAutoLavadoWidget({super.key});

  @override
  State<TerminosAutoLavadoWidget> createState() =>
      _TerminosAutoLavadoWidgetState();
}

class _TerminosAutoLavadoWidgetState extends State<TerminosAutoLavadoWidget> {
  late TerminosAutoLavadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosAutoLavadoModel());
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
                      '\nChecklist Básico para Prestador De Servicio: Lavado de Auto de AuxVi®',
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
                                        '1.\tEquipo y Suministros:\n\n•\tCubetas para agua (al menos dos).\n•\tJabón o detergente para autos.\n•\tEsponjas o guantes de lavado.\n•\tCepillos suaves para limpiar las llantas.\n•\tToallas de microfibra.\n•\tManguera de agua con boquilla ajustable.\n•\tAspiradora (si se ofrece servicio de limpieza interior).\n•\tLimpiador de vidrios.\n\n\n\n2.\tPreparación del Área:\n\n•\tAsegurarse de que el área de lavado esté despejada y segura.\n•\tVerificar que no haya objetos que puedan causar daño al automóvil durante el proceso de lavado.\n\n\n\n3.\tLimpieza Exterior:\n\n•\tRemover el exceso de suciedad y polvo con una manguera de agua.\n•\tAplicar jabón o detergente utilizando esponjas o guantes de lavado.\n•\tCepillar y limpiar las llantas con cepillos especializados.\n•\tEnjuagar completamente el automóvil con agua limpia.\n',
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
                                '4.\tSecado:\n\n•\tSecar el automóvil con toallas de microfibra para evitar manchas de agua.\n•\tPrestar atención a las áreas difíciles de alcanzar, como las juntas y los espejos retrovisores.\n\n\n\n5.\tLimpieza Interior:\n\n•\tAspirar el interior para eliminar polvo y suciedad.\n•\tLimpiar tableros y superficies con un limpiador interior adecuado.\n•\tLimpiar los vidrios interiores con un limpiador de vidrios.\n\n\n\n6.\tDetalles Adicionales:\n\n•\tLimpiar y acondicionar los asientos de cuero (si es aplicable).\n•\tLimpiar las salidas de aire y las ranuras con un cepillo pequeño.\n•\tAplicar productos para dar brillo a las superficies exteriores (si es necesario).\n',
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
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Text(
                                      '7.\tInspección Final:\n\n•\tRevisar que no queden manchas o residuos en la pintura.\n•\tVerificar que todas las ventanas estén limpias y sin marcas.\n•\tAsegurarse de que el interior esté libre de polvo y bien acondicionado.\n\n\n\n8.\tAtención al Cliente:\n\n•\tAsegurarse de que el cliente esté satisfecho con el servicio.\n•\tOfrecer servicios adicionales si es necesario.\n•\tInformar al cliente sobre cualquier hallazgo inesperado durante el proceso de lavado.\n\n\n\n',
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
                                          'Aceptas que cumpliras con el Checklist Básico para Prestador De Servicio: Lavado de Auto de AuxVi®\n\n',
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
                                      socioAutoLavado: 'Pendiente',
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
