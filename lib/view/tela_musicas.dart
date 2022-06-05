import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'widgets/mensagem.dart';

class TelaMusicas extends StatefulWidget {
  const TelaMusicas({Key? key}) : super(key: key);

  @override
  State<TelaMusicas> createState() => _TelaMusicasState();
}

class _TelaMusicasState extends State<TelaMusicas> {

  var musicas;

  @override
  void initState() {
    super.initState();
    musicas = FirebaseFirestore.instance.collection('musicas');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minhas de Músicas',
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
          stream: musicas.snapshots(),
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
        floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, 'inserir');
        },
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
        icon: const Icon(Icons.favorite, color: Colors.white,),
        onPressed: () {
          FirebaseFirestore.instance.collection('musica_favorita').add(
            {
              "nome": nome,
              "cantor": cantor,
            },
          );
          sucesso(context, "Música favoritada.");
        },
      ),
      onTap: (){
        Navigator. pushNamed(
          context,
          'inserir',
          arguments: item.id
        );
      },  
    );   
  }
}