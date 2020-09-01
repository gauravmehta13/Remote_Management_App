import 'package:RemoteManagementApp/Screens/Dashboard.dart';
import 'package:flutter/material.dart';

class IpAddress extends StatefulWidget {
  @override
  _IpAddressState createState() => _IpAddressState();
}

class _IpAddressState extends State<IpAddress> {
  var ipaddr = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(30),
          color: Colors.grey[400],
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter the Public IP of your VM",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (x) {
                    ipaddr = x;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text('Next'),
                  onPressed: () {
                    print(ipaddr);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dashboard(
                                  ipaddr: ipaddr,
                                )));
                  },
                ),
              ])),
    );
  }
}
