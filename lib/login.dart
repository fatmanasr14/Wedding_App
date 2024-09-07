import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weddingapp/%D8%A7home.dart';
import 'package:weddingapp/forgetpassword.dart';
import 'package:weddingapp/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/back.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(159, 152, 117, 213),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(100, 50), //width
                        maximumSize: Size(200, double.infinity),
                      ),
                      onPressed: () {
                        // Implement login logic here
                        String username = _usernameController.text.trim();
                        String password = _passwordController.text.trim();
                        // Example: Check if username and password are correct
                        if (username == 'admin' && password == 'password') {
                          // Navigate to next screen or home screen
                         Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Error'),
                              content: Text('Invalid username or password.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                             Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>forgetpasswordpage()));
                          },
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(
                                color: Color.fromARGB(159, 152, 117, 213)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Dont have account?",
                            style: TextStyle(
                              fontSize: 19,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  Color.fromARGB(159, 152, 117, 213),
                              color: Color.fromARGB(255, 15, 20, 15),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(159, 152, 117, 213)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
