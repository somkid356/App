import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterkid/screen/login.dart';
import 'package:flutterkid/screen/register.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("หน้าสมัครและเข้าสู่ระบบ"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        child: Column(
          children: [
            Image.asset("assets/images/yoru.jpg"),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
              icon: Icon(Icons.add), 
              label: Text("สร้างบัญชีผู้ใช้", style:TextStyle(fontSize: 20)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return RegisterScreen();
                })
                );
              },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
              icon: Icon(Icons.login), 
              label: Text("เข้าสู่ระบบ", style:TextStyle(fontSize: 20)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                })
                );
              },
              ),
            )
          ]),
      ),
    );
  }
}