import 'package:aula_01/widgets/titulo_sessao.dart';
import 'package:flutter/material.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Widgets de conteúdo'),),
        body: ListView( 
          padding: EdgeInsets.all(16),
          children: [TituloSessao(titulo: "Textos"),
          Text('Texto', 
          style: TextStyle(fontSize: 20, 
          fontWeight: FontWeight.bold, 
          color: Colors.blue,
           ),),
          Text('Texto estilizado', 
          style: TextStyle(fontSize: 18, 
          fontWeight: FontWeight.bold, 
           ),),
           Text('Texto com estilo padrão', 
          style: TextStyle(fontSize: 18, 
          fontWeight: FontWeight.bold, 
           ),),
          Divider(),
          Text('Imagem', 
          style: TextStyle(fontSize: 20, 
          fontWeight: FontWeight.bold, color: Colors.blue, 
           ),),
          Image.network('https://images.seeklogo.com/logo-png/12/2/sc-corinthians-paulista-logo-png_seeklogo-123174.png',),

          Divider(),
          TituloSessao(titulo: "icone"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children : [
            Icon(Icons.favorite, color: Colors.red, size:32,),
            Icon(Icons.star, color: const Color.fromARGB(255, 255, 230, 1), size:32,),
            Icon(Icons.settings, color: const Color.fromARGB(255, 51, 135, 231), size:32,),
          ]),

          Divider(),
          TituloSessao(titulo: "Elevated button"),
          ElevatedButton(onPressed: () {}, child: Text("Clique Aqui")),
          ]
        ), 
      );
  }
}