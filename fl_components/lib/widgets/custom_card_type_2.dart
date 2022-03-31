import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

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
          const FadeInImage(
            //cargamos la imagen de internet
            image: NetworkImage(
                'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg'),
            //mientras carga la imagen ponemos el siguiente gif
            placeholder: AssetImage('assets/jar-loading.gif'),
            //le decimos el ancho sea igual al tamño maximo disponible
            width: double.infinity,
            height: 230,
            //adaptamos la imagen a todo lo disponible
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
              //le damos un poquito de formato al texto
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: const Text('Un hermoso paisaje'))
        ],
      ),
    );
  }
}
