import 'package:flutter/material.dart';

//my imports

import 'package:dvm_app/components/cart_products.dart';

class Cart extends StatefulWidget {

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: [
           IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),

        ],
      ),

      body: Cart_products(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\$230"),
            )),
            Expanded(child: MaterialButton(onPressed: (){},
            child: Text("Check out", style: TextStyle(color: Colors.white),),
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
