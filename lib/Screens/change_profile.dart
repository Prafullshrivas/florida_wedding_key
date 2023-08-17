import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Change_Profile extends StatefulWidget {
  const Change_Profile({super.key});

  @override
  State<Change_Profile> createState() => _Change_ProfileState();
}

class _Change_ProfileState extends State<Change_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/Aa.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'change profile picture',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("jennifer"),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_change()));
                },
                leading: Icon(CupertinoIcons.person),
                //trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("jennifer@gmail.com"),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_change()));
                },
                leading: Icon(CupertinoIcons.mail_solid),
                //trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("21-6989697"),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_change()));
                },
                leading: Icon(CupertinoIcons.phone),
                //trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
                tileColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
