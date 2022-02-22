// import 'package:drehmoment/data_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'convert_json.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }
// class HomePage extends StatefulWidget {
//   const HomePage({ Key? key }) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text('Kieselstein'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 10),
//           Row(
//             children: const [
//               Expanded(
//                 child: Text('Größe',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w600,
//                 )
//               )
//               ),
//               Expanded(
//                 child: Text('4.6',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w600,
//                 )
//               )
//               ),
//               Expanded(
//                 child: Text('5.6',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600,
//                   )
//                 )
//               ),
//               Expanded(
//                 child: Text('6.8',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600,
//                   )
//                 )
//               ),
//               Expanded(
//                 child: Text('8.8',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600,
//                   )
//                 )
//               ),
//               Expanded(
//                 child: Text('10.9',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600,
//                   )
//                 )
//               ),
//               Expanded(
//                 child: Text('12.9',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w600,
//                 )
//                 )
//               ),
//             ],
//           ),
//           Expanded(child: Container(
//             child: FutureBuilder(
//               future: ReadJsonDataLocal(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasError) {
//                   return Center(child: Text("${snapshot.error}"));
//                 } else if (snapshot.hasData) {
//                   var items = snapshot.data as List<Data>;
//                   return ListView.builder(
//                     itemCount: items.length,
//                     itemBuilder: (context, index){
//                       return Column(
//                         children: [
//                           const SizedBox(height: 10),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Text(items[index].name, textAlign: TextAlign.center),
//                               ),
//                               Expanded(
//                                 child: Text(items[index].gross1, textAlign: TextAlign.center),
//                               ),
//                               Expanded(
//                                 child: Text(items[index].gross2, textAlign: TextAlign.center),
//                               ),
//                               Expanded(
//                                 child: Text(items[index].gross3, textAlign: TextAlign.center),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   child: Text(items[index].gross4, textAlign: TextAlign.center),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Text(items[index].gross5, textAlign: TextAlign.center),
//                               ),
//                               Expanded(
//                                 child: Text(items[index].gross6, textAlign: TextAlign.center),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: Colors.red,  // red as border color
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 } else {
//                   return const Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//               },
//             ),
//           ))
//         ],
//       )
//     );
//   }
// }