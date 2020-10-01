import 'package:RemoteManagementApp/Screens/Dashboard.dart';
import 'package:RemoteManagementApp/Screens/Docker.dart';
import 'package:RemoteManagementApp/Screens/Help.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: new Text(
            "Team Nerv",
            style: TextStyle(color: Colors.black),
          ),
          accountName: new Text(
            "Welcome User",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
          ),
          currentAccountPicture: new GestureDetector(
            child: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://www.pngkit.com/png/detail/281-2812821_user-account-management-logo-user-icon-png.png'),
            ),
            onTap: () => Fluttertoast.showToast(
                msg: "Your Profile",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.yellowAccent,
                textColor: Colors.black,
                fontSize: 16.0),
          ),
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new NetworkImage(
                      "https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  fit: BoxFit.fill)),
        ),
        ListTile(
            title: new Text("Basic Commands"),
            trailing: new Icon(Icons.code),
            onTap: () {
              Navigator.of(context).pop();
              //Navigator.of(context).push(new MaterialPageRoute(
              //  builder: (BuildContext context) => Dashboard()));
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
