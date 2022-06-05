import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'widgets/mensagem.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtTelefone = TextEditingController();
  var txtCPF = TextEditingController();
  var f2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
      
      //BODY
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: f2,
              child: Column(
                children: [
                  Image.asset('imagens/logo.png'),
                  const Text(
                    'Faça seu Cadastro', 
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                      color: Colors.white,
                      ),
                  ),
                  const SizedBox(height: 30),
                  campoTextoUsuario('Usuário', txtNome,),
                  const SizedBox(height: 10),
                  campoTextoEmail('Email', txtEmail,),
                  const SizedBox(height: 10),
                  campoTextoSenha('Senha', txtSenha,),
                  const SizedBox(height: 10),
                  campoTextoTelefone('Telefone', txtTelefone,),
                  const SizedBox(height: 10),
                  campoTextoCPF('CPF', txtCPF,),
                  const SizedBox(height: 20),
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
      maxLength: 25,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: rotulo,
        labelStyle: const TextStyle(
          fontSize: 22,
          color: Color.fromARGB(124, 88, 99, 89),
        ),
        // ignore: prefer_const_constructors
        prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 0), // add padding to adjust icon
            child: const Icon(Icons.person, color: Color.fromARGB(124, 88, 99, 89),),
          ),
        hintText: 'Digite seu nome completo',
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

  campoTextoEmail(rotulo, variavel) {
    return TextFormField(
      controller: variavel,
      keyboardType: TextInputType.text,
      obscureText: false,
      maxLength: 25,
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
            child: const Icon(Icons.email, color: Color.fromARGB(124, 88, 99, 89),),
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
      maxLength: 25,
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

  campoTextoTelefone(rotulo, variavel) {
    return TextFormField(
      controller: variavel,
      keyboardType: TextInputType.text,
      maxLength: 25,
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
            child: const Icon(Icons.smartphone, color: Color.fromARGB(124, 88, 99, 89),),
          ),
        hintText: 'Digite seu telefone',
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

  campoTextoCPF(rotulo, variavel) {
    return TextFormField(
      controller: variavel,
      keyboardType: TextInputType.text,
      maxLength: 25,
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
            child: const Icon(Icons.perm_identity, color: Color.fromARGB(124, 88, 99, 89),),
          ),
        hintText: 'Digite seu CPF',
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
  botaoCadastrar(rotulo) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          criarConta(txtNome.text, txtEmail.text, txtSenha.text, txtTelefone.text, txtCPF.text);
          Navigator.pop(context);
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

  void criarConta(nome, email, senha, telefone, cpf) {

    FirebaseAuth.instance
    .createUserWithEmailAndPassword(email: email, password: senha)
    .then((res){

      FirebaseFirestore.instance
        .collection('usuarios')
        .add(
          {
            "uid" : res.user!.uid.toString(),
            "nome" : nome,
            "email": email,
            "telefone": telefone,
            "CPF": cpf
          }
        );

      sucesso(context,'Cadastrado com sucesso!');
      Navigator.pop(context);
    }).catchError((e){
      switch(e.code){
        case 'invalid-email':
          erro(context,'Email inválido.');
          break;
        case 'email-already-in-use':
         erro(context,'Email já cadastrado.');
          break;
        default:
          erro(context,e.code.toString());
      }
    });

  }
}
