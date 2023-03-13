import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'formal',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'informal',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'jeans',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'shoe',
          ),
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'accessiories',
          )
          

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  
  Category({
    required this.image_location,
    required this.image_caption
});
  


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child:  InkWell(onTap: (){},
    child: Container(
      width: 80.0,
      child: ListTile(
        title: Image.asset(image_location, width: 40.0, height: 40.0,),
        subtitle: Container(alignment: Alignment.topCenter,
            child: Text(image_caption)),
      ),
    ),
    ) ,
    );
  }
}

