import 'package:flutter/material.dart';
import 'package:flutter_agenda_pro/components/Button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Button(
                nome: 'Login',
                corBorda: Color(0xffE9ECFC),
                corTexto: Color(0xffE9ECFC),
              ),
              SizedBox(height: 10),
              Button(
                nome: 'Iniciar Teste Grátis',
                corFundo: Color(0xffE9ECFC),
                corTexto: Colors.blueAccent,
                corBorda: Colors.blueAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Agenda Pro',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.blueAccent,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Icon(
            PhosphorIconsRegular.list,
            size: 32,
            color: Color(0xffE9ECFC),
          ),
        ),
      ),
    );
  }
}
