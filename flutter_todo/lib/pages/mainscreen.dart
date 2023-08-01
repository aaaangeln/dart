import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('СПИСОК ДЕЛ', ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(200)),
            Text('MainScreen', style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/todo');
                  //Navigator.pushNamed(context, '/todo');
                  //Navigator.pushNamedAndRemoveUntil(context, '/todo', (route)=>false);
                },
                child: Text('Перейти далее')
            ),
          ],
        ),
    );
  }
}
