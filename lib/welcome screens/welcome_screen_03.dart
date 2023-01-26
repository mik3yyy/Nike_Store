import 'package:flutter/material.dart';
import 'package:nike_store/auth/sign_in.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen3 extends StatefulWidget {
  const WelcomeScreen3({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen3> createState() => _WelcomeScreen3State();
}

class _WelcomeScreen3State extends State<WelcomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1483C2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1483C2),
        leading: SizedBox(),
      ),
      body: Column(
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.8,
            child: Stack(
              children: [
                Positioned(
                  left: 40,
                  top: 60,
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/welcome_screen/prop2.png',fit: BoxFit.contain,),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 140,
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/welcome_screen/prop11.png',fit: BoxFit.contain,),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 25,
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset('assets/images/welcome_screen/prop10.png',),
                  ),
                ),
                Positioned(
                  left: 70,
                  bottom: 340,
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset('assets/images/welcome_screen/prop7.png',),
                  ),
                ),
                const Positioned(
                  left: 90,
                  top: 450,
                  child: SizedBox(
                    width: 250,
                    child: Text('You Have The Power To',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 430,
                  child: Image.asset('assets/images/welcome_screen/prop5.png'),
                ),
                const Positioned(
                  left: 70,
                  top: 530,
                  child: SizedBox(
                    width: 300,
                    child: Text('There Are Many Beautiful And Attractive Plants To Your Room',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  bottom: 50,
                  child: Image.asset('assets/images/welcome_screen/prop12.png'),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: SignIn()));
            },
            padding: EdgeInsets.zero,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text('Next',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway'
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );;
  }
}
