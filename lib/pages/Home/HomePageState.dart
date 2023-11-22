import 'package:app/pages/Home/HomePage.dart';
import 'package:app/pages/Home/components/BodyContent/BodyContent.dart';
import 'package:app/pages/Home/components/Header/Header.dart';
import 'package:app/pages/Home/components/HeaderCard/HeaderCard.dart';
import 'package:flutter/material.dart';

class HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _list = [
    {"id": 1, "name": "Energia", "value": "200 BRL", "checked": false},
    {"id": 2, "name": "Internet", "value": "200 BRL", "checked": true},
    {"id": 3, "name": "Agua", "value": "200 BRL", "checked": false},
    {"id": 4, "name": "Telefone", "value": "200 BRL", "checked": false},
    {"id": 5, "name": "Aluguel", "value": "200 BRL", "checked": false},
  ];

  onItemTapped(int id) {
    setState(() {
      _list = List.of(_list.map((e) {
        if (e['id'] == id) {
          e['checked'] = !e['checked'];
        }

        return e;
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          toolbarHeight: 5,
        ),
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                const Header(
                  title: 'Welcome',
                  subTitle: 'Mr. Beetlejuice',
                ),
                Expanded(
                    child:
                        BodyContent(items: List.of(_list), onTap: onItemTapped))
              ],
            ),
            HeaderCard(),
          ],
        ));
  }
}

// 
