import 'package:flutter/material.dart';
import 'package:dvm_app/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer Women",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 1200,
      "price": 850,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 2400,
      "price": 1900,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 2400,
      "price": 1999,
    },
    {
      "name": "Pencil Heels",
      "picture": "images/products/hills1.jpeg",
      "old_price": 1299,
      "price": 799,
    },
    {
      "name": "Belle Heels",
      "picture": "images/products/hills2.jpeg",
      "old_price": 1499,
      "price": 999,
    },
    {
      "name": "Comfy Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 1099,
      "price": 999,
    },
    {
      "name": "Grey Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 1099,
      "price": 999,
    },
    {
      "name": "Canvas Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 3199,
      "price": 1799,
    },
    {
      "name": "Floral Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 899,
      "price": 699,
    },
    {
      "name": "Mini Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 999,
      "price": 749,
    }

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(
                  MaterialPageRoute(
                      //here we are passing the values of the product to product details page
                      builder: (context) => new ProductDetails(
                    product_details_name: prod_name,
                    product_details_new_price: prod_price,
                    product_details_old_price: prod_old_price,
                    product_details_picture: prod_picture,
                  ))),


              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(children: [
                      Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),),
                      
                      Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                    ],),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
