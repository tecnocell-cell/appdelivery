import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
      _pedido = prefs
              .getStringList('ff_pedido')
              ?.map((x) {
                try {
                  return PedidoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedido;
    });
    _safeInit(() {
      _subTotalItem = prefs.getInt('ff_subTotalItem') ?? _subTotalItem;
    });
    _safeInit(() {
      _addCarrinho = prefs.getDouble('ff_addCarrinho') ?? _addCarrinho;
    });
    _safeInit(() {
      _soma = prefs.getDouble('ff_soma') ?? _soma;
    });
    _safeInit(() {
      _soma2 = prefs.getDouble('ff_soma2') ?? _soma2;
    });
    _safeInit(() {
      _localRefer = prefs.getInt('ff_localRefer') ?? _localRefer;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<PedidoStruct> _pedido = [];
  List<PedidoStruct> get pedido => _pedido;
  set pedido(List<PedidoStruct> value) {
    _pedido = value;
    prefs.setStringList('ff_pedido', value.map((x) => x.serialize()).toList());
  }

  void addToPedido(PedidoStruct value) {
    _pedido.add(value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeFromPedido(PedidoStruct value) {
    _pedido.remove(value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedido(int index) {
    _pedido.removeAt(index);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void updatePedidoAtIndex(
    int index,
    PedidoStruct Function(PedidoStruct) updateFn,
  ) {
    _pedido[index] = updateFn(_pedido[index]);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedido(int index, PedidoStruct value) {
    _pedido.insert(index, value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  int _subTotalItem = 0;
  int get subTotalItem => _subTotalItem;
  set subTotalItem(int value) {
    _subTotalItem = value;
    prefs.setInt('ff_subTotalItem', value);
  }

  double _addCarrinho = 0.0;
  double get addCarrinho => _addCarrinho;
  set addCarrinho(double value) {
    _addCarrinho = value;
    prefs.setDouble('ff_addCarrinho', value);
  }

  double _soma = 0.0;
  double get soma => _soma;
  set soma(double value) {
    _soma = value;
    prefs.setDouble('ff_soma', value);
  }

  double _soma2 = 0.0;
  double get soma2 => _soma2;
  set soma2(double value) {
    _soma2 = value;
    prefs.setDouble('ff_soma2', value);
  }

  int _localRefer = 0;
  int get localRefer => _localRefer;
  set localRefer(int value) {
    _localRefer = value;
    prefs.setInt('ff_localRefer', value);
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
