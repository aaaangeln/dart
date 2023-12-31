import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String user_todo='';
  List todoList = [];

  @override
  void initState() {
    super.initState();

    todoList.addAll(['buy','learn','milk']);
  }

  void _menuOpen(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title: Text('manu'),
          ),
          body: Row(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  },
                  child: Text('на главную')),
              Padding(padding: EdgeInsets.only(left: 30),),
              Text('наше простое меню'),


            ],
          )
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('СПИСОК ДЕЛ', ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: _menuOpen,
              icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (BuildContext context, int index){
          return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                child: ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.deepPurple),
                    onPressed: (){
                      setState(() {
                        todoList.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
            onDismissed: (direction){
                setState(() {
                  todoList.removeAt(index);
                });
            },

          );
        },

      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: (){
            showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: Text('Введите новое дело: '),
                content: TextField(
                  onChanged: (String value){
                    user_todo=value;
                  },
                ),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                    ),
                      onPressed: (){
                        setState(() {
                          todoList.add(user_todo);
                        });
                        Navigator.of(context).pop();
                  },
                      child: Text('Добавить'))
                ],
              );
            }
            );
          },
            child:
              Icon(Icons.add, color: Colors.white,),
        ),
    );
  }
}
