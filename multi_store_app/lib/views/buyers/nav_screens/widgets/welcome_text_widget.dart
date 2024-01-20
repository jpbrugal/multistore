import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Padding WelcomeTextWidget(BuildContext context) {
  return Padding(
    padding:  EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 25, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('What are you looking for? 👀',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        Container(
          child: SvgPicture.asset('assets/icons/cart.svg', width: 20,),
        )
      ],
    ),
  );
}