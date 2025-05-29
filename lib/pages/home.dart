import 'package:flutter/material.dart';
import 'package:flutter_agenda_pro/components/Button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Color(0xff645EFF),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'AgendaPro',
                  style: TextStyle(color: Color(0xffE9ECFC), fontSize: 20),
                ),
                Container(
                  child: Column(
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
                        corTexto: Color(0xff645EFF),
                        corBorda: Color(0xff645EFF),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Column(
              children: [
                Text(
                  'Agenda inteligente para profissionais liberais',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Color(0xffE9ECFC),
                  ),
                ),
                Text(
                  'Gerencie consultas, envie lembretes automáticos e facilite o contato com seus pacientes. A solução completa para psicólogos, terapeutas, nutricionistas e coaches.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Color(0xffE9ECFC),
                  ),
                ),
              ],
            ),
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
      backgroundColor: Color(0xff645EFF),
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
