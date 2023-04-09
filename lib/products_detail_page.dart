import 'package:flutter/material.dart';

import 'products.dart';

class ProductsDetailPage extends StatelessWidget {
  final Products products;
  const ProductsDetailPage({required this.products, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Detail Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: productDetailPage(),
    );
  }

  Widget productDetailPage() {
    return Center(
      child: Column(
        children: [
          Hero(
            tag: products.title,
            child: Expanded(
              flex: 3,
              child: Image.asset(
                products.imageAssetPath,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 15,
                    child: ListTile(
                      title: Text(
                        products.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 15,
                    child: ListTile(
                      title: Text(
                        products.description,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 15,
                    child: ListTile(
                      title: Text(
                        products.price.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
