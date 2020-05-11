import 'package:paracelos/src/models/image_model.dart';

class Noticias {

  List<Noticia> items = new List();

  Noticias();

  Noticias.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final noticia = new Noticia.fromJsonMap(item);
      items.add( noticia );
    }

  }

}

class Noticia {
  String status;
  String titulo;
  String fecha;
  String contenido;
  Image imagen;

  Noticia({
    this.status,
    this.titulo,
    this.fecha,
    this.contenido,
    this.imagen,
  });

  Noticia.fromJsonMap( Map<String, dynamic> json ) {

    status        = json['status'];
    titulo        = json['titulo'];
    fecha         = json['fecha'];
    contenido     = json['contenido'];
    imagen        = Image.fromJsonMap(json['imagen']['data']);

  }
}