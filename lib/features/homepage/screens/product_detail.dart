import 'package:ecommerce/component/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import '../widgets/product_detail_widget.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late VideoPlayerController controller;
  @override
  void initState() {
    //loadplayer();
    controller = VideoPlayerController.asset(
      'video/video_production1.mp4',
    )..initialize().then((_) {
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
    // return Center(
    //   child: VideoPlayer(controller),
    // );
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xffEB671B),
        centerTitle: true,
        title: Text('Product Name'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'icons/Heart.svg',
              color: Colors.white,
            ),
            padding: EdgeInsets.only(right: 15),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Stack(alignment: Alignment.bottomLeft, children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.24,
                color: Colors.red,
                child: VideoPlayer(controller),
              ),
            const  Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Price:500\$',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]),
            Container(width: MediaQuery.of(context).size.width,
            height: 100,
            
            child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext ctx, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('image/¦+¦+.jpg')),
                  ),
                );
              })
            
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.black26,
            
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text('Product ID:',style: TextStyle(color: Color(0xffEB671B)),),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text('ku-1304',style: TextStyle(color: Colors.black26),),
              Padding(padding: EdgeInsets.only(right: 75)),
              Container(margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: IconButton(onPressed: (){},
                 icon: SvgPicture.asset('icons/PDF-file.svg'))),
              Container(
                margin: EdgeInsets.only(left: 5,top: 10),
                color: Colors.white,
                child: IconButton(onPressed: (){},
                 icon: SvgPicture.asset('icons/Chat.svg',color: Color(0xffEB671B),)))
            ],),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text('info:',style: TextStyle(color: Color(0xffEB671B)),),
              
            ],),
            Container(width: MediaQuery.of(context).size.width,
            height: 100,child: Text('adfdsfdsfdfdsaaaaaaaadfsafdsfdsfdsfdfd'
            ,style: TextStyle(color: Colors.black26)),),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            Text('Packaging Details',style: TextStyle(color: Color(0xffEB671B),fontSize: 18),),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            ProductDetailWidget(text: 'fdasdfdfdasf',),
            
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 40)),
              Text('Qty:', style: TextStyle(color: Color(0xffEB671B),fontSize: 18)),
              Container(
      margin: const EdgeInsets.only(left: 25),
      height: 35,
      width: 100,
      decoration: const BoxDecoration(
          //  borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: TextFormField(
        keyboardType: TextInputType.number,
        onChanged: (value) {},
        decoration: InputDecoration(
            border: InputBorder.none,
            
                ),
      ),
    )
            ],)





         
          ],
          
        ),
      ),
    );
  }
}
