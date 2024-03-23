import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogsOfertasRecord extends FirestoreRecord {
  LogsOfertasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "IdTrabajo" field.
  String? _idTrabajo;
  String get idTrabajo => _idTrabajo ?? '';
  bool hasIdTrabajo() => _idTrabajo != null;

  // "Socio" field.
  String? _socio;
  String get socio => _socio ?? '';
  bool hasSocio() => _socio != null;

  // "Costo" field.
  String? _costo;
  String get costo => _costo ?? '';
  bool hasCosto() => _costo != null;

  // "Ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "Detalles" field.
  String? _detalles;
  String get detalles => _detalles ?? '';
  bool hasDetalles() => _detalles != null;

  // "Cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  void _initializeFields() {
    _idTrabajo = snapshotData['IdTrabajo'] as String?;
    _socio = snapshotData['Socio'] as String?;
    _costo = snapshotData['Costo'] as String?;
    _ubicacion = snapshotData['Ubicacion'] as LatLng?;
    _detalles = snapshotData['Detalles'] as String?;
    _cliente = snapshotData['Cliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LogsOfertas');

  static Stream<LogsOfertasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogsOfertasRecord.fromSnapshot(s));

  static Future<LogsOfertasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogsOfertasRecord.fromSnapshot(s));

  static LogsOfertasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LogsOfertasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogsOfertasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogsOfertasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogsOfertasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogsOfertasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogsOfertasRecordData({
  String? idTrabajo,
  String? socio,
  String? costo,
  LatLng? ubicacion,
  String? detalles,
  String? cliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'IdTrabajo': idTrabajo,
      'Socio': socio,
      'Costo': costo,
      'Ubicacion': ubicacion,
      'Detalles': detalles,
      'Cliente': cliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogsOfertasRecordDocumentEquality implements Equality<LogsOfertasRecord> {
  const LogsOfertasRecordDocumentEquality();

  @override
  bool equals(LogsOfertasRecord? e1, LogsOfertasRecord? e2) {
    return e1?.idTrabajo == e2?.idTrabajo &&
        e1?.socio == e2?.socio &&
        e1?.costo == e2?.costo &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.detalles == e2?.detalles &&
        e1?.cliente == e2?.cliente;
  }

  @override
  int hash(LogsOfertasRecord? e) => const ListEquality().hash([
        e?.idTrabajo,
        e?.socio,
        e?.costo,
        e?.ubicacion,
        e?.detalles,
        e?.cliente
      ]);

  @override
  bool isValidKey(Object? o) => o is LogsOfertasRecord;
}
