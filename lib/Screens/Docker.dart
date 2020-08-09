import 'package:flutter/material.dart';

class Docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Docker Tools'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.help_outline),
              onPressed: () => Navigator.of(context).pushNamed('/docker_help'),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          SizedBox(height: 30),
          //Pull Docker Image
          ExpansionTile(
            title: Text('Pull Docker Image'),
            leading: Icon(Icons.accessibility),
            children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Image Name",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Version(leave blank for latest)",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {})
              ])
            ],
          ),
          //Run Docker Container
          ExpansionTile(
            title: Text('Run Docker Container'),
            leading: Icon(Icons.accessibility),
            children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Image Name",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Preffered Container Name",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {})
              ])
            ],
          ),
          //
          ExpansionTile(
            //Delete Docker Image
            title: Text('Delete Docker Image'),
            leading: Icon(Icons.accessibility),
            children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter the Image You Want to Delete",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Delete'), onPressed: () {})
              ])
            ],
          ),
          //Delete Docker Container
          ExpansionTile(
            title: Text('Delete Docker Container'),
            leading: Icon(Icons.accessibility),
            children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Container To delete",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                /* SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Version(leave blank for latest)",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),*/
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Delete'), onPressed: () {})
              ])
            ],
          ),
          //Execute Command in Container
          ExpansionTile(
            title: Text('Execute Command in Container'),
            leading: Icon(Icons.accessibility),
            children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    child: Text('List Running Containers'), onPressed: () {}),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter The Command",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Container Name)",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {})
              ])
            ],
          ),
          //Docker Commit
          ExpansionTile(
            title: Text('Convert Container to Image'),
            leading: Icon(Icons.accessibility),
            children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    child: Text('List Running Containers'), onPressed: () {}),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Container Name",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name the New Image",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      //    commandName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {})
              ])
            ],
          ),
          ExpansionTile(
            title: Text('Start A container'),
            leading: Icon(Icons.accessibility),
            children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    child: Text('List Running Containers'), onPressed: () {}),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Container Name",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {})
              ])
            ],
          ),
        ]))
        /*Container(
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
      ),*/
        );
  }
}
