import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'historial_model.dart';
export 'historial_model.dart';

class HistorialWidget extends StatefulWidget {
  const HistorialWidget({super.key});

  @override
  State<HistorialWidget> createState() => _HistorialWidgetState();
}

class _HistorialWidgetState extends State<HistorialWidget> {
  late HistorialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistorialModel());
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
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Historial de Servicios',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 351.0,
                  height: 571.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: StreamBuilder<List<RegistrosServiciosRecord>>(
                    stream: queryRegistrosServiciosRecord(
                      queryBuilder: (registrosServiciosRecord) =>
                          registrosServiciosRecord
                              .where(
                                'Email',
                                isEqualTo: currentUserEmail,
                              )
                              .orderBy('Tiempo_Inicio', descending: true),
                    ),
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
                      List<RegistrosServiciosRecord>
                          dataTableRegistrosServiciosRecordList =
                          snapshot.data!;
                      return DataTable2(
                        columns: [
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Auto',
                                style: FlutterFlowTheme.of(context).labelLarge,
                              ),
                            ),
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Servicio',
                                style: FlutterFlowTheme.of(context).labelLarge,
                              ),
                            ),
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Log',
                                style: FlutterFlowTheme.of(context).labelLarge,
                              ),
                            ),
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Precio',
                                style: FlutterFlowTheme.of(context).labelLarge,
                              ),
                            ),
                          ),
                        ],
                        rows: dataTableRegistrosServiciosRecordList
                            .mapIndexed((dataTableIndex,
                                    dataTableRegistrosServiciosRecord) =>
                                [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'Logs',
                                        queryParameters: {
                                          'iDTodo': serializeParam(
                                            dataTableRegistrosServiciosRecord,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'iDTodo':
                                              dataTableRegistrosServiciosRecord,
                                        },
                                      );
                                    },
                                    child: Text(
                                      dataTableRegistrosServiciosRecord.auto,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF087700),
                                          ),
                                    ),
                                  ),
                                  Text(
                                    dataTableRegistrosServiciosRecord
                                        .tipoServicio,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Text(
                                    dateTimeFormat(
                                        'd/M h:mm a',
                                        dataTableRegistrosServiciosRecord
                                            .tiempoInicio!),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Text(
                                    dataTableRegistrosServiciosRecord
                                        .precioTotal
                                        .toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ].map((c) => DataCell(c)).toList())
                            .map((e) => DataRow(cells: e))
                            .toList(),
                        headingRowColor: MaterialStateProperty.all(
                          FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        headingRowHeight: 40.0,
                        dataRowColor: MaterialStateProperty.all(
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        dataRowHeight: 40.0,
                        border: TableBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        dividerThickness: 1.0,
                        columnSpacing: 2.0,
                        showBottomBorder: true,
                        minWidth: 49.0,
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
              child: FlutterFlowAdBanner(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                showsTestAd: false,
                androidAdUnitID: 'ca-app-pub-9536734685921304/2424499073',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
