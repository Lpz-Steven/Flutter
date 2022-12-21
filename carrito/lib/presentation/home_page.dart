import 'package:flutter/material.dart';
import 'shopping_cart.dart' show Carrito;

import 'lista_productos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key : key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ListaProductos> _productosModel = <ListaProductos>[];

  final List<ListaProductos> _listaCarro = <ListaProductos>[];



  @override
  void initState() {

    super.initState();
    _productos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Productos'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 8.0),
              child: GestureDetector(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    const Icon(
                      Icons.shopping_cart,
                      size: 38,
                    ),
                    if (_listaCarro.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: Text(
                            _listaCarro.length.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                onTap: () {
                  if (_listaCarro.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Carrito(_listaCarro),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          elevation: 0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('images/gato.jpg'),fit: BoxFit.fill),

                  ),
                ),
              ),
              const ListTile( //menu item of Drawer
                leading: Icon(Icons.home,color: Colors.white),
                title: Text(
                    'PAGINA PRINCIPAL',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
              const ListTile(
                leading: Icon(Icons.account_circle, color: Colors.white,),
                title: Text('PERFIL',
                style: TextStyle(
                  color: Colors.white,),
              ),
              ),
              const ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
                title: Text('CONFIGURACION',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
              const ListTile(
                leading: Icon(Icons.contact_phone, color: Colors.white,),
                title: Text(
                  'CONTACTOS',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )

            ],
          ),
        ),
        body: ListView.builder(

          itemCount: _productosModel.length,
          itemBuilder: (context, index) {
            var item = _productosModel[index];
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: Image(
                        image: NetworkImage(
                            _productosModel[index].imageURL.toString()
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8
                                ),
                                child: Text(
                                  _productosModel[index].nombre.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8
                                ),
                                child:
                                Text(_productosModel[index].precio.toString()),
                              ),
                            ],
                          ),
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_listaCarro.contains(item)) {
                              _listaCarro.add(item);
                            } else {
                              _listaCarro.remove(item);
                            }
                          });
                        },
                        icon: (!_listaCarro.contains(item))
                            ? const Icon(Icons.shopping_cart)
                            : const Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.green,
                        ))
                  ],
                ),
              ),
            );
          },

        ),

    );
  }
  void _productos() {
    var list = <ListaProductos> [
      ListaProductos(
          nombre: 'Gorro lana mujer',
          precio: 40000,
          imageURL: 'images/pic1.jpg',
          id: 1,
          isAdd: false, iva: 0.19, titulo: '', descripcion: ''
      ),
      ListaProductos(
          nombre: 'Gorro lana hombre',
          precio: 50000,
          imageURL: 'images/pic3.jpg',
          id: 2,
          isAdd: false, iva: 0.19, titulo: '', descripcion: ''
      ),
      ListaProductos(
          nombre: 'Gorro hilo mujer',
          precio: 45000,
          imageURL: 'images/pic2.jpg',
          id: 3,
          isAdd: false, iva: 0.19, titulo: '', descripcion: ''
      ),
      ListaProductos(
          nombre: 'Gorro Invierno mujer',
          precio: 70000,
          imageURL: 'images/pic4.jpg',
          id: 4,
          isAdd: false, iva: 0.19, titulo: '', descripcion: ''
      ),
      ListaProductos(
          nombre: 'Gorro invierno hombre',
          precio: 72000,
          imageURL: 'images/pic5.jpg',
          id: 5,
          isAdd: false, iva: 0.19, titulo: '', descripcion: ''
      ),
    ];
    setState(() {
      _productosModel = list;
    });
  }
}