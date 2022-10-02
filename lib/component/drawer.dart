import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer( backgroundColor: Color(0xffEB671B),
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 25)),
                    const Text('Jone Deo',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    const Padding(padding: EdgeInsets.only(left: 80)),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'icons/Edit Square.svg',
                          color: Colors.white,
                        ))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                ),
                // Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                // Image.asset('image/S-Logo-DM.png'),
                Padding(padding: EdgeInsets.only(top: 10)),

                buildShow('icons/Home.svg', 'Home'),

                buildShow('icons/Folder.svg', 'Company Profile'),

                buildShow('icons/Heart.svg', 'Favorites'),

                buildShow('icons/Buy.svg', 'Order History'),

                buildShow('icons/Category.svg', 'Category'),

                buildShow('icons/Notification.svg', 'Notifications'),

                buildShow('icons/Group 1434.svg', 'Language'),

                buildShow('icons/Document.svg', 'Privacy policy'),

                buildShow('icons/Chat.svg', 'Support & Help center'),
              ],
            ));
  }
   Widget buildShow(icon, text) {
    return ListTile(
      visualDensity: VisualDensity(vertical: -2.5),
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          '$icon',
          color: Colors.white,
        ),
      ),
      title: Text('$text',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          )),
    );
  }
}
