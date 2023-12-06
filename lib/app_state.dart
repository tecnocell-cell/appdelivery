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
      _subTotalItem = prefs.getInt('ff_subTotalItem') ?? _subTotalItem;
    });
    _safeInit(() {
      _addCarrinho = prefs.getDouble('ff_addCarrinho') ?? _addCarrinho;
    });
    _safeInit(() {
      _soma = prefs.getDouble('ff_soma') ?? _soma;
    });
    _safeInit(() {
      _localRefer = prefs.getInt('ff_localRefer') ?? _localRefer;
    });
    _safeInit(() {
      _taxaEntrega = prefs.getDouble('ff_taxaEntrega') ?? _taxaEntrega;
    });
    _safeInit(() {
      _totalCompra = prefs.getDouble('ff_totalCompra') ?? _totalCompra;
    });
    _safeInit(() {
      _PizzaIndex = prefs.getInt('ff_PizzaIndex') ?? _PizzaIndex;
    });
    _safeInit(() {
      _Status = prefs.getBool('ff_Status') ?? _Status;
    });
    _safeInit(() {
      _produtoVenda = prefs
              .getStringList('ff_produtoVenda')
              ?.map((x) {
                try {
                  return ProdutoVendaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _produtoVenda;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  int _localRefer = 0;
  int get localRefer => _localRefer;
  set localRefer(int value) {
    _localRefer = value;
    prefs.setInt('ff_localRefer', value);
  }

  EnderecoStruct _enderecoUsuarioRef = EnderecoStruct();
  EnderecoStruct get enderecoUsuarioRef => _enderecoUsuarioRef;
  set enderecoUsuarioRef(EnderecoStruct value) {
    _enderecoUsuarioRef = value;
  }

  void updateEnderecoUsuarioRefStruct(Function(EnderecoStruct) updateFn) {
    updateFn(_enderecoUsuarioRef);
  }

  bool _opcaoEndereco = false;
  bool get opcaoEndereco => _opcaoEndereco;
  set opcaoEndereco(bool value) {
    _opcaoEndereco = value;
  }

  double _taxaEntrega = 3;
  double get taxaEntrega => _taxaEntrega;
  set taxaEntrega(double value) {
    _taxaEntrega = value;
    prefs.setDouble('ff_taxaEntrega', value);
  }

  double _totalCompra = 0.0;
  double get totalCompra => _totalCompra;
  set totalCompra(double value) {
    _totalCompra = value;
    prefs.setDouble('ff_totalCompra', value);
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  String _statusPag = 'Nenhum';
  String get statusPag => _statusPag;
  set statusPag(String value) {
    _statusPag = value;
  }

  bool _addFavorito = false;
  bool get addFavorito => _addFavorito;
  set addFavorito(bool value) {
    _addFavorito = value;
  }

  bool _addToCarrinho = false;
  bool get addToCarrinho => _addToCarrinho;
  set addToCarrinho(bool value) {
    _addToCarrinho = value;
  }

  int _PizzaIndex = 0;
  int get PizzaIndex => _PizzaIndex;
  set PizzaIndex(int value) {
    _PizzaIndex = value;
    prefs.setInt('ff_PizzaIndex', value);
  }

  bool _OptionSedid = false;
  bool get OptionSedid => _OptionSedid;
  set OptionSedid(bool value) {
    _OptionSedid = value;
  }

  bool _Status = true;
  bool get Status => _Status;
  set Status(bool value) {
    _Status = value;
    prefs.setBool('ff_Status', value);
  }

  int _bordaCondicao = 0;
  int get bordaCondicao => _bordaCondicao;
  set bordaCondicao(int value) {
    _bordaCondicao = value;
  }

  List<ProdutoVendaStruct> _produtoVenda = [];
  List<ProdutoVendaStruct> get produtoVenda => _produtoVenda;
  set produtoVenda(List<ProdutoVendaStruct> value) {
    _produtoVenda = value;
    prefs.setStringList(
        'ff_produtoVenda', value.map((x) => x.serialize()).toList());
  }

  void addToProdutoVenda(ProdutoVendaStruct value) {
    _produtoVenda.add(value);
    prefs.setStringList(
        'ff_produtoVenda', _produtoVenda.map((x) => x.serialize()).toList());
  }

  void removeFromProdutoVenda(ProdutoVendaStruct value) {
    _produtoVenda.remove(value);
    prefs.setStringList(
        'ff_produtoVenda', _produtoVenda.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProdutoVenda(int index) {
    _produtoVenda.removeAt(index);
    prefs.setStringList(
        'ff_produtoVenda', _produtoVenda.map((x) => x.serialize()).toList());
  }

  void updateProdutoVendaAtIndex(
    int index,
    ProdutoVendaStruct Function(ProdutoVendaStruct) updateFn,
  ) {
    _produtoVenda[index] = updateFn(_produtoVenda[index]);
    prefs.setStringList(
        'ff_produtoVenda', _produtoVenda.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProdutoVenda(int index, ProdutoVendaStruct value) {
    _produtoVenda.insert(index, value);
    prefs.setStringList(
        'ff_produtoVenda', _produtoVenda.map((x) => x.serialize()).toList());
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
