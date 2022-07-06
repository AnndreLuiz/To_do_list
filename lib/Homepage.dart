import 'package:flutter/material.dart';




class Homepage extends StatefulWidget {
  final nome;
  const Homepage({Key? key, this.nome}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  get value => null;
  var index;
  
List<String> _list = [];

void adicinaritem(value){
  _list.add(value);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Navigator.of(context).pushNamed('/itens',arguments: Homepage()).then((value){if(value != null){
          setState((){adicinaritem(value);});        
          }
          }
        );
      },
      child: Icon(Icons.add)),
      appBar: AppBar(
        title:  const Text('Lista de Tarefas'),
        centerTitle: true,
        ),
        body: SafeArea(
        child:ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context,index){
          return Column(
            children: [
              ListTile(
                title: Text('${index + 1} - ${_list[index]}',
                style: const TextStyle(
                fontSize: 45,
                 ),
                ),
              ),
              Divider(
              color: Colors.yellow),
            ],
          );
        },
        ),
    ));
  }
}