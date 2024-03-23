import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Estatus" field.
  String? _estatus;
  String get estatus => _estatus ?? '';
  bool hasEstatus() => _estatus != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "Ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "Socio" field.
  String? _socio;
  String get socio => _socio ?? '';
  bool hasSocio() => _socio != null;

  // "IneFrente" field.
  String? _ineFrente;
  String get ineFrente => _ineFrente ?? '';
  bool hasIneFrente() => _ineFrente != null;

  // "IneDetras" field.
  String? _ineDetras;
  String get ineDetras => _ineDetras ?? '';
  bool hasIneDetras() => _ineDetras != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Curp" field.
  String? _curp;
  String get curp => _curp ?? '';
  bool hasCurp() => _curp != null;

  // "RFC" field.
  String? _rfc;
  String get rfc => _rfc ?? '';
  bool hasRfc() => _rfc != null;

  // "NSS" field.
  String? _nss;
  String get nss => _nss ?? '';
  bool hasNss() => _nss != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "Telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "Socio_AutoLavado" field.
  String? _socioAutoLavado;
  String get socioAutoLavado => _socioAutoLavado ?? '';
  bool hasSocioAutoLavado() => _socioAutoLavado != null;

  // "Socio_Mecanico" field.
  String? _socioMecanico;
  String get socioMecanico => _socioMecanico ?? '';
  bool hasSocioMecanico() => _socioMecanico != null;

  // "Socio_Grua" field.
  String? _socioGrua;
  String get socioGrua => _socioGrua ?? '';
  bool hasSocioGrua() => _socioGrua != null;

  // "Socio_Desponchado" field.
  String? _socioDesponchado;
  String get socioDesponchado => _socioDesponchado ?? '';
  bool hasSocioDesponchado() => _socioDesponchado != null;

  // "SolicitaRevision" field.
  String? _solicitaRevision;
  String get solicitaRevision => _solicitaRevision ?? '';
  bool hasSolicitaRevision() => _solicitaRevision != null;

  // "MenuProveedor" field.
  String? _menuProveedor;
  String get menuProveedor => _menuProveedor ?? '';
  bool hasMenuProveedor() => _menuProveedor != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _password = snapshotData['Password'] as String?;
    _id = castToType<int>(snapshotData['Id']);
    _estatus = snapshotData['Estatus'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _ubicacion = snapshotData['Ubicacion'] as LatLng?;
    _socio = snapshotData['Socio'] as String?;
    _ineFrente = snapshotData['IneFrente'] as String?;
    _ineDetras = snapshotData['IneDetras'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
    _curp = snapshotData['Curp'] as String?;
    _rfc = snapshotData['RFC'] as String?;
    _nss = snapshotData['NSS'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _telefono = snapshotData['Telefono'] as String?;
    _socioAutoLavado = snapshotData['Socio_AutoLavado'] as String?;
    _socioMecanico = snapshotData['Socio_Mecanico'] as String?;
    _socioGrua = snapshotData['Socio_Grua'] as String?;
    _socioDesponchado = snapshotData['Socio_Desponchado'] as String?;
    _solicitaRevision = snapshotData['SolicitaRevision'] as String?;
    _menuProveedor = snapshotData['MenuProveedor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  String? password,
  int? id,
  String? estatus,
  String? displayName,
  String? photoUrl,
  String? uid,
  LatLng? ubicacion,
  String? socio,
  String? ineFrente,
  String? ineDetras,
  String? nombre,
  String? curp,
  String? rfc,
  String? nss,
  String? direccion,
  String? telefono,
  String? socioAutoLavado,
  String? socioMecanico,
  String? socioGrua,
  String? socioDesponchado,
  String? solicitaRevision,
  String? menuProveedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Password': password,
      'Id': id,
      'Estatus': estatus,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'Ubicacion': ubicacion,
      'Socio': socio,
      'IneFrente': ineFrente,
      'IneDetras': ineDetras,
      'Nombre': nombre,
      'Curp': curp,
      'RFC': rfc,
      'NSS': nss,
      'Direccion': direccion,
      'Telefono': telefono,
      'Socio_AutoLavado': socioAutoLavado,
      'Socio_Mecanico': socioMecanico,
      'Socio_Grua': socioGrua,
      'Socio_Desponchado': socioDesponchado,
      'SolicitaRevision': solicitaRevision,
      'MenuProveedor': menuProveedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.password == e2?.password &&
        e1?.id == e2?.id &&
        e1?.estatus == e2?.estatus &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.socio == e2?.socio &&
        e1?.ineFrente == e2?.ineFrente &&
        e1?.ineDetras == e2?.ineDetras &&
        e1?.nombre == e2?.nombre &&
        e1?.curp == e2?.curp &&
        e1?.rfc == e2?.rfc &&
        e1?.nss == e2?.nss &&
        e1?.direccion == e2?.direccion &&
        e1?.telefono == e2?.telefono &&
        e1?.socioAutoLavado == e2?.socioAutoLavado &&
        e1?.socioMecanico == e2?.socioMecanico &&
        e1?.socioGrua == e2?.socioGrua &&
        e1?.socioDesponchado == e2?.socioDesponchado &&
        e1?.solicitaRevision == e2?.solicitaRevision &&
        e1?.menuProveedor == e2?.menuProveedor;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.phoneNumber,
        e?.password,
        e?.id,
        e?.estatus,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.ubicacion,
        e?.socio,
        e?.ineFrente,
        e?.ineDetras,
        e?.nombre,
        e?.curp,
        e?.rfc,
        e?.nss,
        e?.direccion,
        e?.telefono,
        e?.socioAutoLavado,
        e?.socioMecanico,
        e?.socioGrua,
        e?.socioDesponchado,
        e?.solicitaRevision,
        e?.menuProveedor
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
