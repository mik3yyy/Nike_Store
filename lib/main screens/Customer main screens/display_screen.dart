import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';

import '../../constants.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  late int shoe;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shoe = widget.index;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xFFF7F7F9) ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF7F7F9),
        title: Text('Sneaker Shop',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Text(Product.products[shoe]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 25

                      ),

                    ),
                  ),
                  Text('Men\'s Shoes'),
                  Text(Product.products[shoe]['price'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(

                    child: Center(
                      child: Image.asset('assets/images/shoes/shoe_${shoe+1}.png',
                      width: 300,
                        height: 300,
                        // scale:2,
                        fit:BoxFit.contain,
                      ),

                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Product.products.length,
                  itemBuilder: (context,index){
                  return Padding(

                    padding: const EdgeInsets.only(right: 20.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          shoe =index;
                        });
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayScreen(index: index)));
                      },
                      child: Container( 
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:  BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset('assets/images/shoes/shoe_${index+1}.png'),
                        ),
                      ),
                    ),
                  );
                }
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Text(Product.products[shoe]['description'],
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),



          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        color: Color(0xFFF7F7F9),
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Row(
          children: [
            Expanded(child: Center(child: CircleAvatar(
              backgroundColor: Styles.whiteColor,
              child: Center(
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border,color: Styles.blackColor,),
                ),
              ),
            ),),),
            Expanded(

                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Styles.blueColor,
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        Text(' Add To Cart',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),

             )
            )

          ],
        ),
      ),
    );
  }
}
