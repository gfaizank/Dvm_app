import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//my own imports
import 'package:dvm_app/components/horizontal_listview.dart';
import 'package:dvm_app/components/products.dart';
import 'package:dvm_app/pages/cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300,
      width: 300,
      child: CarouselSlider(

          items: [
            Image(image: AssetImage('images/c1.jpg')),
            Image(image: AssetImage('images/m1.jpeg')),
            Image(image: AssetImage('images/m2.jpg')),
            Image(image: AssetImage('images/w1.jpeg')),
            Image(image: AssetImage('images/w3.jpeg'))
          ],
          options: CarouselOptions(
              height: 300,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000))),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Fashion Walkway'),
        actions: [
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Faizan Khan'),
              accountEmail: Text('faizan2017.fk@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About us'),
                leading: Icon(Icons.help),
              ),
            )
          ],
        ),
      ),

      body: new Column(children: [
        //image carousel begins here
        image_carousel,
        //padding widget
        new Padding(padding: const EdgeInsets.all(4.0),
          child: Container(alignment: Alignment.centerLeft ,child: Text('Categories')),),

        //Horizontal list view begins here
        HorizontalList(),

        //padding widget
        new Padding(padding: EdgeInsets.all(8.0),
          child: Container(alignment: Alignment.centerLeft,
              child: Text('Recent Products')),),

        Flexible(

          child: Products(),
        )

      ],),
    );
  }
}