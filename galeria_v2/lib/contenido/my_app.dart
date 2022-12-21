import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showGrid = true; //set to false to show ListView

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeria con Gridview y ListView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Galeria con Gridview y ListView'),
        ),
        body: Center(child: showGrid ? _buildGrid() : _buildList()),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green[900],
                ),
                  child: Container(
                    child: Column(
                      children: const [
                        Text(
                          'Sena CBA',
                           style: TextStyle(
                            color: Colors.white,
                          fontSize: 30,
                        ) ,  
                        ),
                        Text(
                          'Bienvenidos',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              Column(
                children: const [
                  ListTile(
                    title: Text("Inicio"),
                    leading: Icon(Icons.home),
                  ),
                  Divider(
                    height: 0.2,
                  ),
                  ListTile(
                    title: Text("Tiendas"),
                    leading: Icon(Icons.storefront)
                  ),
                  ListTile(
                    title: Text("Promociones"),
                    leading: Icon(Icons.shopping_cart),
                  ),
                  ListTile(
                    title: Text("Categorias"),
                    leading: Icon(Icons.category),
                  ),
                  Divider(
                    height: 0.2,
                  ),
                  ListTile(
                    title: Text("email"),
                    leading: Icon(Icons.mail),
                  ),
                  ListTile(
                    title: Text('Soporte'),
                    leading: Icon(Icons.contact_phone_sharp)
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 8.0,
          child: const Icon(Icons.add),
          onPressed: (){
            print('Soy un boton de acción flotante');
          },
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin:10,
          child:Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: const Icon (Icons.menu),onPressed:(){},),
              IconButton(icon: const Icon (Icons.search),onPressed:(){},),
            ],
    ) ,
    ),

      ),
    );
  }

  //#inicia_construcción_con_GridView
  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 450,
      childAspectRatio: (1.5),
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30));

  List<Container> _buildGridTileList(int count) =>
      List.generate(
        count, (i) => Container(child: Image.asset('images/pic$i.jpg'))
      );

  Widget _buildList(){
    return ListView(
      children: [
        _Tile ('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _Tile ('The Castro Theater', '429 Castro St', Icons.theaters),
        _Tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _Tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _Tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _Tile('AMC Metreon 16', '135 4th #3000', Icons.theaters),
        const Divider(),
        _Tile('K\'s Kitchen', '757 monterey Bld',  Icons.restaurant),
        _Tile('Emmy\'s  Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _Tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _Tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }
  ListTile _Tile(String title, String subtitle, IconData icon){
    return ListTile(
      title: Text(title,
      style:  const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
      );
    }

    }