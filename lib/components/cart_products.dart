import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart=[
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 2400,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: Products_on_the_cart.length ,
        itemBuilder: (context, index){
      return Single_cart_product(cart_prod_name:Products_on_the_cart[index]["name"],
        cart_prod_color: Products_on_the_cart[index]["color"] ,
        cart_prod_qty: Products_on_the_cart[index]["quantity"],
        cart_prod_size: Products_on_the_cart[index]["size"],
        cart_prod_price: Products_on_the_cart[index]["price"],
        cart_prod_picture: Products_on_the_cart[index]["picture"],

      );
    });
  }
}

class Single_cart_product extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
   this.cart_prod_name,
   this.cart_prod_picture,
   this.cart_prod_price,
   this.cart_prod_size,
   this.cart_prod_color,
   this.cart_prod_qty
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======leading section=======
        leading: Image.asset(cart_prod_picture, width: 80.0, height: 80.0,),


        // =======title section=======
        title: Text(cart_prod_name),

        // =======subtitle section======
        subtitle: Column(children: [
          // Row inside the column======
          Row(children: [

            // this section is for the size of the product
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text("Size:"),
            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(cart_prod_size, style: TextStyle(color: Colors.red),),
            ),
// this section is for the color of the product
            Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
              child: Text("Color:"),),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(cart_prod_color, style: TextStyle(color: Colors.red)),
            ),
          ],),
          // ======= This is for product price===
          Container(
            alignment: Alignment.topLeft,
            child: Text("\$${cart_prod_price}", style: TextStyle(fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: Colors.red),),
          ),
        ],),
        trailing: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up), ),
              Text("$cart_prod_qty"),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down), )
            ],
          ),
        ),
      ),
    );
  }
}



