import 'package:flutter/material.dart';
import 'package:flutter_practice/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('asset/testpic.jpeg',
                  height: 50,
                  width: 300,),
                  SizedBox(
                    height: 20,
                  ),
                  // Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Ffacebook-logo&psig=AOvVaw1rEfEaF4it8wX_7wmc-PTO&ust=1746115338130000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJicudWQgI0DFQAAAAAdAAAAABAE'),
                  Text('Login with your phone and password'),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Phone Number'),
                            TextFormField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length <= 6) {
                                  return 'Password must be at least 6 characters';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                width: 300,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if(_formKey.currentState!.validate()){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Login Successful')),
                                        );
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(name: phoneController.text,)));
                                      }
                                    }, child: Text('Login'))),
                          ]))
                ],
              ),
            )),
      ),
    );
  }
}