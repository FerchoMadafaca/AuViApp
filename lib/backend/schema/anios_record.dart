import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AniosRecord extends FirestoreRecord {
  AniosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Anio" field.
  String? _anio;
  String get anio => _anio ?? '';
  bool hasAnio() => _anio != null;

  void _initializeFields() {
    _anio = snapshotData['Anio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Anios');

  static Stream<AniosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AniosRecord.fromSnapshot(s));

  static Future<AniosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AniosRecord.fromSnapshot(s));

  static AniosRecord fromSnapshot(DocumentSnapshot snapshot) => AniosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AniosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AniosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AniosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AniosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAniosRecordData({
  String? anio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Anio': anio,
    }.withoutNulls,
  );

  return firestoreData;
}

class AniosRecordDocumentEquality implements Equality<AniosRecord> {
  const AniosRecordDocumentEquality();

  @override
  bool equals(AniosRecord? e1, AniosRecord? e2) {
    return e1?.anio == e2?.anio;
  }

  @override
  int hash(AniosRecord? e) => const ListEquality().hash([e?.anio]);

  @override
  bool isValidKey(Object? o) => o is AniosRecord;
}
