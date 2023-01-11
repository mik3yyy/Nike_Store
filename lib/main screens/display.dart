import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';

import '../constants.dart';

class ShoeScreen extends StatefulWidget {
  const ShoeScreen({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<ShoeScreen> createState() => _ShoeScreenState();
}

class _ShoeScreenState extends State<ShoeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sneaker Shop'),
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

    );
  }
}
