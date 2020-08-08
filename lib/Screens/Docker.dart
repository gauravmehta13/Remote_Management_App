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
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        color: Colors.amber.shade200,
        child: Column(
          children: <Widget>[
            Container(
              child: InkWell(
                onTap: () => print('tapped'),
                child: Card(
                  elevation: 5,
                  color: Colors.cyan.shade100,
                  child: Text(
                    'Docker Image Queries',
                    style: TextStyle(fontSize: 30),
                  ), 
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () => print('tapped'),
                child: Card(
                elevation: 5,
                color: Colors.cyan.shade100,
                child: Text(
                  'Docker Run Queries',
                  style: TextStyle(fontSize: 30),  
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}