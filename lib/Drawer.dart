import 'package:RemoteManagementApp/Screens/Dashboard.dart';
import 'package:RemoteManagementApp/Screens/Docker.dart';
import 'package:RemoteManagementApp/Screens/Help.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://hackernoon.com/hn-images/1*4zbLJdv2V9nKbUMafUw6dA.jpeg'),
                  fit: BoxFit.cover)),
          child: Text(""),
        ),
        ListTile(
            title: new Text("Basic Commands"),
            trailing: new Icon(Icons.code),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Dashboard()));
            }),
        new ListTile(
            title: new Text("Docker"),
            trailing: new Icon(Icons.cloud),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Docker()));
            }),
        new ListTile(
            title: new Text("Get Help"),
            trailing: new Icon(Icons.help),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Help()));
            }),
        new Divider(),
        new ListTile(
          title: new Text("Cancel"),
          trailing: new Icon(Icons.cancel),
          onTap: () => Navigator.pop(context),
        ),
      ],
    ));
  }
}
