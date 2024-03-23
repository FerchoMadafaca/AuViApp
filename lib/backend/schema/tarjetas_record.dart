import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarjetasRecord extends FirestoreRecord {
  TarjetasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _email = snapshotData['Email'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
    _numero = snapshotData['Numero'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _tipo = snapshotData['Tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tarjetas');

  static Stream<TarjetasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarjetasRecord.fromSnapshot(s));

  static Future<TarjetasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarjetasRecord.fromSnapshot(s));

  static TarjetasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarjetasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarjetasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarjetasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarjetasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarjetasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarjetasRecordData({
  String? email,
  String? nombre,
  String? numero,
  DateTime? fecha,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email': email,
      'Nombre': nombre,
      'Numero': numero,
      'Fecha': fecha,
      'Tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarjetasRecordDocumentEquality implements Equality<TarjetasRecord> {
  const TarjetasRecordDocumentEquality();

  @override
  bool equals(TarjetasRecord? e1, TarjetasRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.nombre == e2?.nombre &&
        e1?.numero == e2?.numero &&
        e1?.fecha == e2?.fecha &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(TarjetasRecord? e) => const ListEquality()
      .hash([e?.email, e?.nombre, e?.numero, e?.fecha, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is TarjetasRecord;
}
