import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String text;
  TextInputType type;
  TextFieldWidget({required this.text,required this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width*0.8,
      color: Colors.white,
      child: TextFormField(
        showCursor: true,
        keyboardType: type,
        //  onChanged: (value) {},
        decoration: InputDecoration(
            border: InputBorder.none,
            //  alignLabelWithHint: false,
            prefixIcon: Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(text, style: TextStyle(color: Color(0xffEB671B))),
            ),
            isDense: true

            // prefixIcon: 'Name:'
            ),
      ),
    );
  }
}
