import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/4a/3c/8c/4a3c8c74375e8fbe5adf99db215ca0e2.jpg'),
                ),
                Text(
                  'Vincent Diamond',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'INFORMATICS STUDENT',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[100],
                      fontSize: 15.0,
                      letterSpacing: 2.5),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+62 811 1234 567',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal[900],
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'vincentdiamond@email.com',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal[900],
                          fontSize: 18.0,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Flutter Layout Challenge
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 height: 100.0,
//                 width: 100.0,
//                 color: Colors.red,
//               ),
//               Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 100.0,
//                       height: 100.0,
//                       color: Colors.yellow,
//                     ),
//                     Container(
//                       width: 100.0,
//                       height: 100.0,
//                       color: Colors.green,
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 100.0,
//                 width: 100.0,
//                 color: Colors.blue,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
