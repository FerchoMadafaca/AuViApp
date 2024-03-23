import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AutosRecord extends FirestoreRecord {
  AutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Id_User" field.
  int? _idUser;
  int get idUser => _idUser ?? 0;
  bool hasIdUser() => _idUser != null;

  // "Nombre_Auto" field.
  String? _nombreAuto;
  String get nombreAuto => _nombreAuto ?? '';
  bool hasNombreAuto() => _nombreAuto != null;

  // "Servicios" field.
  int? _servicios;
  int get servicios => _servicios ?? 0;
  bool hasServicios() => _servicios != null;

  // "Puntuacion" field.
  String? _puntuacion;
  String get puntuacion => _puntuacion ?? '';
  bool hasPuntuacion() => _puntuacion != null;

  // "Resultados" field.
  String? _resultados;
  String get resultados => _resultados ?? '';
  bool hasResultados() => _resultados != null;

  // "Color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "Anio" field.
  String? _anio;
  String get anio => _anio ?? '';
  bool hasAnio() => _anio != null;

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "Estatus" field.
  String? _estatus;
  String get estatus => _estatus ?? '';
  bool hasEstatus() => _estatus != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Placas" field.
  String? _placas;
  String get placas => _placas ?? '';
  bool hasPlacas() => _placas != null;

  // "Cilindros" field.
  String? _cilindros;
  String get cilindros => _cilindros ?? '';
  bool hasCilindros() => _cilindros != null;

  // "Pasajeros" field.
  String? _pasajeros;
  String get pasajeros => _pasajeros ?? '';
  bool hasPasajeros() => _pasajeros != null;

  // "Motor" field.
  String? _motor;
  String get motor => _motor ?? '';
  bool hasMotor() => _motor != null;

  // "DetallesMotor" field.
  String? _detallesMotor;
  String get detallesMotor => _detallesMotor ?? '';
  bool hasDetallesMotor() => _detallesMotor != null;

  // "DetallesBateria" field.
  String? _detallesBateria;
  String get detallesBateria => _detallesBateria ?? '';
  bool hasDetallesBateria() => _detallesBateria != null;

  // "DetallesCajaCambios" field.
  String? _detallesCajaCambios;
  String get detallesCajaCambios => _detallesCajaCambios ?? '';
  bool hasDetallesCajaCambios() => _detallesCajaCambios != null;

  // "DetallesChasis" field.
  String? _detallesChasis;
  String get detallesChasis => _detallesChasis ?? '';
  bool hasDetallesChasis() => _detallesChasis != null;

  // "DetallesFusibles" field.
  String? _detallesFusibles;
  String get detallesFusibles => _detallesFusibles ?? '';
  bool hasDetallesFusibles() => _detallesFusibles != null;

  // "DetallesAlternador" field.
  String? _detallesAlternador;
  String get detallesAlternador => _detallesAlternador ?? '';
  bool hasDetallesAlternador() => _detallesAlternador != null;

  // "DetallesRadiador" field.
  String? _detallesRadiador;
  String get detallesRadiador => _detallesRadiador ?? '';
  bool hasDetallesRadiador() => _detallesRadiador != null;

  // "DetallesDireccionFrenos" field.
  String? _detallesDireccionFrenos;
  String get detallesDireccionFrenos => _detallesDireccionFrenos ?? '';
  bool hasDetallesDireccionFrenos() => _detallesDireccionFrenos != null;

  // "DetallesSuspension" field.
  String? _detallesSuspension;
  String get detallesSuspension => _detallesSuspension ?? '';
  bool hasDetallesSuspension() => _detallesSuspension != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['Id']);
    _idUser = castToType<int>(snapshotData['Id_User']);
    _nombreAuto = snapshotData['Nombre_Auto'] as String?;
    _servicios = castToType<int>(snapshotData['Servicios']);
    _puntuacion = snapshotData['Puntuacion'] as String?;
    _resultados = snapshotData['Resultados'] as String?;
    _color = snapshotData['Color'] as String?;
    _anio = snapshotData['Anio'] as String?;
    _marca = snapshotData['Marca'] as String?;
    _estatus = snapshotData['Estatus'] as String?;
    _email = snapshotData['Email'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _placas = snapshotData['Placas'] as String?;
    _cilindros = snapshotData['Cilindros'] as String?;
    _pasajeros = snapshotData['Pasajeros'] as String?;
    _motor = snapshotData['Motor'] as String?;
    _detallesMotor = snapshotData['DetallesMotor'] as String?;
    _detallesBateria = snapshotData['DetallesBateria'] as String?;
    _detallesCajaCambios = snapshotData['DetallesCajaCambios'] as String?;
    _detallesChasis = snapshotData['DetallesChasis'] as String?;
    _detallesFusibles = snapshotData['DetallesFusibles'] as String?;
    _detallesAlternador = snapshotData['DetallesAlternador'] as String?;
    _detallesRadiador = snapshotData['DetallesRadiador'] as String?;
    _detallesDireccionFrenos =
        snapshotData['DetallesDireccionFrenos'] as String?;
    _detallesSuspension = snapshotData['DetallesSuspension'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Autos');

  static Stream<AutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AutosRecord.fromSnapshot(s));

  static Future<AutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AutosRecord.fromSnapshot(s));

  static AutosRecord fromSnapshot(DocumentSnapshot snapshot) => AutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAutosRecordData({
  int? id,
  int? idUser,
  String? nombreAuto,
  int? servicios,
  String? puntuacion,
  String? resultados,
  String? color,
  String? anio,
  String? marca,
  String? estatus,
  String? email,
  String? imagen,
  String? placas,
  String? cilindros,
  String? pasajeros,
  String? motor,
  String? detallesMotor,
  String? detallesBateria,
  String? detallesCajaCambios,
  String? detallesChasis,
  String? detallesFusibles,
  String? detallesAlternador,
  String? detallesRadiador,
  String? detallesDireccionFrenos,
  String? detallesSuspension,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Id_User': idUser,
      'Nombre_Auto': nombreAuto,
      'Servicios': servicios,
      'Puntuacion': puntuacion,
      'Resultados': resultados,
      'Color': color,
      'Anio': anio,
      'Marca': marca,
      'Estatus': estatus,
      'Email': email,
      'Imagen': imagen,
      'Placas': placas,
      'Cilindros': cilindros,
      'Pasajeros': pasajeros,
      'Motor': motor,
      'DetallesMotor': detallesMotor,
      'DetallesBateria': detallesBateria,
      'DetallesCajaCambios': detallesCajaCambios,
      'DetallesChasis': detallesChasis,
      'DetallesFusibles': detallesFusibles,
      'DetallesAlternador': detallesAlternador,
      'DetallesRadiador': detallesRadiador,
      'DetallesDireccionFrenos': detallesDireccionFrenos,
      'DetallesSuspension': detallesSuspension,
    }.withoutNulls,
  );

  return firestoreData;
}

