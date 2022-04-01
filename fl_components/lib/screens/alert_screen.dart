import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  //creamos la alerta para ios
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              //seteamso el tamaño de la columna al minimo disponible segun sus hijos
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la columna'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK')),
            ],
          );
        });
  }

//creamos una ventana de alerta
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        //hacemos que no se pueda cerrar pretando en la zona gris
        barrierDismissible: false,
        //tomamos el contexto
        context: context,
        builder: (context) {
          //devolvemos un AlertDialog
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            //redondeamos los bordes
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              //seteamso el tamaño de la columna al minimo disponible segun sus hijos
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la columna'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            //style: ElevatedButton.styleFrom(
            //primary: AppTheme.primary, shape: const StadiumBorder()),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Mostar alerta'),
            ),

            //Si es un android pon la ventana de android y sino la de ios
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context)),
      ),
      //hsemos un boton para volver a la pantalla anterior
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
