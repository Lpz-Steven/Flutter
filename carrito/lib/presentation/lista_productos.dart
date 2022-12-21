
class ListaProductos {
  final String nombre;
  late final int precio;
  final String imageURL;
  final int id;
  final bool isAdd;
  late final double iva;
  late final String titulo;
  late final String descripcion;
  int cont = 0;
  int valortotal = 0;
  int Total = 0;
  double IVA = 0;
  double TOT = 0;



  ListaProductos({
    required this.nombre,
    required this.precio,
    required this.imageURL,
    required this.id,
    required this.isAdd,
    required this.iva,
    required this.titulo,
    required this.descripcion,


  });
}
