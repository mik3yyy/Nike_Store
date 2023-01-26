import 'package:flutter/material.dart';
import 'package:nike_store/main%20screens/Customer%20main%20screens/display_screen.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../provider/main_provider.dart';

class Shoes extends StatefulWidget {
  const Shoes({Key? key}) : super(key: key);

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Shoes',
                style:TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 18

                ),

              ),
              TextButton(onPressed: (){}, child: Text('See all')),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10

            ),


            itemBuilder: (context,index){
              return Container(
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
              );
            },
          ),
        ),
      ],
    );
  }
}
