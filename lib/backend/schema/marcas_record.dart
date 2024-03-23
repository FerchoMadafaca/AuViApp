import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarcasRecord extends FirestoreRecord {
  MarcasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NombreMarca" field.
  String? _nombreMarca;
  String get nombreMarca => _nombreMarca ?? '';
  bool hasNombreMarca() => _nombreMarca != null;

  void _initializeFields() {
    _nombreMarca = snapshotData['NombreMarca'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Marcas');

  static Stream<MarcasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarcasRecord.fromSnapshot(s));

  static Future<MarcasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarcasRecord.fromSnapshot(s));

  static MarcasRecord fromSnapshot(DocumentSnapshot snapshot) => MarcasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarcasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarcasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarcasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarcasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarcasRecordData({
  String? nombreMarca,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreMarca': nombreMarca,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarcasRecordDocumentEquality implements Equality<MarcasRecord> {
  const MarcasRecordDocumentEquality();

  @override
  bool equals(MarcasRecord? e1, MarcasRecord? e2) {
    return e1?.nombreMarca == e2?.nombreMarca;
  }

  @override
  int hash(MarcasRecord? e) => const ListEquality().hash([e?.nombreMarca]);

  @override
  bool isValidKey(Object? o) => o is MarcasRecord;
}
