import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LSBU International Student portal',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LSBU International Student portal',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/LSBU_Hub.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to LSBU International Student portal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.white60,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.white60,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text('Student Log in'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Text('Admin Log in'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _selectedIndex = -1;

  final List<String> _options = [
    'Application status',
    'Conditional letter',
    'Unconditional letter',
    'Tuition fee status',
    'CAS Portal',
    'Upload documents',
    'Schedule interview',
    'Interview status',
    'CAS status',
    'Documents you\'ll need to apply',
    'Money you need',
    'VISA support',
    'Important Dates',  ];

  final List<String> _details = [
    'Details about Application status',
    'Details about Conditional letter',
    'Details about Unconditional letter',
    'Details about Tuition fee status',
    'Details about CAS Portal',
    'Details about Upload documents',
    'Details about Schedule interview',
    'Details about Interview status',
    'Details about CAS status',
    'Details about Documents you\'ll need to apply',
    'Details about Money you need',
    'Details about VISA support',
    'Details about Important Dates',  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LSBU International Student Portal'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _options.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text(_options[index]),
                  onTap: () {
                    _onItemTapped(index);
                  },
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[300],
              child: _selectedIndex != -1
                  ? Center(
                child: Text(
                  _details[_selectedIndex],
                  style: TextStyle(fontSize: 24),
                ),
              )
                  : Center(
                child: Text(
                  'Welcome To Your DashBoard',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  String _selectedOption = '';

  void _onOptionSelected(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Admin Portal'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey.shade100,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.assignment),
                    title: Text('Applications'),
                    onTap: () => _onOptionSelected('Applications'),
                  ),
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text('Conditional letter'),
                    onTap: () => _onOptionSelected('Conditional letter'),
                  ),
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text('Unconditional letter'),
                    onTap: () => _onOptionSelected('Unconditional letter'),
                  ),
                  ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text('Tuition Fee Records'),
                    onTap: () => _onOptionSelected('Tuition Fee Records'),
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_file),
                    title: Text('Documents'),
                    onTap: () => _onOptionSelected('Documents'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('Interview Status'),
                    onTap: () => _onOptionSelected('Interview Status'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('CAS status'),
                    onTap: () => _onOptionSelected('CAS status'),
                  ),
                  ListTile(
                    leading: Icon(Icons.document_scanner_outlined),
                    title: Text('Visa Records'),
                    onTap:() => _onOptionSelected('Visa Records'),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  _selectedOption.isNotEmpty
                      ? 'Details for $_selectedOption'
                      : 'Please select an option',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
