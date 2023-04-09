import 'package:flutter/material.dart';

import 'product_list_tile.dart';
import 'products.dart';
import 'products_detail_page.dart';

class MylistView extends StatefulWidget {
  final String title;
  // final Products products;
  const MylistView({required this.title, super.key});

  @override
  State<MylistView> createState() => _MylistViewState();
}

class _MylistViewState extends State<MylistView> {
  final List<Products> products = [
    Products(
      title: 'Burger',
      price: 999.99,
      description: 'I Lub Zinger Burger',
      imageAssetPath: 'assets/images/burger.jpg',
    ),
    Products(
      title: 'Pizza',
      price: 2499.99,
      description: 'Nawabi Pizza is so spicy',
      imageAssetPath: 'assets/images/pizza.jpg',
    ),
    Products(
      title: 'Pasta',
      price: 1199.99,
      description: 'Saim like Pasta',
      imageAssetPath: 'assets/images/pasta.jpg',
    ),
    Products(
      title: 'Fruit Chatt',
      price: 299.99,
      description: 'Fruit Chatt is good food for old people',
      imageAssetPath: 'assets/images/fruit_chat.jpg',
    ),
    Products(
      title: 'Shwarma',
      price: 149.99,
      description:
          'Majority Students take Shwarma at mid night when they are working on a project',
      imageAssetPath: 'assets/images/shwarma.jpg',
    ),
    Products(
      title: 'Microni',
      price: 1000.00,
      description: 'Mummy Daddy Bchy eat microni hahahaha',
      imageAssetPath: 'assets/images/microni.jpg',
    ),
    Products(
      title: 'Nuggets',
      price: 999.99,
      description: 'Children eat nuggets',
      imageAssetPath: 'assets/images/nuggets.jpg',
    ),
    Products(
      title: 'Samosy',
      price: 99.99,
      description: 'Maximum youngester take samosy',
      imageAssetPath: 'assets/images/samosy.jpg',
    ),
    Products(
      title: 'Chicken Piece',
      price: 750.00,
      description: 'I don\'t like chicken piece',
      imageAssetPath: 'assets/images/chicken_piece.jpg',
    ),
    Products(
      title: 'Zinger Burger',
      price: 999.99,
      description: 'I Lub Zinger Burger',
      imageAssetPath: 'assets/images/burger.jpg',
    ),
    Products(
      title: 'Nawabi Pizza',
      price: 2499.99,
      description: 'Nawabi Pizza is so spicy',
      imageAssetPath: 'assets/images/pizza.jpg',
    ),
    Products(
      title: 'Italian Pasta',
      price: 1199.99,
      description: 'Saim like Pasta',
      imageAssetPath: 'assets/images/pasta.jpg',
    ),
    Products(
      title: 'Kashmiri Fruit Chatt',
      price: 299.99,
      description: 'Fruit Chatt is good food for old people',
      imageAssetPath: 'assets/images/fruit_chat.jpg',
    ),
    Products(
      title: 'Punjabi Shwarma',
      price: 149.99,
      description:
          'Majority Students take Shwarma at mid night when they are working on a project',
      imageAssetPath: 'assets/images/shwarma.jpg',
    ),
    Products(
      title: 'Fish Microni',
      price: 1000.00,
      description: 'Mummy Daddy Bchy eat microni hahahaha',
      imageAssetPath: 'assets/images/microni.jpg',
    ),
    Products(
      title: 'Nugets',
      price: 999.99,
      description: 'Children eat nuggets',
      imageAssetPath: 'assets/images/nuggets.jpg',
    ),
    Products(
      title: 'Fresh Samosy',
      price: 99.99,
      description: 'Maximum youngester take samosy',
      imageAssetPath: 'assets/images/samosy.jpg',
    ),
    Products(
      title: 'Desi Chicken Piece',
      price: 750.00,
      description: 'I don\'t like chicken piece',
      imageAssetPath: 'assets/images/chicken_piece.jpg',
    ),
    Products(
      title: 'Tower Burger',
      price: 999.99,
      description: 'I Lub Zinger Burger',
      imageAssetPath: 'assets/images/burger.jpg',
    ),
    Products(
      title: 'Mughlai Pizza',
      price: 2499.99,
      description: 'Nawabi Pizza is so spicy',
      imageAssetPath: 'assets/images/pizza.jpg',
    ),
    Products(
      title: 'Chinese Pasta',
      price: 1199.99,
      description: 'Saim like Pasta',
      imageAssetPath: 'assets/images/pasta.jpg',
    ),
    Products(
      title: 'Fruit Chat',
      price: 299.99,
      description: 'Fruit Chatt is good food for old people',
      imageAssetPath: 'assets/images/fruit_chat.jpg',
    ),
    Products(
      title: 'Shwarmaa',
      price: 149.99,
      description:
          'Majority Students take Shwarma at mid night when they are working on a project',
      imageAssetPath: 'assets/images/shwarma.jpg',
    ),
    Products(
      title: 'Micronii',
      price: 1000.00,
      description: 'Mummy Daddy Bchy eat microni hahahaha',
      imageAssetPath: 'assets/images/microni.jpg',
    ),
    Products(
      title: 'Nuggetss',
      price: 999.99,
      description: 'Children eat nuggets',
      imageAssetPath: 'assets/images/nuggets.jpg',
    ),
    Products(
      title: 'Samosyy',
      price: 99.99,
      description: 'Maximum youngester take samosy',
      imageAssetPath: 'assets/images/samosy.jpg',
    ),
    Products(
      title: 'Chicken Pieces',
      price: 750.00,
      description: 'I don\'t like chicken piece',
      imageAssetPath: 'assets/images/chicken_piece.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: zeroAnimation(),
    );
  }

  Widget zeroAnimation() {
    return Center(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
              tag: products[index].title,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  products[index].imageAssetPath,
                ),
              ),
            ),
            title: Text(products[index].title),
            subtitle: Text(products[index].description),
            trailing: Text('${products[index].price}'),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      ProductsDetailPage(
                    products: products[index],
                  ),
                  transitionDuration: const Duration(seconds: 3),
                  reverseTransitionDuration: const Duration(seconds: 2),
                ),
              );
            },
            // onTap: () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return ProductsDetailPage(
            //           products: products[index],
            //         );
            //       },
            //     ),
            //   );
            // },
          );
        },
      ),
    );
  }
}
