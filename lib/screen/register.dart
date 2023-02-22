import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("สร้างบัญชีใหม่"),),
      body: Container(     
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                  children: [
                    Text("อีเมล",style:TextStyle(fontSize: 20)),
                    TextFormField(),
                    SizedBox(height: 15,),
                    Text("รหัสผ่าน",style:TextStyle(fontSize: 20)),
                    TextFormField(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text("ลงทะเบียน" ,style:TextStyle(fontSize: 20)),
                        onPressed: () {  
            
                        },
                      ),
                    )
                  ],
              ),
                ),
            ),
          ),
          ),
        )
    );
  }
}