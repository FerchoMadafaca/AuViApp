import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrosServiciosRecord extends FirestoreRecord {
  RegistrosServiciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Id_Usuario" field.
  int? _idUsuario;
  int get idUsuario => _idUsuario ?? 0;
  bool hasIdUsuario() => _idUsuario != null;

  // "Id_Autos" field.
  int? _idAutos;
  int get idAutos => _idAutos ?? 0;
  bool hasIdAutos() => _idAutos != null;

  // "Tipo_Servicio" field.
  String? _tipoServicio;
  String get tipoServicio => _tipoServicio ?? '';
  bool hasTipoServicio() => _tipoServicio != null;

  // "Proovedor" field.
  String? _proovedor;
  String get proovedor => _proovedor ?? '';
  bool hasProovedor() => _proovedor != null;

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

  // "Descuento" field.
  double? _descuento;
  double get descuento => _descuento ?? 0.0;
  bool hasDescuento() => _descuento != null;

  // "Precio_Parcial" field.
  double? _precioParcial;
  double get precioParcial => _precioParcial ?? 0.0;
  bool hasPrecioParcial() => _precioParcial != null;

  // "Iva" field.
  double? _iva;
  double get iva => _iva ?? 0.0;
  bool hasIva() => _iva != null;

  // "Precio_Total" field.
  double? _precioTotal;
  double get precioTotal => _precioTotal ?? 0.0;
  bool hasPrecioTotal() => _precioTotal != null;

  // "Calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "Estatus" field.
  String? _estatus;
  String get estatus => _estatus ?? '';
  bool hasEstatus() => _estatus != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Auto" field.
  String? _auto;
  String get auto => _auto ?? '';
  bool hasAuto() => _auto != null;

  // "Clasificacion_Servicio" field.
  String? _clasificacionServicio;
  String get clasificacionServicio => _clasificacionServicio ?? '';
  bool hasClasificacionServicio() => _clasificacionServicio != null;

  // "Ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['Id']);
    _idUsuario = castToType<int>(snapshotData['Id_Usuario']);
    _idAutos = castToType<int>(snapshotData['Id_Autos']);
    _tipoServicio = snapshotData['Tipo_Servicio'] as String?;
    _proovedor = snapshotData['Proovedor'] as String?;
    _tiempoInicio = snapshotData['Tiempo_Inicio'] as DateTime?;
    _tiempoFinal = snapshotData['Tiempo_Final'] as DateTime?;
    _minutos = castToType<int>(snapshotData['Minutos']);
    _descuento = castToType<double>(snapshotData['Descuento']);
    _precioParcial = castToType<double>(snapshotData['Precio_Parcial']);
    _iva = castToType<double>(snapshotData['Iva']);
    _precioTotal = castToType<double>(snapshotData['Precio_Total']);
    _calificacion = castToType<double>(snapshotData['Calificacion']);
    _estatus = snapshotData['Estatus'] as String?;
    _email = snapshotData['Email'] as String?;
    _auto = snapshotData['Auto'] as String?;
    _clasificacionServicio = snapshotData['Clasificacion_Servicio'] as String?;
    _ubicacion = snapshotData['Ubicacion'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Registros_Servicios');

  static Stream<RegistrosServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistrosServiciosRecord.fromSnapshot(s));

  static Future<RegistrosServiciosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistrosServiciosRecord.fromSnapshot(s));

  static RegistrosServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistrosServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrosServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrosServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrosServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrosServiciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrosServiciosRecordData({
  int? id,
  int? idUsuario,
  int? idAutos,
  String? tipoServicio,
  String? proovedor,
  DateTime? tiempoInicio,
  DateTime? tiempoFinal,
  int? minutos,
  double? descuento,
  double? precioParcial,
  double? iva,
  double? precioTotal,
  double? calificacion,
  String? estatus,
  String? email,
  String? auto,
  String? clasificacionServicio,
  LatLng? ubicacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Id_Usuario': idUsuario,
      'Id_Autos': idAutos,
      'Tipo_Servicio': tipoServicio,
      'Proovedor': proovedor,
      'Tiempo_Inicio': tiempoInicio,
      'Tiempo_Final': tiempoFinal,
      'Minutos': minutos,
      'Descuento': descuento,
      'Precio_Parcial': precioParcial,
      'Iva': iva,
      'Precio_Total': precioTotal,
      'Calificacion': calificacion,
      'Estatus': estatus,
      'Email': email,
      'Auto': auto,
      'Clasificacion_Servicio': clasificacionServicio,
      'Ubicacion': ubicacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistrosServiciosRecordDocumentEquality
    implements Equality<RegistrosServiciosRecord> {
  const RegistrosServiciosRecordDocumentEquality();

  @override
  bool equals(RegistrosServiciosRecord? e1, RegistrosServiciosRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.idAutos == e2?.idAutos &&
        e1?.tipoServicio == e2?.tipoServicio &&
        e1?.proovedor == e2?.proovedor &&
        e1?.tiempoInicio == e2?.tiempoInicio &&
        e1?.tiempoFinal == e2?.tiempoFinal &&
        e1?.minutos == e2?.minutos &&
        e1?.descuento == e2?.descuento &&
        e1?.precioParcial == e2?.precioParcial &&
        e1?.iva == e2?.iva &&
        e1?.precioTotal == e2?.precioTotal &&
        e1?.calificacion == e2?.calificacion &&
        e1?.estatus == e2?.estatus &&
        e1?.email == e2?.email &&
        e1?.auto == e2?.auto &&
        e1?.clasificacionServicio == e2?.clasificacionServicio &&
        e1?.ubicacion == e2?.ubicacion;
  }

  @override
  int hash(RegistrosServiciosRecord? e) => const ListEquality().hash([
        e?.id,
        e?.idUsuario,
        e?.idAutos,
        e?.tipoServicio,
        e?.proovedor,
        e?.tiempoInicio,
        e?.tiempoFinal,
        e?.minutos,
        e?.descuento,
        e?.precioParcial,
        e?.iva,
        e?.precioTotal,
        e?.calificacion,
        e?.estatus,
        e?.email,
        e?.auto,
        e?.clasificacionServicio,
        e?.ubicacion
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistrosServiciosRecord;
}
