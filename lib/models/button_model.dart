import 'package:flutter/material.dart';

class ButtonModel extends StatelessWidget {
  final String nome;
  final Color corBorda;
  final Color? corFundo;
  final Color corTexto;
  final EdgeInsetsGeometry? buttonPadding;

  const ButtonModel({
    super.key,
    required this.nome,
    required this.corBorda,
    this.corFundo,
    required this.corTexto,
    this.buttonPadding,
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
        padding:
            buttonPadding ??
            EdgeInsetsGeometry.only(left: 15, right: 15, top: 5, bottom: 5),
        child: Text(
          textAlign: TextAlign.center,
          nome,
          style: TextStyle(
            color: corTexto,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
