// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final double order;
  final String text, moneytext, unittext;
  final Color textcolor, bgcolor, iconcolor;
  final IconData icon;

  const Cards({
    Key? key,
    required this.text,
    required this.moneytext,
    required this.unittext,
    required this.textcolor,
    required this.bgcolor,
    required this.iconcolor,
    required this.icon,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * 10),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        moneytext,
                        style: TextStyle(
                          color: textcolor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        unittext,
                        style: TextStyle(
                          color: textcolor.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(10, 10),
                  child: Icon(
                    icon,
                    color: iconcolor,
                    size: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
