import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');
  final int prod;

  final String product;


  ItemDetailsScreen({Key? key, required this.product, required this.prod}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                if (prod == 0)...[Text('Producto 0')]
                else if (prod == 1)...[Text('Producto 1')]
                else if (prod == 2)...[Text('Producto 2')]
                  else if (prod == 3)...[Text('Producto3')]
                    else if (prod == 4)...[Text('Producto 4')]
                      else if (prod == 5)...[Text('Producto 5')]
                        else if (prod == 6)...[Text('Producto 6')]
                          else if (prod == 7)...[Text('Producto 7')]
                            else if (prod == 8)...[Text('Producto 8')]
                              else if (prod == 9)...[Text('Producto 9')]
              ],
            ),
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/pic${prod + 1}.jpg'))
            ),
          ),
          Center(
            child: Column(
              children: [
                if (prod == 0)...[Text('Audifonos')]
                else if (prod == 1)...[Text('Audifonos')]
                else if (prod == 2)...[Text('Audifonos')]
                  else if (prod == 3)...[Text('Audifonos')]
                    else if (prod == 4)...[Text('Audifonos')]
                      else if (prod == 5)...[Text('Audifonos')]
                        else if (prod == 6)...[Text('Audifonos')]
                          else if (prod == 7)...[Text('Audifonos')]
                            else if (prod == 8)...[Text('Audifonos')]
                              else if (prod == 9)...[Text('Audifonos')]
              ],
            ),
          ),


        ],
      ),
    );
  }

}