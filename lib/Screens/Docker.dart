import 'package:flutter/material.dart';

class Docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Docker Tools'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () => Navigator.of(context).pushNamed('/docker_help'),
          ),
        ],
      ),
      body: Center(
        child: Text('Coming Soon',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w800)),
      ),
    );
  }
}
