import 'package:flutter/material.dart';
import 'package:nike_store/welcome%20screens/welcome_screen_03.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen2 extends StatefulWidget {
  const WelcomeScreen2({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen2> createState() => _WelcomeScreen2State();
}

class _WelcomeScreen2State extends State<WelcomeScreen2> {
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
                  right: 40,
                  top: 60,
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/welcome_screen/prop2.png',fit: BoxFit.contain,),
                  ),
                ),

                Positioned(
                  left: 40,
                  top: 60,
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/welcome_screen/prop1.png',fit: BoxFit.contain,),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 130,
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset('assets/images/welcome_screen/prop8.png',),
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
                  left: 60,
                  top: 450,
                  child: SizedBox(
                    width: 300,
                    child: Text('Let’s Start Journey With Nike',
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
                    child: Text('Smart, Gorgeous & Fashionable Collection Explore Now',
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
                  bottom: 100,
                  child: Image.asset('assets/images/welcome_screen/prop9.png'),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: WelcomeScreen3()));
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
    );
  }
}
