import 'package:ecommerce/component/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late VideoPlayerController controller;
  @override
  void initState() {
    //loadplayer();
    controller = VideoPlayerController.asset('video/video_production1.mp4')
      ..initialize().then((_) {
        setState(() {});
        controller.play();
      });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // void loadplayer() {
  //   controller = VideoPlayerController.asset('video/video_production1.mp4');
  //   controller.addListener(() {
  //     setState(() {});
  //   });
  //   controller.initialize().then((value) {
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: VideoPlayer(controller),
    );
    // Scaffold(
    //   backgroundColor: Color(0xffeeeeee),
    //   drawer: CustomDrawer(),
    //   appBar: AppBar(
    //     backgroundColor: Color(0xffEB671B),
    //     centerTitle: true,
    //     title: Text('Product Name'),
    //     actions: [
    //       IconButton(
    //         onPressed: () {},
    //         icon: SvgPicture.asset(
    //           'icons/Heart.svg',
    //           color: Colors.white,
    //         ),
    //         padding: EdgeInsets.only(right: 15),
    //       )
    //     ],
    //   ),
    //   body: ListView(
    //     children: [
    //       Container(
    //         width: MediaQuery.of(context).size.width,
    //         height: MediaQuery.of(context).size.height * 0.24,
    //         color: Colors.red,

    //       )
    //     ],
    //   ),
    // );
  }
}
