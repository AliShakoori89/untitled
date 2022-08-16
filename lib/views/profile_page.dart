import 'package:flutter/material.dart';
import 'package:untitled/data/shared_pref.dart';
import 'package:untitled/views/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        actions: [
          IconButton(
            onPressed: () {
              SharedPref().setLogout();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: FutureBuilder<String>(
            future: SharedPref().getUsername(),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Welcome Back!", style: TextStyle(fontSize: 30),),
                    Text(snapshot.data!, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25) , textAlign: TextAlign.left,),
                    SizedBox(height: 15),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
