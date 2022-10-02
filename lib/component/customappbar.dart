import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  Widget child;
 final String? icon;
  final VoidCallback? onpress;
final  EdgeInsets? padding;

  CustomAppBar({required this.child, this.icon, this.onpress , this.padding});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffEB671B),
      title: Center(child: child),
      actions: [
        IconButton(
            onPressed: onpress ?? (){},
            icon: SvgPicture.asset(
              "$icon",
              color: Colors.white,
              
            )
            ),
            Padding(padding: padding?? EdgeInsets.all(0))
      ],
    );
  }
}
