import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF181818),
      ),
      backgroundColor: const Color(0xFF181818),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("email.do@usuário"),
              accountName: Text("nome"),
              currentAccountPicture: CircleAvatar(
                child: Text("foto"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.pushNamed(context, 't7');
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Minhas Músicas"),
              onTap: () {
                Navigator.pushNamed(context, 't6');
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Músicas Favoritas"),
              onTap: () {
                Navigator.pushNamed(context, 't5');
              },
            ),
            ListTile(
              leading: Icon(Icons.perm_device_info),
              title: Text("Sobre"),
              onTap: () {
                Navigator.pushNamed(context, 't4');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
                children: [
                  const SizedBox(height: 60),
                  Image.asset('imagens/album.png', height: 400),
                  const SizedBox(height: 280),
                  const Text(
                        'Music_Atual.mp3', 
                         style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: '',
                          color: Colors.white,
                        ),
                      ),
                    const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                      botaoanterior(),
                      const SizedBox(width: 25),
                      botaopause(),
                      const SizedBox(width: 25),
                      botaoproximo(),
                    ],
                  ),
                ], 
          ),
        ),
      )
    );
  }

  //BOTAO
  botaoproximo(){
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {
        },
        child: const Icon(Icons.arrow_right, color: Colors.white, size: 80,),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF181818),
        ),
      ),
    );
  }

  botaoanterior(){
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {
        },
        child: const Icon(Icons.arrow_left, color: Colors.white, size: 80,),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF181818),
        ),
      ),
      
    );
  }

  botaopause(){
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {
        },
        child: const Icon(Icons.pause_circle, color: Colors.white, size: 60,),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF181818),
        ),
      ),
      
    );
  }
}