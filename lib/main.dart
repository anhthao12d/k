import 'package:drehmoment/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'anhthao12d',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _allUsers = allGewinder;
  List<Map<String, dynamic>> _gewinder = [];
  @override
  initState() {
    _gewinder = _allUsers;
    super.initState();
  }
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _gewinder = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KIESELSTEIN International GmbH', style:TextStyle(fontSize: 18)),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Gewindergröße eingeben', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightGreen[400],
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 60,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: 
                      Text('Größe',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22
                      ),
                    ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          const Text('Drehmoment in (Nm)'),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: klasse("4.6"),
                              ),
                              Expanded(
                                child: klasse("5.6"),
                              ),
                              Expanded(
                                child: klasse("6.8"),
                              ),
                              Expanded(
                                child: klasse("8.8"),
                              ),
                              Expanded(
                                child: klasse("10.9"),
                              ),
                              Expanded(
                                child: klasse("12.9"),
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: _gewinder.isNotEmpty
                  ? ListView.builder(
                      itemCount: _gewinder.length,
                      itemBuilder: (context, index) => 
                      Card(
                        key: ValueKey(_gewinder[index]["name"]),
                        color: Colors.amberAccent,
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          height: 60,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: 
                                Text(_gewinder[index]["name"],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 24
                                ),
                              ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: klasse(_gewinder[index]["gross1"]),
                                      ),
                                      Expanded(
                                        child: klasse(_gewinder[index]["gross2"]),
                                      ),
                                      Expanded(
                                        child: klasse(_gewinder[index]["gross3"]),
                                      ),
                                      Expanded(
                                        child: klasse(_gewinder[index]["gross4"]),
                                      ),
                                      Expanded(
                                        child: klasse(_gewinder[index]["gross5"]),
                                      ),
                                      Expanded(
                                        child: klasse(_gewinder[index]["gross5"]),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                              )
                            ],
                          ),
                        )
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
  Widget klasse(t) {
    return Text(t, textAlign: TextAlign.center);
  }
}