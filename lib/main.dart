import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:musicnow/firebase_options.dart';
import 'package:musicnow/view/inserir.dart';
import 'view/tela_login.dart';
import 'view/tela_cadastro.dart';
import 'view/tela_inicial.dart';
import 'view/tela_sobre.dart';
import 'view/tela_favoritas.dart';
import 'view/tela_musicas.dart';
import 'view/tela_conta.dart';


Future<void> main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MusicNow',
      initialRoute: 't1',
      routes: {
        't1' : (context) => const TelaLogin(),
        't2' : (context) => const TelaCadastro(),
        't3' : (context) => const TelaInicial(),
        't4' : (context) => const TelaSobre(),
        't5' : (context) => const TelaFavoritas(),
        't6' : (context) => const TelaMusicas(),
        't7' : (context) => const TelaConta(),
        'inserir': (context) => const InserirPage(),
      },
    )
  );
}
