import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detalles_oferta_model.dart';
export 'detalles_oferta_model.dart';

class DetallesOfertaWidget extends StatefulWidget {
  const DetallesOfertaWidget({
    super.key,
    required this.idoferta,
    String? estatus,
  }) : this.estatus = estatus ?? 'En Espera';

  final DocumentReference? idoferta;
  final String estatus;

  @override
  State<DetallesOfertaWidget> createState() => _DetallesOfertaWidgetState();
}

class _DetallesOfertaWidgetState extends State<DetallesOfertaWidget> {
  late DetallesOfertaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetallesOfertaModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 60.0,
            height: 60.0,
            child: SpinKitDualRing(
              color: Color(0xFF8C0303),
              size: 60.0,
            ),
          ),
        ),
      );
    }

    return StreamBuilder<LogsOfertasRecord>(
      stream: LogsOfertasRecord.getDocument(widget.idoferta!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).white,
            body: Center(
              child: SizedBox(
                width: 60.0,
                height: 60.0,
                child: SpinKitDualRing(
                  color: Color(0xFF8C0303),
                  size: 60.0,
                ),
              ),
            ),
          );
        }
        final detallesOfertaLogsOfertasRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).white,
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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.8, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                        child: Text(
                          'Detalles de la Oferta',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF7E0000),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 5.0, 0.0),
                              child: Text(
                                'Trabajo para: ',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                valueOrDefault<String>(
                                  detallesOfertaLogsOfertasRecord.cliente,
                                  'NA',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 5.0, 0.0),
                            child: Text(
                              'Socio:',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              detallesOfertaLogsOfertasRecord.socio,
                              'NA',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 5.0, 0.0),
                            child: Text(
                              'Precio:',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              detallesOfertaLogsOfertasRecord.costo,
                              'NA',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Pesos',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 5.0, 0.0),
                            child: Text(
                              'Comentarios:',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          Text(
                            detallesOfertaLogsOfertasRecord.detalles,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Calificacion:',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: RatingBar.builder(
                        onRatingUpdate: (newValue) =>
                            setState(() => _model.ratingBarValue = newValue),
                        itemBuilder: (context, index) => Icon(
                          Icons.star_rounded,
                          color: Color(0xFF0DFF00),
                        ),
                        direction: Axis.horizontal,
                        initialRating: _model.ratingBarValue ??= 4.0,
                        unratedColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        itemCount: 5,
                        itemSize: 40.0,
                        glowColor: Color(0xFF0DFF00),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 10.0),
                          child: Text(
                            'Ubicacion:',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 324.0,
                      height: 227.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(builder: (context) {
                        final _googleMapMarker =
                            detallesOfertaLogsOfertasRecord.ubicacion;
                        return FlutterFlowGoogleMap(
                          controller: _model.googleMapsController,
                          onCameraIdle: (latLng) =>
                              setState(() => _model.googleMapsCenter = latLng),
                          initialLocation: _model.googleMapsCenter ??=
                              currentUserLocationValue!,
                          markers: [
                            if (_googleMapMarker != null)
                              FlutterFlowMarker(
                                _googleMapMarker.serialize(),
                                _googleMapMarker,
                              ),
                          ],
                          markerColor: GoogleMarkerColor.green,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: true,
                          showCompass: true,
                          showMapToolbar: true,
                          showTraffic: true,
                          centerMapOnMarkerTap: true,
                        );
                      }),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Aceptar Oferta',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF022E00),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
