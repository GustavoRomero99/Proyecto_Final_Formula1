import 'package:consulta_api/pages/principal.dart';
import 'package:consulta_api/pages/principal_carlos.dart';
import 'package:consulta_api/pages/principal_sergio.dart';
import 'package:consulta_api/services/f1services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'inicio.dart';

class Principal_mick extends StatelessWidget {
  const Principal_mick ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final formulaDataServices = Provider.of<F1Services>(context);
    //print(formulaDataServices.conductorFormula[0].name);

    if(formulaDataServices.conductorFormula2.isEmpty){
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal()));
                      },
                      child: Text("Lewis Hamilton")
                  ),
                ),
                Container(
                  child: CupertinoButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_carlos()));
                      },
                      child: Text("Carlos Sainz")
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
                image: NetworkImage('https://sf1.auto-moto.com/wp-content/uploads/sites/9/2021/03/mick-schumacher-haas-1.jpg'),
              )
          ),
          Container(
            width: 1080,
            color: Colors.red.shade200,
            child: Text("\nNombre: "+formulaDataServices.conductorFormula4[0].name+"\n"+
                "Lugar de nacimiento: "+ formulaDataServices.conductorFormula4[0].birthplace+"\n"+
                "Fecha de nacimiento: "+ formulaDataServices.conductorFormula4[0].birthdate.toString()+"\n"+
                "Puntos de carrera: "+formulaDataServices.conductorFormula4[0].careerPoints+"\n"+
                "Nacionalidad: "+ formulaDataServices.conductorFormula4[0].nationality+"\n"+
                "Abreviacion: "+ formulaDataServices.conductorFormula4[0].abbr+"\n"+
                "Pais: "+ formulaDataServices.conductorFormula4[0].country.name+"\n"+
                "Numero: "+ formulaDataServices.conductorFormula4[0].number.toString()+"\n"
                "ID: "+ formulaDataServices.conductorFormula4[0].id.toString()+"\n"
                "Entradas al grand prix: "+ formulaDataServices.conductorFormula4[0].grandsPrixEntered.toString()+"\n"+
                "Campeonatos mundiales: "+ formulaDataServices.conductorFormula4[0].worldChampionships.toString()+"\n"+
                "Podios: "+ formulaDataServices.conductorFormula4[0].podiums.toString()+"\n"+
                "Posicion mas alta: "+ formulaDataServices.conductorFormula4[0].highestGridPosition.toString()+"\n",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),


            ),

          ),
          Container(
            color: Colors.red.shade200,
            height: 78,

          )
        ],

      ),
    );
  }
}