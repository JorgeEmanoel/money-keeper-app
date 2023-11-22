import 'dart:ffi';

import 'package:flutter/material.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({super.key, required this.items, required this.onTap});

  final List<Map<String, dynamic>> items;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(child: _BodyContentContainer(onTap: onTap, items: items));
  }
}

class _BodyContentContainer extends StatelessWidget {
  const _BodyContentContainer({required this.onTap, required this.items});

  final List<Map<String, dynamic>> items;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(top: 150, left: 40, right: 40, bottom: 0),
        decoration: const BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        child: ListView(
            children: List.of(items.map((item) => _BodyContentItem(
                  id: item['id'],
                  name: item['name'],
                  value: item['value'],
                  checked: item['checked'],
                  onTap: onTap,
                )))));
  }
}

class _BodyContentItem extends StatelessWidget {
  const _BodyContentItem(
      {required this.id,
      required this.name,
      required this.value,
      required this.checked,
      required this.onTap});

  final int id;
  final String name;
  final String value;
  final bool checked;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xffefefef),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: CheckboxListTile(
        activeColor: Colors.black26,
        tileColor: checked ? Colors.black26 : Colors.black87,
        title: Text(name + ' - ' + value,
            style: TextStyle(color: checked ? Colors.black26 : Colors.black87)),
        value: checked,
        onChanged: (bool? value) {
          onTap(id);
        },
      ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Text(name,
      //         style: TextStyle(
      //             color: checked ? Colors.black26 : Colors.black87,
      //             decoration: checked ? TextDecoration.lineThrough : null,
      //             fontSize: 18,
      //             fontWeight: FontWeight.w400)),
      //     Text(value,
      //         style: TextStyle(
      //             color: checked ? Colors.black26 : Colors.black87,
      //             decoration: checked ? TextDecoration.lineThrough : null,
      //             fontSize: 19,
      //             fontWeight: FontWeight.bold)),
      //   ],
      // ),
    );
  }
}
