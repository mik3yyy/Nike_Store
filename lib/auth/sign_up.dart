import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool visible= false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 30,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF7F7F9),
              radius: 30,
              child: Icon(Icons.chevron_left,size: 30,color: Colors.black,),
            ),
          ),
        ),
        leadingWidth: 70,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const     Text('Register Account',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 30
              ),
            ),
            const      SizedBox(
              width: 250,
              child: Text('Fill your details or continue with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const   SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('Your Name',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20,
                            fontWeight: FontWeight.w100
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  TextFormField(

                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'xxxxxxxxxx',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,

                      ),
                      fillColor: Color(0xFFF7F7F9),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0,color:  Color(0xFFF7F7F9)),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Email Address',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20,
                            fontWeight: FontWeight.w100
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  TextFormField(

                    style:const TextStyle(
                      // color: Colors.pink,

                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'xyz@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,

                      ),
                      fillColor: Color(0xFFF7F7F9),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0,color:  Color(0xFFF7F7F9)),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Password',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20,
                            fontWeight: FontWeight.w100
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  TextFormField(

                    style:const TextStyle(
                      // color: Colors.pink,

                    ),
                    obscureText: visible,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(

                      hintText: '*********',
                      suffixIcon: IconButton(
                        icon:visible==false? Icon(Icons.visibility): Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            visible=!visible;

                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,

                      ),
                      fillColor: Color(0xFFF7F7F9),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0,color:  Color(0xFFF7F7F9)),
                      ),

                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    onPressed: (){
                      // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: SignIn()));
                    },
                    padding: EdgeInsets.zero,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF0D6EFD),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway'
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: (){
                      // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: SignIn()));
                    },
                    padding: EdgeInsets.zero,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F7F9),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Image.asset('assets/images/welcome_screen/prop14.png'),
                      ),
                    ),
                  ),

                  SizedBox(height: 50,),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child:const Text.rich(
                        TextSpan(
                            text: 'Already Have an Account?',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.black
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: ' Log in',
                                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                              )
                            ]
                        )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );;
  }
}
