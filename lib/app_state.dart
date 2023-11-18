import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _produtoVendaLocal = prefs
              .getStringList('ff_produtoVendaLocal')
              ?.map((path) => path.ref)
              .toList() ??
          _produtoVendaLocal;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _produtoVendaLocal = [];
  List<DocumentReference> get produtoVendaLocal => _produtoVendaLocal;
  set produtoVendaLocal(List<DocumentReference> value) {
    _produtoVendaLocal = value;
    prefs.setStringList(
        'ff_produtoVendaLocal', value.map((x) => x.path).toList());
  }

  void addToProdutoVendaLocal(DocumentReference value) {
    _produtoVendaLocal.add(value);
    prefs.setStringList(
        'ff_produtoVendaLocal', _produtoVendaLocal.map((x) => x.path).toList());
  }

  void removeFromProdutoVendaLocal(DocumentReference value) {
    _produtoVendaLocal.remove(value);
    prefs.setStringList(
        'ff_produtoVendaLocal', _produtoVendaLocal.map((x) => x.path).toList());
  }

  void removeAtIndexFromProdutoVendaLocal(int index) {
    _produtoVendaLocal.removeAt(index);
    prefs.setStringList(
        'ff_produtoVendaLocal', _produtoVendaLocal.map((x) => x.path).toList());
  }

  void updateProdutoVendaLocalAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _produtoVendaLocal[index] = updateFn(_produtoVendaLocal[index]);
    prefs.setStringList(
        'ff_produtoVendaLocal', _produtoVendaLocal.map((x) => x.path).toList());
  }

  void insertAtIndexInProdutoVendaLocal(int index, DocumentReference value) {
    _produtoVendaLocal.insert(index, value);
    prefs.setStringList(
        'ff_produtoVendaLocal', _produtoVendaLocal.map((x) => x.path).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
