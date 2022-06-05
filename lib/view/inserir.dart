import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'widgets/mensagem.dart';

class InserirPage extends StatefulWidget {
  const InserirPage({Key? key}) : super(key: key);

  @override
  _InserirPageState createState() => _InserirPageState();
}

class _InserirPageState extends State<InserirPage> {
  var txtNome = TextEditingController();
  var txtCantor = TextEditingController();

  retornarDocumentoById(id) async {
    await FirebaseFirestore.instance
        .collection('musicas')
        .doc(id)
        .get()
        .then((doc) {
      txtNome.text = doc.get('nome');
      txtCantor.text = doc.get('cantor');
    });
  }

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)!.settings.arguments;

    if (id != null) {
      if (txtNome.text.isEmpty && txtCantor.text.isEmpty) {
        retornarDocumentoById(id);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MusicNow',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        backgroundColor: const Color(0xFF181818),
      ),
      backgroundColor: const Color(0xFF181818),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: [
            campoTexto('Nome da Música', txtNome, Icons.music_note),
            const SizedBox(height: 20),
            campoTexto('Cantor', txtCantor, Icons.person),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 241, 207, 35),
                    ),
                    child: Text( (id==null) ? 'salvar' : 'alterar'),
                    onPressed: () {
                      if (id == null) {
                        //Adicionar um novo documento
                        FirebaseFirestore.instance.collection('musicas').add(
                          {
                            "nome": txtNome.text,
                            "cantor": txtCantor.text,
                          },
                        );
                        sucesso(context, 'Música adicionada');
                        Navigator.pop(context, 't6');
                      } else {
                        //Alterar um documento
                        FirebaseFirestore.instance
                            .collection('musicas')
                            .doc(id.toString())
                            .set(
                          {
                            "nome": txtNome.text,
                            "cantor": txtCantor.text,
                          },
                        );
                        sucesso(context, 'Música alterada');
                        Navigator.pop(context);
                      }

                      
                    },
                    
                  ),
                  
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 150,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 146, 29, 6)
                      ),
                      child: const Text('deletar'),
                      onPressed: () {
                        FirebaseFirestore.instance.collection('musicas')
                            .doc(id.toString()).delete();
                         Navigator.pop(context);
                        sucesso(context, "Música apagada.");
                      },
                  )
                ),
              ],
              
            )
          ],
        ),
      ),
    );
  }

  campoTexto(texto, controller, icone,) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: false,
      maxLength: 25,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: texto,
        labelStyle: const TextStyle(
          fontSize: 22,
          color: Color.fromARGB(124, 88, 99, 89),
        ),
        prefixIcon: Icon(icone, color: const Color.fromARGB(124, 88, 99, 89)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}