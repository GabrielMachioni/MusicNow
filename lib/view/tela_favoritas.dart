import 'package:flutter/material.dart';

class TelaFavoritas extends StatefulWidget {
  const TelaFavoritas({Key? key}) : super(key: key);

  @override
  State<TelaFavoritas> createState() => _TelaFavoritasState();
}

class _TelaFavoritasState extends State<TelaFavoritas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Músicas Favoritas',
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
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('Musica ##', style: TextStyle(color: Colors.white, fontSize: 25),),
              subtitle: Text('Cantor ##', style: TextStyle(color: Colors.white, fontSize: 15),),
              leading: const Icon(Icons.heart_broken_sharp, color: Colors.white,),
              trailing: const Icon(Icons.arrow_right, color: Colors.white),
            );
          },
        ),
      ),
    );
  }
}