import 'package:aula_01/widgets/titulo_sessao.dart';
import 'package:flutter/material.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de Layout")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSessao(titulo: "Padding"),
          Container(
            color: const Color.fromARGB(255, 32, 109, 209),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Texto com padding de 20px"),
            ),
          ),
          Divider(),
          TituloSessao(titulo: "Align"),
          Container(
            height: 80,
            color: const Color.fromARGB(255, 0, 204, 255),
            alignment: Alignment.topCenter,
            child: Text("Alinhamento de texto"),
          ),
          Divider(),
          TituloSessao(titulo: 'Center'),
          Container(
            height: 80,
            color: const Color.fromARGB(255, 33, 255, 100),
            child: Center(child: Text('Alinhamento de texto')),
          ),
          Divider(),
          TituloSessao(titulo: "Sizebox"),
          Column(
            children: [
              Text("Texto acima"),
              SizedBox(height: 20),
              Text("Texto abaixo"),
            ],
          ),
          Divider(),
          TituloSessao(titulo: 'Expanded e Flexible (em Column)'),
          Container(
            height: 200,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Center(child: Text('Expanded')),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.deepPurple,
                    child: Text("Flexible (Flex 2)"),
                  ),
                )
              ], // children
            ),
          ),
          Divider(),
          TituloSessao(titulo: "Expanded e Flexible (Row)"),
          Row(children: [
            Expanded(child: Container(
              height: 50,
              color: Colors.yellow,
              child: Center(child: Text("Expanded")),
            ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                height: 50,
                color: const Color.fromARGB(255, 212, 14, 230),
                child: Center(child: Text("Flexible (Flex 2)")),
              ),
            )
          ],
          )
        ], // Children
      ),
    );
  }
}
