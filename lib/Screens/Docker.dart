import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var imagename, tag, cName, cmd, nName;

dockerPull(imagename, {tag='latest'}) async {
  var url = 'http://35.168.3.119/cgi-bin/dockerimagepull.py?x=$imagename&y=$tag';
  var response =  await http.get(url);
  print(response.body); 
}


dokckerRun(imagename,tag,cName) async{
  var url = 'http://35.168.3.119/cgi-bin/dockerrun.py?x=$imagename&y=$tag&z=$cName';
  var response =  await http.get(url);
  print(response.body);
}

imageDel(imagename, tag) async {
  var url = 'http://35.168.3.119/cgi-bin/imagedel.py?x=$imagename&y=$tag';
  var response =  await http.get(url);
  print(response.body);
}

containerDel(cName) async {
  var url = 'http://35.168.3.119/cgi-bin/containerdel.py?x=$cName';
  var response =  await http.get(url);
  print(response.body);
}

dockerExec(cName,cmd) async {
  var url = 'http://35.168.3.119/cgi-bin/dockerexec.py?x=$cName&y=$cmd';
  var response =  await http.get(url);
  print(response.body);
}

dockerCommit(cName, nName, tag) async {
  var url = 'http://35.168.3.119/cgi-bin/dockercommit.py?x=$cName&y=$nName&z=$tag';
  var response =  await http.get(url);
  print(response.body);
}

dockerStart(cName) async {
  var url = 'http://35.168.3.119/cgi-bin/dockerstart.py?x=$cName';
  var response =  await http.get(url);
  print(response.body);
}

dockerStop(cName) async {
  var url = 'http://35.168.3.119/cgi-bin/dockerstop.py?x=$cName';
  var response =  await http.get(url);
  print(response.body);
}

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
                      imagename = x;
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
                      hintText: "Enter Tag {Type lastest if not sure}",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      tag = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {
                  dockerPull(imagename,tag: tag);
                })
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
                          imagename = x;
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
                      hintText: "Enter Tag {Type lastest if not sure}",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      tag = x;
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
                      cName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {
                  dokckerRun(imagename, tag, cName);
                })
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
                    onChanged: (x) {
                      imagename = x;
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
                      hintText: "Enter Tag {Type lastest if not sure}",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      tag = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Delete'), onPressed: () {
                  imageDel(imagename, tag);
                })
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
                      hintText: "Container Name To delete",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      cName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Delete'), onPressed: () {
                  containerDel(cName);
                })
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
                      hintText: "Container Name",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      cName = x;
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
                      hintText: "Enter The Command",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      cmd = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {
                  dockerExec(cName,cmd);
                })
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
                      cName = x;
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
                      nName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Tag name",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (x) {
                      tag = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {
                  dockerCommit(cName,nName,tag);
                })
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
                    onChanged: (x) {
                      cName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {
                  dockerStart(cName);
                })
              ])
            ],
          ),
          ExpansionTile(
            title: Text('Stop A container'),
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
                      cName = x;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('Execute'), onPressed: () {
                  dockerStop(cName);
                })
              ])
            ],
          )
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
