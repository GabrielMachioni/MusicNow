import 'package:flutter/material.dart';
import 'view/tela_principal.dart';
import 'view/tela_cadastro.dart';
import 'view/tela_inicial.dart';
import 'view/tela_sobre.dart';
import 'view/tela_favoritas.dart';
import 'view/tela_musicas.dart';
import 'view/tela_conta.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MusicNow',
      initialRoute: 't1',
      routes: {
        't1' : (context) => const TelaPrincipal(),
        't2' : (context) => const TelaCadastro(),
        't3' : (context) => const TelaInicial(),
        't4' : (context) => const TelaSobre(),
        't5' : (context) => const TelaFavoritas(),
        't6' : (context) => const TelaMusicas(),
        't7' : (context) => const TelaConta(),
      },
    )
  );
}
