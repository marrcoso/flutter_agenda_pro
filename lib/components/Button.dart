import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String nome;
  final Color corBorda;
  final Color? corFundo;
  final Color corTexto;

  const Button({
    super.key,
    required this.nome,
    required this.corBorda,
    this.corFundo,
    required this.corTexto,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: corFundo,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: corBorda, width: 2.0),
        ),
        padding: EdgeInsetsGeometry.only(
          left: 15,
          right: 15,
          top: 5,
          bottom: 5,
        ),
        child: Text(
          nome,
          style: TextStyle(
            color: corTexto,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
