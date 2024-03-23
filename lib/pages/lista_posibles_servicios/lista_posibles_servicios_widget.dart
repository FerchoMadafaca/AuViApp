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
import 'lista_posibles_servicios_model.dart';
export 'lista_posibles_servicios_model.dart';

class ListaPosiblesServiciosWidget extends StatefulWidget {
  const ListaPosiblesServiciosWidget({super.key});

  @override
  State<ListaPosiblesServiciosWidget> createState() =>
      _ListaPosiblesServiciosWidgetState();
}

class _ListaPosiblesServiciosWidgetState
    extends State<ListaPosiblesServiciosWidget> {
  late ListaPosiblesServiciosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaPosiblesServiciosModel());
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
                          '\nOfertas Disponibles\n',
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
                  height: 454.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: StreamBuilder<List<LogsOfertasRecord>>(
                      stream: queryLogsOfertasRecord(
                        queryBuilder: (logsOfertasRecord) =>
                            logsOfertasRecord.where(
                          'Cliente',
                          isEqualTo: currentUserEmail,
                        ),
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
                        List<LogsOfertasRecord> dataTableLogsOfertasRecordList =
                            snapshot.data!;
                        return DataTable2(
                          columns: [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Socio',
                                  style:
                                      FlutterFlowTheme.of(context).labelLarge,
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Costo',
                                  style:
                                      FlutterFlowTheme.of(context).labelLarge,
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Ubicacion',
                                  style:
                                      FlutterFlowTheme.of(context).labelLarge,
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Text(
                                    'Ver',
                                    textAlign: TextAlign.end,
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          rows: dataTableLogsOfertasRecordList
                              .mapIndexed((dataTableIndex,
                                      dataTableLogsOfertasRecord) =>
                                  [
                                    Text(
                                      dataTableLogsOfertasRecord.socio,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF087700),
                                          ),
                                    ),
                                    Text(
                                      dataTableLogsOfertasRecord.costo,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        dataTableLogsOfertasRecord.ubicacion
                                            ?.toString(),
                                        'Na',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'DetallesOferta',
                                            queryParameters: {
                                              'idoferta': serializeParam(
                                                dataTableLogsOfertasRecord
                                                    .reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Icon(
                                          Icons.arrow_circle_right,
                                          color: Color(0xFF0DFF00),
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ].map((c) => DataCell(c)).toList())
                              .map((e) => DataRow(cells: e))
                              .toList(),
                          headingRowColor: MaterialStateProperty.all(
                            FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          headingRowHeight: 20.0,
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
                ),
              ],
            ),
            FlutterFlowAdBanner(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              showsTestAd: false,
              androidAdUnitID: 'ca-app-pub-9536734685921304/9614563695',
            ),
          ],
        ),
      ),
    );
  }
}
