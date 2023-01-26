import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../provider/main_provider.dart';
import 'display_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F9),
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF7F7F9),
        title: Text('Sneaker Shop',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            // Navigator.pop(context);
          },
          child: SizedBox(
            height: 30,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(Icons.chevron_left,size: 30,color: Colors.black,),
            ),
          ),
        ),
        leadingWidth: 70,
        actions: [
          SizedBox(
            width: 70,
            child: Center(
              child: CircleAvatar(
                  backgroundColor: Styles.whiteColor,
                  child: Center(
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite_border,color: Styles.blackColor,),
                    ),
                  ),
                ),
              ),
            ),

        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                itemCount:  Provider.of<MainProvider>(context, listen: true).displayFavourite().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10

                ),


                itemBuilder: (context,index){
                  return Provider.of<MainProvider>(context, listen: true).indexIsFavourite(index)?
                  Container(
                    width: 170,
                    height: 100,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0,top: 6),
                            child: Provider.of<MainProvider>(context, listen: true).indexIsFavourite(index) == false ?Icon(Icons.favorite_border,):Icon(Icons.favorite,color: Colors.red,) ,
                          ),
                          onTap: (){

                            setState(() {

                              if(Provider.of<MainProvider>(context, listen: false).indexIsFavourite(index)){
                                Provider.of<MainProvider>(context, listen: false).removeFromFavourite(index);

                              }else {
                                Provider.of<MainProvider>(context, listen: false).addToFavorite(index);

                              }

                            });
                          },
                        ),
                        InkWell(

                          child: Center(
                            child: Container(
                              child: Image.asset('assets/images/shoes/shoe_${index+1}.png'),
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> DisplayScreen(index: index,)));


                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6, bottom: 3),
                          child: Text('BEST SELLER',
                            style: TextStyle(
                              color: Styles.blueColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6, bottom: 3),
                          child: Text(Product.products[index]['name'],
                            style: TextStyle(
                              color: Styles.blackColor,
                            ),
                          ),
                        ),
                        Container(

                          child: Stack(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(left: 6,),
                                child: Text(Product.products[index]['price'],
                                  style: TextStyle(
                                    color: Styles.blackColor,
                                  ),
                                ),
                              ),
                              Positioned(

                                child: Container(
                                  child: Center(
                                    child: Icon(Icons.add,color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Styles.blueColor,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(10)
                                      )
                                  ),
                                  height: 30,
                                  width: 30,
                                ),
                                bottom: 0,
                                right: 0,
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                        )
                      ],
                    ),
                  ):

                      Container()
                  ;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
