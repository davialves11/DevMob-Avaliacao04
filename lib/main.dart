import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Lago Jølstravatn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Sunnfjord, Vestland, Noruega',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'O lago deságua no rio Jølstra, de 20 quilômetros, que então deságua no Førdefjorden. '
        'O braço oriental de Jølstravatn chama-se Kjøsnesfjorden, '
        'embora não seja um verdadeiro fiorde que faça parte do mar. '
        'As aldeias de Skei, Helgheim, Ålhus e Vassenden estão localizadas nas margens do lago. '
        'O lago de 39,25 km² está localizado a uma altitude de 207 m acima do nível do mar, '
        'e o ponto mais profundo do lago está 233 m abaixo do nível da água. '
        'O lago tem cerca de 30 km de comprimento e cerca de 1 a 1,5 km de largura. '
        'Jølstravatn é um lago de pesca muito bom.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Davi Alves Macêdo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Davi Alves Macêdo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/Jølstravatnet.JPG',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ), 
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}