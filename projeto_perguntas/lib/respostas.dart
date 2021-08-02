import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() onSelected;

  Respostas(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, 
          onPrimary: Colors.white
        ),
        onPressed: onSelected,
        child: Text(texto)
      ),
    );
  }
}
