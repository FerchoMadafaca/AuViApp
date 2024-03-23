import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogServiciosRecord extends FirestoreRecord {
  LogServiciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Id_Registro_Servicios" field.
  int? _idRegistroServicios;
  int get idRegistroServicios => _idRegistroServicios ?? 0;
  bool hasIdRegistroServicios() => _idRegistroServicios != null;

  // "Id_Usuario" field.
  int? _idUsuario;
  int get idUsuario => _idUsuario ?? 0;
  bool hasIdUsuario() => _idUsuario != null;

  // "Id_Auto" field.
  int? _idAuto;
  int get idAuto => _idAuto ?? 0;
  bool hasIdAuto() => _idAuto != null;

  // "Tipo_Servicio" field.
  String? _tipoServicio;
  String get tipoServicio => _tipoServicio ?? '';
  bool hasTipoServicio() => _tipoServicio != null;

  // "Proveedor" field.
  String? _proveedor;
  String get proveedor => _proveedor ?? '';
  bool hasProveedor() => _proveedor != null;

  // "Tiempo_Inicio" field.
  DateTime? _tiempoInicio;
  DateTime? get tiempoInicio => _tiempoInicio;
  bool hasTiempoInicio() => _tiempoInicio != null;

  // "Tiempo_Final" field.
  DateTime? _tiempoFinal;
  DateTime? get tiempoFinal => _tiempoFinal;
  bool hasTiempoFinal() => _tiempoFinal != null;

  // "Minutos" field.
  int? _minutos;
  int get minutos => _minutos ?? 0;
  bool hasMinutos() => _minutos != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['Id']);
    _idRegistroServicios =
        castToType<int>(snapshotData['Id_Registro_Servicios']);
    _idUsuario = castToType<int>(snapshotData['Id_Usuario']);
    _idAuto = castToType<int>(snapshotData['Id_Auto']);
    _tipoServicio = snapshotData['Tipo_Servicio'] as String?;
    _proveedor = snapshotData['Proveedor'] as String?;
    _tiempoInicio = snapshotData['Tiempo_Inicio'] as DateTime?;
    _tiempoFinal = snapshotData['Tiempo_Final'] as DateTime?;
    _minutos = castToType<int>(snapshotData['Minutos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Log_Servicios');

  static Stream<LogServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogServiciosRecord.fromSnapshot(s));

  static Future<LogServiciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogServiciosRecord.fromSnapshot(s));

  static LogServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LogServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogServiciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogServiciosRecordData({
  int? id,
  int? idRegistroServicios,
  int? idUsuario,
  int? idAuto,
  String? tipoServicio,
  String? proveedor,
  DateTime? tiempoInicio,
  DateTime? tiempoFinal,
  int? minutos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Id_Registro_Servicios': idRegistroServicios,
      'Id_Usuario': idUsuario,
      'Id_Auto': idAuto,
      'Tipo_Servicio': tipoServicio,
      'Proveedor': proveedor,
      'Tiempo_Inicio': tiempoInicio,
      'Tiempo_Final': tiempoFinal,
      'Minutos': minutos,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogServiciosRecordDocumentEquality
    implements Equality<LogServiciosRecord> {
  const LogServiciosRecordDocumentEquality();

  @override
  bool equals(LogServiciosRecord? e1, LogServiciosRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.idRegistroServicios == e2?.idRegistroServicios &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.idAuto == e2?.idAuto &&
        e1?.tipoServicio == e2?.tipoServicio &&
        e1?.proveedor == e2?.proveedor &&
        e1?.tiempoInicio == e2?.tiempoInicio &&
        e1?.tiempoFinal == e2?.tiempoFinal &&
        e1?.minutos == e2?.minutos;
  }

  @override
  int hash(LogServiciosRecord? e) => const ListEquality().hash([
        e?.id,
        e?.idRegistroServicios,
        e?.idUsuario,
        e?.idAuto,
        e?.tipoServicio,
        e?.proveedor,
        e?.tiempoInicio,
        e?.tiempoFinal,
        e?.minutos
      ]);

  @override
  bool isValidKey(Object? o) => o is LogServiciosRecord;
}
