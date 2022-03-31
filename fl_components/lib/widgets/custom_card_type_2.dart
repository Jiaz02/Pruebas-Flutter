import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //ponemos los bordes redondeados
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: AppTheme.primaryDark,
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            //cargamos la imagen de internet
            image: NetworkImage(imageUrl),
            //mientras carga la imagen ponemos el siguiente gif
            placeholder: const AssetImage('assets/jar-loading.gif'),
            //le decimos el ancho sea igual al tamño maximo disponible
            width: double.infinity,
            height: 230,
            //adaptamos la imagen a todo lo disponible
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
                //le damos un poquito de formato al texto
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                //indicamos el texto y si no esta pos na
                child: Text(name!))
        ],
      ),
    );
  }
}
