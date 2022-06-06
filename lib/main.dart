import 'package:consulta_api/pages/inicio.dart';
import 'package:consulta_api/pages/login.dart';
import 'package:consulta_api/pages/principal.dart';
import 'package:consulta_api/services/f1services.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const EstadoApp());

class EstadoApp extends StatelessWidget {
  const EstadoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => F1Services(),
      ),
    ],

      child: const MyApp(),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Login(),
    );
  }
}