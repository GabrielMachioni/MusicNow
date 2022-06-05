import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'widgets/mensagem.dart';

class TelaFavoritas extends StatefulWidget {
  const TelaFavoritas({Key? key}) : super(key: key);

  @override
  State<TelaFavoritas> createState() => _TelaFavoritasState();
}

class _TelaFavoritasState extends State<TelaFavoritas> {
  var txtNome = TextEditingController();
  var txtCantor = TextEditingController();
  var musica_favorita;

  @override
  void initState() {
    super.initState();
    musica_favorita = FirebaseFirestore.instance.collection('musica_favorita');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Músicas favoritas',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF181818),
      ),
      //BODY
      backgroundColor: const Color(0xFF181818),
      body: Container(
        padding: const EdgeInsets.all(20),

        child: StreamBuilder<QuerySnapshot>(
          stream: musica_favorita.snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(child: Text("Não foi póssivel conectar."));
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              default:
                final dados = snapshot.requireData;
                return ListView.builder(
                  itemCount: dados.size,
                  itemBuilder: (context, index){
                    return exibirDocumento(dados.docs[index]);
                  },
                );
            }
          },
        ),
      ), 
    );
  }

  exibirDocumento(item) {
    String nome = item.data()['nome'];
    String cantor = item.data()['cantor'];
    
  
    return ListTile(
      title: Text(nome, style: const TextStyle(color: Colors.white, fontSize: 25),),
      subtitle: Text(cantor, style: const TextStyle(color: Colors.white, fontSize: 15)),
      leading: const Icon(Icons.arrow_right, color: Colors.white,),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.white,),
        onPressed: () {
          musica_favorita.doc(item.id).delete();
          sucesso(context, 'Música retirada dos favoritos');
        },
      ), 
    );   
  }
}