import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'listview.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALHAMDULILLAH',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const FirstScreen(),
    );
  }
}

// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Hero(
//           tag: 'imageTag',
//           child: Image.asset(
//             'assets/images/burger.jpg',
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Screen2(),
//             ),
//           );
//         },
//         child: Icon(Icons.arrow_forward),
//       ),
//     );
//   }
// }

// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Hero(
//           tag: 'imageTag',
//           child: Image.asset(
//             'assets/images/burger.jpg',
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         child: Icon(Icons.arrow_back),
//       ),
//     );
//   }
// }
