import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obsureText = true;
  var emailController = TextEditingController();
  var firstNAme = TextEditingController();
  var lastName = TextEditingController();
  var Gender = TextEditingController();

  var passwordController = TextEditingController();

  final items = ['male','female'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDA4C2D),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              children:[
                Image(
                    height: 120.0,
                    image: AssetImage('assets/images/login_image.png')),
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children :[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          border: OutlineInputBorder() ,
                        ),
                        keyboardType: TextInputType.text,
                        controller: firstNAme,
                       
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                      width: 5.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: OutlineInputBorder() ,
                        ),
                        keyboardType: TextInputType.text,
                        controller: lastName,

                      ),
                    ),
                  ]
                ),
                SizedBox(
                  height: 10.0,
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
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width-40,
                      child: TextFormField(
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
                            suffixIcon: InkWell(
                                onTap: (){
                                  setState(() {
                                    _obsureText = !_obsureText;
                                    print(_obsureText);
                                  });
                                },
                                child: _obsureText == true ? Icon(Icons.visibility) : Icon(Icons.visibility_off)

                            )

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder() ,
                  ),
                  keyboardType: TextInputType.text,
                  controller: Gender,
                  // onFieldSubmitted: (value){
                  //   print('email is $value');
                  // },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    border: OutlineInputBorder() ,
                  ),
                  keyboardType: TextInputType.datetime,
                  controller: Gender,
                  // onFieldSubmitted: (value){
                  //   print('email is $value');
                  // },
                ),
                SizedBox(
                  height: 20.0,
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
                      child: Text('Register',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      )
                  ),
                )

              ]
          ),
        ),
      ),
    );

  }
}
