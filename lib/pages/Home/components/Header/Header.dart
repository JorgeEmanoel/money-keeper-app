import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        child: HeaderContainer(
          subTitle: subTitle,
          title: title,
        ));
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 100),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.black, Colors.black87],
        stops: [0, 0.75],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.ytimg.com/vi/cAEw1J_x6C4/hqdefault.jpg'))),
          ),
          Expanded(
              child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        subTitle,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
