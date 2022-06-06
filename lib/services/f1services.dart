import 'package:consulta_api/models/f1_model.dart';
import 'package:consulta_api/models/fernando.dart';
import 'package:consulta_api/models/mick_model.dart';
import 'package:consulta_api/models/carlos_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class F1Services extends ChangeNotifier{
  final String _urlBase = 'api-formula-1.p.rapidapi.com';
  final String _apiKey = '4cd67b19c9msh06abb6deb76a067p16eee7jsne2c6086b52e8';


  List<Response> conductorFormula = [];
  List<Response3> conductorFormula2 = [];
  List<Response4> conductorFormula4 = [];
  List<Response5> conductorFormula5 = [];

  F1Services(){
    getService();
    getService2();
    getService4();
    getService5();
   // print('Te has conectado exitosamente, parote');
  }

  getService() async {
    final url = Uri.https(_urlBase, '/drivers',{'search':'lewi'});

    final respuesta = await http.get(url, headers: {'x-rapidapi-key': _apiKey});

    //print(respuesta.body);

    final formula1 = Formula1.fromJson(respuesta.body);

    conductorFormula = formula1.response;

    //print(formula1);
    notifyListeners();
    print(conductorFormula[0].name);
  }

  getService2() async {
    final url = Uri.https(_urlBase, '/drivers',{'search':'fern'});

    final respuesta = await http.get(url, headers: {'x-rapidapi-key': _apiKey});

    //print(respuesta.body);

    final formula1 = Welcome.fromJson(respuesta.body);

    conductorFormula2 = formula1.response;

    //print(formula1);
    notifyListeners();
    print(conductorFormula2[0].name);
  }

  getService4() async {
    final url = Uri.https(_urlBase, '/drivers',{'search':'mick'});

    final respuesta = await http.get(url, headers: {'x-rapidapi-key': _apiKey});

    //print(respuesta.body);

    final formula1 = Mick.fromJson(respuesta.body);

    conductorFormula4 = formula1.response;

    //print(formula1);
    notifyListeners();
    print(conductorFormula4[0].name);
  }

  getService5() async {
    final url = Uri.https(_urlBase, '/drivers',{'search':'carl'});

    final respuesta = await http.get(url, headers: {'x-rapidapi-key': _apiKey});

    //print(respuesta.body);

    final formula1 = Carlos.fromJson(respuesta.body);

    conductorFormula5 = formula1.response;

    //print(formula1);
    notifyListeners();
    print(conductorFormula5[0].name);
  }

}
