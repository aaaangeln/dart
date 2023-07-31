import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
} // класс состояний

class _UserPanelState extends State<UserPanel> {

  int count=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('User Hello'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ), //шапка
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Text('Anastasiya', style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: 'Handjet',
                ),),
                Padding(padding: EdgeInsets.only(top: 10),),
                CircleAvatar(
                  backgroundImage: AssetImage('asset/IMG_9816_edit_2571668136328423.jpg'),
                  radius: 50,
                ),
                Padding(padding: EdgeInsets.only(top: 10),),
                Row(
                  children: [
                    Icon(Icons.mail, size: 40, color: Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Text('anastasiya@gmail.com',style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10),),
                Text('Count: $count', style: TextStyle(color: Colors.white, fontSize: 25),),

              ],
            ),
          ],
        ),
      ),// безопасная зона которую точно видит пользователь
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black45,
        onPressed: (){
          setState(() {
            count++;
          });
        },
      ),
    ); // как слой
  }
}













//ТЕСТОВОЕ ОБУЧЕНИЕ
//void main()=>runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.blueAccent),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Application'),
//           centerTitle: true,
//         ),
//         body:
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly, //трансформация по вертикали
//           //crossAxisAlignment: CrossAxisAlignment.end, // трансформация по горизонтали
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Welcome!'),
//                 OutlinedButton.icon(onPressed: (){},
//                   icon: Icon(Icons.add, color: Colors.amber, size: 32),
//                   label: Text('add', style: TextStyle(
//                     fontSize: 32,
//                     color: Colors.amber,
//                   ),
//                   ),
//                 ),
//                 Text('Welcome!'),
//               ],
//             ),
//             Column(
//               children: [
//                 Text('Welcome!'),
//                 OutlinedButton.icon(onPressed: (){},
//                   icon: Icon(Icons.add, color: Colors.amber, size: 32),
//                   label: Text('add', style: TextStyle(
//                     fontSize: 32,
//                     color: Colors.amber,
//                   ),
//                   ),
//
//                 ),
//
//               ],
//             ),
//             Column(
//               children: [
//                   Text('Welcome!'),
//                   OutlinedButton.icon(onPressed: (){},
//                     icon: Icon(Icons.add, color: Colors.amber, size: 32),
//                     label: Text('add', style: TextStyle(
//                       fontSize: 32,
//                       color: Colors.amber,
//                     ),
//                     ),
//
//                   ),
//
//
//
//               ],
//             ),
//           ],
//         )
//
//
//       ),
//     );
//   }
// }