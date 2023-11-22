import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(top: 100, left: 0, right: 0, child: _Card());
  }
}

class _Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff355dbb), Color(0xff700198)],
            stops: [0.1, 0.9],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                offset: Offset(0.1, 0.8),
                blurRadius: 15,
                blurStyle: BlurStyle.outer),
            BoxShadow(
                color: Colors.black,
                offset: Offset(0.5, 0.5),
                blurRadius: 20,
                blurStyle: BlurStyle.inner),
          ]),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Março <3',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Balanço planejado',
                    style: TextStyle(color: Colors.white)),
                Text('1250 BRL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Receitas', style: TextStyle(color: Colors.white)),
                    Text('1250 BRL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Despesas', style: TextStyle(color: Colors.white)),
                    Text('1250 BRL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
