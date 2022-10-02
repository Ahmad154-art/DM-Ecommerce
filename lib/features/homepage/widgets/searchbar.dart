import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 65, right: 55, bottom: 25),
      height: 35,
      width: 150,
      decoration: const BoxDecoration(
          //  borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {},
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'icons/Search.svg',
                  color: Color(0xffEB671B),
                ))),
      ),
    );
  }
}
