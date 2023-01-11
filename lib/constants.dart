
import 'dart:ui';

class Styles{
 static Color blueColor =Color(0xFF0D6EFD);
 static Color lightBlueColor = Color(0xFF1483C2);
 static Color orangeColor = Color(0xFFFf4c24);
 static Color blackColor = Color(0xFF2B2B2B);
 static Color greyColor = Color(0xFF6A6A6A);
 static Color greyColor2 = Color(0xFF707B81);
 static Color greyColor3 =  Color(0xFFF7F7F9);
 static Color whiteColor =  Color(0xFFffffff);

}
Map <String, String> shoe1={
 'id':'1',
 'name': 'Nike Jordan',
 'price': '\$302.00'
};

Map <String, String> shoe2={
 'id':'2',
 'name': 'Nike Air Max',
 'price': '\$302.00'
};
Map <String, String> shoe3={
 'id':'3',
 'name': 'Nike Club Max',
 'price': '\$302.00'
};
Map <String, String> shoe4={
 'id':'4',
 'name': 'Nike Air Max 270',
 'price': '\$302.00'
};
class Product{

 static List <Map> products=[
 shoe1,
 shoe2,
 shoe3,
 shoe4
];

}