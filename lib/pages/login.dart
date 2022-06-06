import 'package:consulta_api/pages/inicio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String valor='';

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFEF5350),
          title: const Text("Iniciar sesion", textAlign: TextAlign.center),

        ),
        body: ListView(


            children: [

              Container(

                  child: const Image(
                    image: NetworkImage('https://i.gifer.com/6bm.gif'),
                  )
              ),

              Container(
                width: 1080,
                color: Colors.red.shade200,
                child: Text("\n Nombre de usuario \n",textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
              ),

              Container(
              child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.account_box_outlined),
                      border: OutlineInputBorder()
                  ),
              onChanged: (texto) {
               valor = texto;
               },
               )
               ),

              Container(
                width: 1080,
                color: Colors.red.shade200,
                child: Text("\n Contraseña \n",textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
              ),

              Container(
                  child: TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder()
                    ),
                    onChanged: (texto) {
                      valor = texto;
                    },
                  )
              ),
              Container(
                height: 30,
                color: Colors.red.shade200,
              ),

              Container(
                alignment: Alignment.center,
                color: Colors.red.shade200,

                child:  CupertinoButton.filled(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Inicio()));
                  },
                  child: Text("Iniciar sesion"),
                ),
              ),
              Container(
                height: 83,
                color: Colors.red.shade200,
              ),
            ]




        )
    );
  }
}