class AutosRecordDocumentEquality implements Equality<AutosRecord> {
  const AutosRecordDocumentEquality();

  @override
  bool equals(AutosRecord? e1, AutosRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.idUser == e2?.idUser &&
        e1?.nombreAuto == e2?.nombreAuto &&
        e1?.servicios == e2?.servicios &&
        e1?.puntuacion == e2?.puntuacion &&
        e1?.resultados == e2?.resultados &&
        e1?.color == e2?.color &&
        e1?.anio == e2?.anio &&
        e1?.marca == e2?.marca &&
        e1?.estatus == e2?.estatus &&
        e1?.email == e2?.email &&
        e1?.imagen == e2?.imagen &&
        e1?.placas == e2?.placas &&
        e1?.cilindros == e2?.cilindros &&
        e1?.pasajeros == e2?.pasajeros &&
        e1?.motor == e2?.motor &&
        e1?.detallesMotor == e2?.detallesMotor &&
        e1?.detallesBateria == e2?.detallesBateria &&
        e1?.detallesCajaCambios == e2?.detallesCajaCambios &&
        e1?.detallesChasis == e2?.detallesChasis &&
        e1?.detallesFusibles == e2?.detallesFusibles &&
        e1?.detallesAlternador == e2?.detallesAlternador &&
        e1?.detallesRadiador == e2?.detallesRadiador &&
        e1?.detallesDireccionFrenos == e2?.detallesDireccionFrenos &&
        e1?.detallesSuspension == e2?.detallesSuspension;
  }

  @override
  int hash(AutosRecord? e) => const ListEquality().hash([
        e?.id,
        e?.idUser,
        e?.nombreAuto,
        e?.servicios,
        e?.puntuacion,
        e?.resultados,
        e?.color,
        e?.anio,
        e?.marca,
        e?.estatus,
        e?.email,
        e?.imagen,
        e?.placas,
        e?.cilindros,
        e?.pasajeros,
        e?.motor,
        e?.detallesMotor,
        e?.detallesBateria,
        e?.detallesCajaCambios,
        e?.detallesChasis,
        e?.detallesFusibles,
        e?.detallesAlternador,
        e?.detallesRadiador,
        e?.detallesDireccionFrenos,
        e?.detallesSuspension
      ]);

  @override
  bool isValidKey(Object? o) => o is AutosRecord;
}
