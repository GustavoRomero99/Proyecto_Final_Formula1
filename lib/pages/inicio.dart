import 'package:consulta_api/pages/principal.dart';
import 'package:consulta_api/pages/principal_carlos.dart';
import 'package:consulta_api/pages/principal_mick.dart';
import 'package:consulta_api/pages/principal_sergio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEF5350),
        title: const Text("Formula 1"),

      ),
      body: Column(



        children: [

          Container(
            width: 1080,
            color: Colors.red.shade200,
           child: Text("\n Informacion de piloto de la Formula 1 \n",textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
          ),

          Container(
            color: Colors.red.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // use whichever suits your need
              children: <Widget>[
                CupertinoButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal()));
                  },
                  child: Image(
                    image: NetworkImage('https://www.infobae.com/new-resizer/teoqQSvXtCAriZ3nnMwAGrvUUbk=/1440x960/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/FHERIWC7ZX6TPC5CPVRBPXYFIY.jpg'),
                    height: 120,),
                ),
                CupertinoButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_sergio()));
                  },
                  child: Image(
                    image: NetworkImage('https://static.motor.es/f1/fichas/contenido/fernando-alonso/fernando-alonso2021_1617620146.jpg'),
                    height: 120,),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.red.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // use whichever suits your need
              children: <Widget>[
                Text("Lewis Hamilton",style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text("Fernando Alonso",style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ),

          Container(
            color: Colors.red.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // use whichever suits your need
              children: <Widget>[
                CupertinoButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_mick()));
                  },
                  child: Image(
                    image: NetworkImage('https://soymotor.com/sites/default/files/styles/small/public/imagenes/piloto/mick-schumacher-2021-soymotor.jpg'),
                    height: 120,),
                ),
                CupertinoButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_carlos()));
                  },
                  child: Image(
                    image: NetworkImage('https://soymotor.com/sites/default/files/styles/small/public/imagenes/piloto/perfil-carlos-sainz-2022-soymotor.png'),
                    height: 120,),
                ),
              ],
            ),
          ),


        Container(
          color: Colors.red.shade200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // use whichever suits your need
            children: <Widget>[
              Text("Mick Schumacher",style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text("Carlos Sainz",style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),

        ),
          Container(
            color: Colors.red.shade200,
            height: 184,
            alignment: Alignment.bottomCenter,
            child: Text("SA. de CV. Gustavo Enterprise ®",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

          )


          /*Container(
            width: 1080,
            //height: 348,
            color: Colors.red.shade200,
            child:
          ),*/
          /*Container(
            width: 1080,
            //height: 348,
            color: Colors.red.shade200,
            child:
          ),
          Container(
            width: 1080,
            //height: 348,
            color: Colors.red.shade200,
            child: CupertinoButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_mick()));
              },
              child: Text("Ver informacion de Mick Schumacher"),
            ),
          ),
          Container(
            width: 1080,
            //height: 348,
            color: Colors.red.shade200,
            child: CupertinoButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal_carlos()));
              },
              child: Text("Ver informacion de Carlos Sainz"),
            ),
          ),*/
        ]




      )
    );
  }
}
