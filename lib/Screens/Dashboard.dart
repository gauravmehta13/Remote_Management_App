import 'package:RemoteManagementApp/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var output = " ";
  var msgLine = " ";
  String commandName = " ";
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RemoteManagementApp'),
      ),
      drawer: DrawerList(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              'Execute commands on server',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter the command",
                  border: OutlineInputBorder(),
                ),
                onChanged: (x) {
                  commandName = x;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Execute'),
              onPressed: () async {
                var url = "http://35.168.3.119/cgi-bin/rmm.py?x=${commandName}";
                var result = await http.get(url);
                var data = result.body;
                setState(() {
                  msgLine = "Output of the ${commandName} comamnd is: ";
                  output = data;
                });
                print(data);
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    '${msgLine}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${output}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
