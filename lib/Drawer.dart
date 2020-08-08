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
          accountEmail: new Text("Mayank , Gaurav , Priya"),
          accountName: new Text(
            "Team Nerv",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          currentAccountPicture: new GestureDetector(
            child: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://em.wattpad.com/7d8e9524ad28f84666ffd9655460af8ec55f7c74/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f4e753130677a2d526d766e7254413d3d2d32362e313563623832636132363266373966653837393039393132323839302e6a7067?s=fit&w=720&h=720'),
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
                      "https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                  fit: BoxFit.fill)),
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
