import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tip Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double billAmount = 0, tipPercentage = 3.0, people = 1, totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                billAmount = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter the bill amount...',
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Text('Tip %'),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    //TODO:
                  },
                  child: Icon(Icons.remove_circle),
                ),
                SizedBox(width: 8.0),
                Text('$tipPercentage %'),
                SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    //TODO:
                  },
                  child: Icon(Icons.add_circle),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Text('People'),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    //TODO:
                  },
                  child: Icon(Icons.remove_circle),
                ),
                SizedBox(width: 8.0),
                Text('$people'),
                SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    //TODO:
                  },
                  child: Icon(Icons.add_circle),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            FlatButton(
              onPressed: () {
                //TODO:
              },
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 12.0),
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
            ),
            SizedBox(height: 20.0),
            Text(
              'Tip: \$10.00 per person!',
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
