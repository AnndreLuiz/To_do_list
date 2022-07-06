import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  
  
  TextEditingController _Controller = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();



void Salvar(){
  String nome;
if(_formkey.currentState!.validate()){
setState(() {
  nome = _Controller.text;
  

  Navigator.of(context).pop(_Controller.text);
});
 {ScaffoldMessenger.of(context).showSnackBar(
 const SnackBar(content: Text('Cadastro efetuado!')));}
}
}




  @override
  Widget build(BuildContext context) {
    _Controller.clear();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
        centerTitle: true,
      ),
      body: Form(
        key:_formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: _Controller,
                validator: (value){
                  if(value!.isEmpty){
                    return 'Campo deve ser obrigatoriamente preenchido';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Digite seu objeto',
                  border:  OutlineInputBorder(),
                  labelStyle: TextStyle(fontSize: 20)
                  ),
                  style: const TextStyle(fontSize: 20),
                  onSaved: (String? value){

                  },
                ),
              ),
            ), SizedBox(
              width: 100,
              child: ElevatedButton(
              onPressed: Salvar,
              child: const Text('Salvar'),
            ),
            ), 
          ],
        ),)
      );
  }
}