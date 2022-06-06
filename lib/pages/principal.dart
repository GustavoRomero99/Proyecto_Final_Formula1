import 'package:consulta_api/pages/principal_carlos.dart';
import 'package:consulta_api/pages/principal_mick.dart';
import 'package:consulta_api/pages/principal_sergio.dart';
import 'package:consulta_api/services/f1services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'inicio.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final formulaDataServices = Provider.of<F1Services>(context);
    //print(formulaDataServices.conductorFormula[0].name);

    if(formulaDataServices.conductorFormula.isEmpty){
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
                image: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hamilton-1645183106.jpg?crop=1.00xw:0.334xh;0,0.0913xh&resize=980:*'),
              )
          ),


          Container(
            width: 1080,
            color: Colors.red.shade200,
            child: Text("\nNombre: "+formulaDataServices.conductorFormula[0].name+"\n"+
                "Lugar de nacimiento: "+ formulaDataServices.conductorFormula[0].birthplace+"\n"+
                "Fecha de nacimiento: "+ formulaDataServices.conductorFormula[0].birthdate.toString()+"\n"+
                "Puntos de carrera: "+formulaDataServices.conductorFormula[0].careerPoints+"\n"+
                "Nacionalidad: "+ formulaDataServices.conductorFormula[0].nationality+"\n"+
                "Abreviacion: "+ formulaDataServices.conductorFormula[0].abbr+"\n"+
                "Pais: "+ formulaDataServices.conductorFormula[0].country.name+"\n"+
                "Numero: "+ formulaDataServices.conductorFormula[0].number.toString()+"\n"
                "ID: "+ formulaDataServices.conductorFormula[0].id.toString()+"\n"
                "Entradas al grand prix: "+ formulaDataServices.conductorFormula[0].grandsPrixEntered.toString()+"\n"+
                "Campeonatos mundiales: "+ formulaDataServices.conductorFormula[0].worldChampionships.toString()+"\n"+
                "Podios: "+ formulaDataServices.conductorFormula[0].podiums.toString()+"\n"+
                "Posicion mas alta: "+ formulaDataServices.conductorFormula[0].highestGridPosition.toString()+"\n",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),


            ),

          ),
          Container(
            color: Colors.red.shade200,
            height: 97,

          )
        ]


    ),
    );
  }
}
