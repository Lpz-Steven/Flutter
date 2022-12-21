import 'package:flutter/material.dart';
import 'lista_productos.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;

  const Carrito(this._cart, {super.key});

  @override
  _CarritoState createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);

  final List<ListaProductos> _cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: const Text(
            'Detalles del Producto',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _cart.length;
              });
            },
            color: Colors.white,
          ),
        ),
        body: GestureDetector(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _cart.length,
                  itemBuilder: (context, index) {
                    _cart[index].valortotal =
                        _cart[index].cont * _cart[index].precio;
                    _cart[index].IVA =
                        _cart[index].valortotal * _cart[index].iva;
                    _cart[index].TOT =
                        _cart[index].valortotal + _cart[index].IVA;

                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 9),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image(
                                  image: NetworkImage(
                                      _cart[index].imageURL.toString()),
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
                                          left: 8, right: 8),
                                      child: Center(
                                        child: Text(
                                          _cart[index].nombre.toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              if (_cart[index].id == 1) ...[
                                _cart[index].cont != 0
                                    ? IconButton(
                                        icon: const Icon(Icons.remove,
                                            color: Colors.deepOrangeAccent),
                                        onPressed: () =>
                                            setState(() => _cart[index].cont--),
                                      )
                                    : Container(),
                                Text(_cart[index].cont.toString()),
                                IconButton(
                                    icon: const Icon(Icons.add,
                                        color: Colors.deepOrangeAccent),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont++)),
                                Column(
                                  children: [
                                    Text('Precio: \$${_cart[index].valortotal}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  ],
                                ),
                              ] else if (_cart[index].id == 2) ...[
                                _cart[index].cont != 0
                                    ? IconButton(
                                        icon: const Icon(Icons.remove,
                                            color: Colors.deepOrangeAccent),
                                        onPressed: () =>
                                            setState(() => _cart[index].cont--),
                                      )
                                    : Container(),
                                Text(_cart[index].cont.toString()),
                                IconButton(
                                    icon: const Icon(Icons.add,
                                        color: Colors.deepOrangeAccent),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont++)),
                                Column(
                                  children: [
                                    Text('Precio: \$${_cart[index].valortotal}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  ],
                                ),
                              ] else if (_cart[index].id == 3) ...[
                                _cart[index].cont != 0
                                    ? IconButton(
                                        icon: const Icon(Icons.remove,
                                            color: Colors.deepOrangeAccent),
                                        onPressed: () =>
                                            setState(() => _cart[index].cont--),
                                      )
                                    : Container(),
                                Text(_cart[index].cont.toString()),
                                IconButton(
                                    icon: const Icon(Icons.add,
                                        color: Colors.deepOrangeAccent),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont++)),
                                Column(
                                  children: [
                                    Text(
                                      'Precio: \$${_cart[index].valortotal}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                              ] else if (_cart[index].id == 4) ...[
                                _cart[index].cont != 0
                                    ? IconButton(
                                        icon: const Icon(Icons.remove,
                                            color: Colors.deepOrangeAccent),
                                        onPressed: () =>
                                            setState(() => _cart[index].cont--),
                                      )
                                    : Container(),
                                Text(_cart[index].cont.toString()),
                                IconButton(
                                    icon: const Icon(Icons.add,
                                        color: Colors.deepOrangeAccent),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont++)),
                                Column(
                                  children: [
                                    Text('Precio: \$${_cart[index].valortotal}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  ],
                                ),
                              ] else if (_cart[index].id == 5) ...[
                                _cart[index].cont != 0
                                    ? IconButton(
                                        icon: const Icon(Icons.remove,
                                            color: Colors.deepOrangeAccent),
                                        onPressed: () =>
                                            setState(() => _cart[index].cont--),
                                      )
                                    : Container(),
                                Text(_cart[index].cont.toString()),
                                IconButton(
                                    icon: const Icon(Icons.add,
                                        color: Colors.deepOrangeAccent),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont++)),
                                Column(
                                  children: [
                                    Text('Precio: \$${_cart[index].valortotal}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  ],
                                ),
                              ]
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Text(
                  'Total: \$${ValorTotal(_cart)}',
                  style: TextStyle(color: Colors.white),
                ),
                Text('IVA: \$${iva(_cart)}',
                    style: TextStyle(color: Colors.white)),
                Text('Total con IVA: \$${tot(_cart)}',
                    style: TextStyle(color: Colors.white))
              ],
            ),
          ),
        ));
  }

  String ValorTotal(List<ListaProductos> _cart) {
    double total = 0.0;

    for (int i = 0; i < _cart.length; i++) {
      total = total + _cart[i].precio * _cart[i].cont;
    }
    return total.toString();
  }

  String iva(List<ListaProductos> _cart) {
    double total = 0.0;
    double IVA = 0.19;
    double ToVA = 0.0;

    for (int i = 0; i < _cart.length; i++) {
      total = total + _cart[i].precio * _cart[i].cont;
    }
    ToVA = total * IVA;
    return ToVA.toString();
  }

  String tot(List<ListaProductos> _cart) {
    double total = 0.0;
    double IVA = 0.19;
    double ToVA = 0.0;
    double TOT = 0.0;

    for (int i = 0; i < _cart.length; i++) {
      total = total + _cart[i].precio * _cart[i].cont;
    }
    ToVA = total * IVA;
    TOT = total + ToVA;
    return TOT.toString();
  }
}
