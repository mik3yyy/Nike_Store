
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_badged/flutter_badge.dart';
import 'package:nike_store/main%20screens/Customer%20main%20screens/categories/shoes_category.dart';

import '../../constants.dart';


class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  List category=[
    'All Shoes',
    'Outdoor',
    'Tennis',
    'Running'
  ];

  List _category=[

    Shoes(),
    Center(child: Text('No products here'),),
    Center(child: Text('No products here'),),
    Center(child: Text('No products here'),),
  ];




  bool clicked =false;
  int currentIndex=0;

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();


  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Color(0xFF0D6EFD),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(

        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width*0.4,
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/flutter_logo.png',
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Profile'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.favorite),
                  title: Text('Favourites'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Styles.greyColor3,
        appBar: AppBar(
          backgroundColor: Styles.greyColor3,
          elevation: 0,
          title: Text('Explore',
            style: TextStyle(
                fontFamily: 'Raleway',
                color: Styles.blackColor,
                fontSize: 35,
                fontWeight: FontWeight.bold
            ),
          ),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {



                print(value.visible);
                return AnimatedSwitcher(

                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    color: Styles.blackColor,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          actions: [
            SizedBox(
              width: 70,
              child: Center(
                child: FlutterBadge(
                  itemCount: 0,
                  hideZeroCount: false,
                  icon: CircleAvatar(
                    backgroundColor: Styles.whiteColor,
                    child: Center(
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.shopping_bag_outlined,color: Styles.blackColor,),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0,),
                      child: MaterialButton(
                        elevation: 2,
                        padding: EdgeInsets.zero,
                        onPressed: (){},

                        child: Container(
                          width: MediaQuery.of(context).size.width*0.75,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Styles.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color:  Colors.grey[300]!,
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(
                                    1.0, // Move to right 7.0 horizontally
                                    3.0, // Move to bottom 8.0 Vertically
                                  )
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 50,

                                    child: Center(child: Icon(Icons.search))),
                                SizedBox(width: 5,),
                                Text('Looking for shoes')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Center(
                        child: IconButton(
                          onPressed: (){},
                          icon: RotatedBox(quarterTurns: -1,
                              child: Icon(Icons.settings_input_component)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text('Select Category',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20
                ),

                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap:() {
                            setState(() {
                              currentIndex=index;
                            });

                          },
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:index==currentIndex?Styles.blueColor: Styles.whiteColor,

                            ),
                            child: Center(
                              child: Text('${category[index]}',
                                style: TextStyle(
                                  color: index==currentIndex?Styles.whiteColor: Styles.blackColor
                                ),

                              ),
                            ),

                          ),
                        );
                      },
                    separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                        },
                    itemCount: 4,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.4,
                  child: _category[currentIndex],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New Arrivals',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20
                      ),),
                      TextButton(
                          onPressed: (){},
                          child: Text('See all',

                          ),
                      )

                    ],

                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [

                        Positioned(
                          top:20,
                          child: Container(
                              width: 600,
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                          ),


                        ),
                        Positioned(
                            top: 0,
                            right: 20,
                            child: Image.asset('assets/images/shoes/shoe_5.png')
                        ),
                        Positioned(
                            top: 20,
                            right: 100,
                            child: Image.asset('assets/images/main_screens/prop2.png')
                        ),
                        Positioned(
                            top: 50,
                            left: 20,
                            child: Image.asset('assets/images/main_screens/prop1.png')
                        ),
                        Positioned(
                            top: 25,
                            left: 100,
                            child: Image.asset('assets/images/main_screens/prop1.png')
                        ),
                        Positioned(
                            top: 40,
                            left: 50,
                            child: Image.asset('assets/images/main_screens/prop3.png')
                        ),
                        Positioned(
                            top: 50,
                            left: 180,
                            child: Image.asset('assets/images/main_screens/prop1.png')
                        ),
                      ],
                    ),
                  ),
                )



              ],
            ),
          ),
        ),

      ),
    );
  }
}
