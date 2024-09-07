import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weddingapp/login.dart';

class forgetpasswordpage extends StatefulWidget {
  const forgetpasswordpage({super.key});

  @override
  State<forgetpasswordpage> createState() => _forgetpasswordpageState();
}

class _forgetpasswordpageState extends State<forgetpasswordpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          backgroundColor: Color.fromARGB(159, 152, 117, 213),
          title: Text("Forget Password",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.w500 ),),
          centerTitle: true,
          elevation: 0.0,
          
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/login.png'),
                          fit: BoxFit.cover,
                          
                         // colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop
                          
                     )   )),
                
                //  Text('Forget Password ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeInUp(
                          duration: Duration(milliseconds: 1800),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text('E-Mail'),

                                    hintText: "Your Email",
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    //hintStyle: TextStyle(color: Colors.grey[700])
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 1900),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(159, 152, 117, 213),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(100, 50), //width
                              maximumSize: Size(200, double.infinity),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Send Code",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 2000),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: const Text(
                            "Back to login",
                            style: TextStyle(
                              fontSize: 19,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              color: Color.fromARGB(255, 12, 14, 12),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
