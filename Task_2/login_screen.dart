import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
class LoginScreen extends StatelessWidget {

  LoginScreen({Key? key}) : super(key: key);
  bool _obsureText = true;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDA4C2D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
           // Icon(Icons.movie),
            Image(
              height: 150.0,
                image: AssetImage('assets/images/login_image.png')),
            Text(
          'Login',
          style: TextStyle(
          fontSize: 30.0,
          fontWeight:FontWeight.bold,
    ),
    ),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder() ,
                prefixIcon: Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              // onFieldSubmitted: (value){
              //   print('email is $value');
              // },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType:TextInputType.visiblePassword,
              obscureText: _obsureText,
              controller:passwordController ,
              onFieldSubmitted: (value){
                print('password is $value');
              },
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder() ,
                prefixIcon: Icon(Icons.lock_open),
                suffixIcon: GestureDetector(
                  onTap: (){
                    _obsureText = !_obsureText;
                  },
                 child: _obsureText ? Icon(Icons.visibility):Icon(Icons.visibility_off)

                )

              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xffDA4C2D)
              ),
              child: MaterialButton(
                  onPressed:(){
                 // print("email is $emailController");
                 // print("password is $passwordController");
              },
                  child: Text('Login',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),
                  )
              ),
            )

          ],
    ),
      ),
    );
  }
}
