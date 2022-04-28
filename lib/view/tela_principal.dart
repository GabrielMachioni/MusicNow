import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MusicNow',
      home: TelaPrincipal(),
    ),
  );
}

// TELA PRINCIPAL

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  var txtNome = TextEditingController();
  var txtSenha = TextEditingController();
  var f1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BODY
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: f1,
              child: Column(
                children: [
                  Image.asset('imagens/logo.png'),
                  const Text(
                    'MusicNow', 
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                      color: Colors.white,
                      ),
                  ),
                  const SizedBox(height: 30),
                  campoTextoUsuario('Usuário', txtNome,),
                  const SizedBox(height: 10),
                  campoTextoSenha('Senha', txtSenha,),
                  const SizedBox(height: 30),
                  botaoLogar('Logar'),
                  const SizedBox(height: 10),
                  const Text('não é cadastrado?',
                  style: TextStyle(
                      fontSize: 15,
                      height: 3,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                      color: Colors.white,
                      ),
                  ),
                  botaoCadastrar('Cadastrar')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
  // CAMPO DE TEXTO
  campoTextoUsuario(rotulo, variavel) {
    return TextFormField(
      controller: variavel,
      keyboardType: TextInputType.text,
      obscureText: false,
      maxLength: 10,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: rotulo,
        labelStyle: const TextStyle(
          fontSize: 22,
          color: Color.fromARGB(124, 88, 99, 89),
        ),
        prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 0), // add padding to adjust icon
            child: const Icon(Icons.person, color: Color.fromARGB(124, 88, 99, 89),),
          ),
        hintText: 'Digite seu email',
        hintStyle: const TextStyle(
          fontSize: 22,
          color: Color.fromARGB(126, 180, 198, 181),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }

  campoTextoSenha(rotulo, variavel) {
    return TextFormField(
      controller: variavel,
      keyboardType: TextInputType.text,
      obscureText: true,
      maxLength: 10,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: rotulo,
        labelStyle: const TextStyle(
          fontSize: 22,
          color: Color.fromARGB(124, 88, 99, 89),
        ),
        prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 0), // add padding to adjust icon
            child: const Icon(Icons.lock_outline, color: Color.fromARGB(124, 88, 99, 89),),
          ),
        hintText: 'Digite sua senha',
        hintStyle: const TextStyle(
          fontSize: 22,
          color: Color.fromARGB(126, 180, 198, 181),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }

  // BOTÃO
  botaoLogar(rotulo) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 't3');
        },
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 22),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 241, 207, 35),
        ),
      ),
    );
  }

  botaoCadastrar(rotulo) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
        Navigator.pushNamed(context, 't2');
        },
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 22),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 146, 29, 6),
        ),
      ),
    );
  }
}
