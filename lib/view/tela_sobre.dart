import 'package:flutter/material.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sobre a MusicNow',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF181818),
      ),

      //BODY
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('imagens/perfil.jpeg'),
                  radius: 100,
                ),
                const SizedBox(height: 25),
                const Text(
                    'Gabriel Machioni', 
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                      color: Colors.white,
                      ),
                  ),
                  const SizedBox(height: 30),
                  const Icon(Icons.add_location, color: Colors.white,),
                  const Text(
                    'FATEC Ribeirão Preto', 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                      color: Colors.white,
                      ),
                  ),
                  const SizedBox(height: 60),
                  const Text(
                    'Tema: Player de Música\n\nProjeto Flutter para a disciplina de Dispositivos Móveis. Gabriel, o criador do app teve a ideia de criar uma Player de Música, onde o usuário poderá escutar suas músicas, favoritar e editar sua conta.\nOnde o principal objetivo do app é a facilidade de seu uso, totalmente gratuido. Além disso, o criador tem idéias futuras com ranking de fãs, e até mesmo uma app gameficado.',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontFamily: '',
                      color: Colors.white,
                      ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}