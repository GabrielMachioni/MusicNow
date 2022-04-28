import 'package:flutter/material.dart';

class TelaMusicas extends StatefulWidget {
  const TelaMusicas({Key? key}) : super(key: key);

  @override
  State<TelaMusicas> createState() => _TelaMusicasState();
}

class _TelaMusicasState extends State<TelaMusicas> {
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('Musica ##', style: TextStyle(color: Colors.white, fontSize: 25),),
              subtitle: Text('Cantor ##', style: TextStyle(color: Colors.white, fontSize: 15),),
              leading: const Icon(Icons.music_note, color: Colors.white,),
              trailing: const Icon(Icons.arrow_right, color: Colors.white),
            );
          },
        ),
      ),
         
    );
  }
}