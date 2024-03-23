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
import 'terminos_desponchado_model.dart';
export 'terminos_desponchado_model.dart';

class TerminosDesponchadoWidget extends StatefulWidget {
  const TerminosDesponchadoWidget({super.key});

  @override
  State<TerminosDesponchadoWidget> createState() =>
      _TerminosDesponchadoWidgetState();
}

class _TerminosDesponchadoWidgetState extends State<TerminosDesponchadoWidget> {
  late TerminosDesponchadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosDesponchadoModel());
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
                      '\nChecklist Básico para Prestador De Servicio: Desponchado y/o cambio de llanta de AuxVi®',
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
                                        '1.\tDocumentación y Licencias:\n\n•\tConfirmar que el técnico de desponchado tenga la licencia y certificaciones necesarias.\n•\tAsegurarse de que la unidad móvil cuente con todos los documentos requeridos.\n\n\n\n2.\tEquipo y Herramientas:\n\n•\tVerificar que la unidad móvil esté equipada con gato, llave de ruedas, y herramientas necesarias para cambiar o reparar neumáticos.\n•\tAsegurarse de que se tengan repuestos básicos como neumáticos de repuesto y tapones de válvulas.\n\n\n\n3.\tSeguridad Personal:\n\n•\tUtilizar equipo de protección personal, incluyendo guantes y gafas de seguridad.\n•\tAsegurarse de que la unidad móvil esté equipada con conos de seguridad y señales de advertencia.\n',
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
                                '4.\tComunicación:\n\n•\tVerificar que la unidad móvil tenga una radio de comunicación o un teléfono móvil.\n•\tConfirmar la disponibilidad de un sistema de comunicación con el centro de operaciones.\n\n\n5.\tInspección del Neumático Afectado:\n\n•\tEvaluar visualmente el neumático afectado para determinar la naturaleza del problema (pinchazo, desgaste, etc.).\n•\tComprobar la presión del neumático para asegurarse de que esté dentro de los límites recomendados.\n\n\n6.\tProcedimientos de Reparación o Cambio:\n\n•\tRealizar la reparación del pinchazo si es posible, o cambiar el neumático según sea necesario.\n•\tAsegurarse de seguir los procedimientos de seguridad durante la reparación o cambio de neumáticos.\n\n\n7.\tInspección Adicional:\n\n•\tRevisar los otros neumáticos para detectar posibles problemas.\n•\tVerificar que las tuercas de las ruedas estén apretadas correctamente.\n',
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
                                      '8.\tRegistro de Servicio:\n\n•\tMantener un registro detallado de cada servicio de desponchado, incluyendo la ubicación, el tipo de servicio, y cualquier observación relevante.\n\n\n\n9.\tAtención al Cliente:\n\n•\tBrindar un servicio amable y eficiente, siga BaCo®.\n•\tProporcionar información sobre el estado de los neumáticos y cualquier recomendación adicional.\n\n\n\n10.\tEducación al Cliente:\n\n•\tInformar al cliente sobre prácticas seguras de conducción y mantenimiento de neumáticos.\n•\tProporcionar consejos para prevenir problemas futuros.\n',
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
                                          'Checklist Básico para Prestador De Servicio: Desponchado y/o cambio de llanta de AuxVi®\n\n',
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
                                      socioDesponchado: 'Pendiente',
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
