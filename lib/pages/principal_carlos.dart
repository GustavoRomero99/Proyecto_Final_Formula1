import 'package:consulta_api/pages/principal.dart';
import 'package:consulta_api/pages/principal_mick.dart';
import 'package:consulta_api/pages/principal_sergio.dart';
import 'package:consulta_api/services/f1services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'inicio.dart';

class Principal_carlos extends StatelessWidget {
  const Principal_carlos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final formulaDataServices = Provider.of<F1Services>(context);
    //print(formulaDataServices.conductorFormula[0].name);

    if(formulaDataServices.conductorFormula5.isEmpty){
      return Container(
        color: Colors.blue.shade100,
        child: const Center(child: CircularProgressIndicator(color: Colors.blue,) ),
      );
    }

    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.red.shade100,
          child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(50),
                  child: Image.network("https://cdn-icons-png.flaticon.com/512/2418/2418779.png"),
                ),
                Container(
                  child: CupertinoButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Inicio()));
                      },
                      child: Text("Inicio")
                  ),
                ),
                Container(
                  child: CupertinoButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_sergio()));
                      },
                      child: Text("Fernando Alonso")
                  ),
                ),
                Container(
                  child: CupertinoButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_mick()));
                      },
                      child: Text("Mick Schumacher")
                  ),
                ),
                Container(
                  child: CupertinoButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal()));
                      },
                      child: Text("Lewis Hamilton")
                  ),
                )

              ]
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFEF5350),
        title: const Text("Formula 1"),
      ),
      body: Column(
        // color: Colors.red.shade200,

        children: [
          Container(
              child: const Image(
                image: NetworkImage('https://www.minutoencancha.com/u/fotografias/m/2021/12/27/f960x540-6389_80464_0.jpg'),
              )
          ),


          Container(
            width: 1080,
            color: Colors.red.shade200,
            child: Text("\nNombre: "+formulaDataServices.conductorFormula5[0].name+"\n"+
                "Lugar de nacimiento: "+ formulaDataServices.conductorFormula5[0].birthplace+"\n"+
                "Fecha de nacimiento: "+ formulaDataServices.conductorFormula5[0].birthdate.toString()+"\n"+
                "Puntos de carrera: "+formulaDataServices.conductorFormula5[0].careerPoints+"\n"+
                "Nacionalidad: "+ formulaDataServices.conductorFormula5[0].nationality+"\n"+
                "Abreviacion: "+ formulaDataServices.conductorFormula5[0].abbr+"\n"+
                "Pais: "+ formulaDataServices.conductorFormula5[0].country.name+"\n"+
                "Numero: "+ formulaDataServices.conductorFormula5[0].number.toString()+"\n"
                "ID: "+ formulaDataServices.conductorFormula5[0].id.toString()+"\n"
                "Entradas al grand prix: "+ formulaDataServices.conductorFormula5[0].grandsPrixEntered.toString()+"\n"+
                "Campeonatos mundiales: "+ formulaDataServices.conductorFormula5[0].worldChampionships.toString()+"\n"+
                "Podios: "+ formulaDataServices.conductorFormula5[0].podiums.toString()+"\n"+
                "Posicion mas alta: "+ formulaDataServices.conductorFormula5[0].highestGridPosition.toString()+"\n",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),


            ),

          ),
          Container(
            color: Colors.red.shade200,
            height: 72,

          )
        ],

      ),
    );
  }
}