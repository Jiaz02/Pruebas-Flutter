import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          //si queremos ambos paddings iguales:
          //padding: EdgeInsets.all(8),
          //si los queremos diferentes:
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                //mandamos el nombre si lo tenemos y la direccion de la imagen
                name: 'Tremendo paisajito',
                imageUrl:
                    'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imageUrl:
                    'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imageUrl:
                    'https://www.lenda.net/wp-content/uploads/2018/09/travel-landscape-01.jpg'),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
