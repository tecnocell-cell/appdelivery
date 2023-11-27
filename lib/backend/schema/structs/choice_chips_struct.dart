// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChoiceChipsStruct extends FFFirebaseStruct {
  ChoiceChipsStruct({
    List<ChoiceChipsStruct>? nome,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        super(firestoreUtilData);

  // "nome" field.
  List<ChoiceChipsStruct>? _nome;
  List<ChoiceChipsStruct> get nome => _nome ?? const [];
  set nome(List<ChoiceChipsStruct>? val) => _nome = val;
  void updateNome(Function(List<ChoiceChipsStruct>) updateFn) =>
      updateFn(_nome ??= []);
  bool hasNome() => _nome != null;

  static ChoiceChipsStruct fromMap(Map<String, dynamic> data) =>
      ChoiceChipsStruct(
        nome: getStructList(
          data['nome'],
          ChoiceChipsStruct.fromMap,
        ),
      );

  static ChoiceChipsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ChoiceChipsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ChoiceChipsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChoiceChipsStruct(
        nome: deserializeStructParam<ChoiceChipsStruct>(
          data['nome'],
          ParamType.DataStruct,
          true,
          structBuilder: ChoiceChipsStruct.fromSerializableMap,
        ),
      );

  static ChoiceChipsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ChoiceChipsStruct(
        nome: convertAlgoliaParam<ChoiceChipsStruct>(
          data['nome'],
          ParamType.DataStruct,
          true,
          structBuilder: ChoiceChipsStruct.fromAlgoliaData,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ChoiceChipsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChoiceChipsStruct && listEquality.equals(nome, other.nome);
  }

  @override
  int get hashCode => const ListEquality().hash([nome]);
}

ChoiceChipsStruct createChoiceChipsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChoiceChipsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChoiceChipsStruct? updateChoiceChipsStruct(
  ChoiceChipsStruct? choiceChips, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    choiceChips
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChoiceChipsStructData(
  Map<String, dynamic> firestoreData,
  ChoiceChipsStruct? choiceChips,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (choiceChips == null) {
    return;
  }
  if (choiceChips.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && choiceChips.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final choiceChipsData =
      getChoiceChipsFirestoreData(choiceChips, forFieldValue);
  final nestedData =
      choiceChipsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = choiceChips.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChoiceChipsFirestoreData(
  ChoiceChipsStruct? choiceChips, [
  bool forFieldValue = false,
]) {
  if (choiceChips == null) {
    return {};
  }
  final firestoreData = mapToFirestore(choiceChips.toMap());

  // Add any Firestore field values
  choiceChips.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChoiceChipsListFirestoreData(
  List<ChoiceChipsStruct>? choiceChipss,
) =>
    choiceChipss?.map((e) => getChoiceChipsFirestoreData(e, true)).toList() ??
    [];
