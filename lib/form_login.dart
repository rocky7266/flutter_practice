import 'package:flutter/material.dart';
import 'package:flutter_practice/home.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  Timer? _hidePasswordTimer;
  @override
  void dispose(){
    _hidePasswordTimer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Login Page',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('asset/testpic.jpeg',
              // height: 50,
              // width: 300,),
              // SizedBox(
              //   height: 20,
              // ),
              // Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Ffacebook-logo&psig=AOvVaw1rEfEaF4it8wX_7wmc-PTO&ust=1746115338130000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJicudWQgI0DFQAAAAAdAAAAABAE'),
              Icon(Icons.facebook,
              color: Colors.blueAccent,
              size: 100,),
              SizedBox(height: 20,),
              Text('Login with your phone and password',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'serif'
              ),
              ),
              SizedBox(height: 20,),
              Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone Number',
                            style: TextStyle(
                              fontFamily: 'serif'
                            ),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                prefixText: '+88',
                                prefixStyle: TextStyle(color: Colors.black,
                                fontSize: 20),
                                hintText:('Enter your phone number'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                // enabledBorder: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(20),
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.cyan, width: 3),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "Please enter your phone number";
                                }
                                final trimmed = value.trim();
                                final pattern = RegExp(r'^(?:\+?88)?01[3-9]\d{8}$');
                                if (!pattern.hasMatch(trimmed)) {
                                  return "Please enter a valid Bangladeshi phone number";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Password',
                              style: TextStyle(
                                fontFamily: 'serif'
                              ),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              controller: passwordController,
                              onChanged: (value) {
                                _hidePasswordTimer?.cancel();
                                setState(() {
                                  _isObscure = false;
                                });
                                _hidePasswordTimer = Timer(Duration(seconds: 1), () {
                                  setState(() {
                                    _isObscure = true;
                                  });
                                });
                              },
                              obscureText: _isObscure,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ),
                                hintText: 'Enter your password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color:Colors.cyan,
                                  width: 3),
                                )
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length <= 5) {
                                  return 'Password must be at least 6 characters';
                                }
                                else if(value !='888356'){
                                  return 'Wrong Password';
                                }
                                else {
                                  return null;
                                }
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        SizedBox(
                            width: 300,
                            child: ElevatedButton(
                                onPressed: () {
                                  if(_formKey.currentState!.validate()){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Login Successful',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'serif'
                                      ),
                                      ),
                                        backgroundColor: Colors.green,
                                      ),
                                    );
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(name: phoneController.text,)));
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  backgroundColor: Colors.blue[300],
                                  foregroundColor: Colors.white
                                ),
                                child: Text('Login',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'serif'
                                ),
                                ),
                            )
                        ),
                      ]
                  )
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}