import 'package:flutter/material.dart';
import 'package:flutter_agenda_pro/models/build_drawer.dart';
import 'package:flutter_agenda_pro/models/button_model.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: BuildDrawer(),
      body: Container(
        decoration: _linearBoxDecoration(),
        child: ListView(children: [_header(), _mainPage()]),
      ),
    );
  }

  BoxDecoration _linearBoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xff645EFF), Color.fromARGB(255, 58, 63, 90)],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text(
        'Agenda Pro',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color(0xff645EFF),
      elevation: 0.0,
      centerTitle: true,
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(
            PhosphorIconsRegular.list,
            size: 32,
            color: const Color(0xffE9ECFC),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
    );
  }

  Container _header() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'AgendaPro',
            style: TextStyle(color: Color(0xffE9ECFC), fontSize: 20),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ButtonModel(
                  nome: 'Login',
                  corBorda: const Color(0xffE9ECFC),
                  corTexto: const Color(0xffE9ECFC),
                ),
                const SizedBox(height: 10),
                ButtonModel(
                  nome: 'Iniciar Teste Grátis',
                  corFundo: const Color(0xffE9ECFC),
                  corTexto: const Color(0xff645EFF),
                  corBorda: const Color(0xff645EFF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _mainPage() {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Agenda inteligente para profissionais liberais',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40,
              color: Color(0xffE9ECFC),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Gerencie consultas, envie lembretes automáticos e facilite o contato com seus pacientes. A solução completa para psicólogos, terapeutas, nutricionistas e coaches.',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Color(0xffE9ECFC),
              ),
            ),
          ),
          ButtonModel(
            nome: 'Começar agora',
            corFundo: const Color(0xffE9ECFC),
            corBorda: const Color(0xff645EFF),
            corTexto: const Color(0xff645EFF),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ButtonModel(
              nome: 'Ver demonstração',
              corBorda: const Color(0xffE9ECFC),
              corTexto: const Color(0xffE9ECFC),
            ),
          ),
        ],
      ),
    );
  }
}
