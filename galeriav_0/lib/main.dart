import 'package:flutter/material.dart';


const _backgroundColor = Color(0xFFF6F5F2);
class GroceryStoreHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          _AppBarGrosery(),
          Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    height:size.height-kTextTabBarHeight ,
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}

class _AppBarGrosery extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: kToolbarHeight,
      child: Row(
        children: [
          BackButton(
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Text(
                "Tienda sena",
                style: TextStyle(
                  color: Colors.black,
                ),
              )
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: ()=> null,
          )
        ],
      ),
    );
  }
}
