import 'package:aula_01/screens/widgets_conteudo.dart';
import 'package:aula_01/screens/widgets_layouts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  final List<CatalogoItem> secoes  = [
    CatalogoItem(
      titulo: "Widgets de conteúdo",
      icone: Icons.text_fields,
      descricao:
          "Exemplos de widgets de conteúdo como Text, Image, Icon e ElevatedButton",
      destino: WidgetsConteudo(),
    ),
    CatalogoItem(
      titulo: "Widgets de Layout",
      icone: Icons.view_quilt,
      descricao:
          "Exemplos de widgets de layout como Padding, Align, Center, SizedBox, Expanded e Flexible",
      destino: WidgetsLayout(),
    ),
  ];
  ListContents({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catálogo de widget")),
      body: Column(
        children: secoes
            .map(
              (item) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => item.destino),
                  );
                },
              
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Icon(item.icone, size: 48, color: Colors.blue),
                      Text(item.titulo, textAlign: TextAlign.center),
                      Text(
                        item.descricao,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.amber),
                      ), // Text
                    ],
                  ), // Column
                ), // Padding
              ), // Card
            ),
            )
            .toList(),
      ), // Column
    ); // Scaffold
  }
}

class CatalogoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
