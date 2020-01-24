import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  final themeColor = const Color(0xFF38A8E0);
  final minthemeColor = const Color(0xFF007ACC);
  @override
  Widget build(BuildContext context) {
    
  Size size = MediaQuery.of(context).size;
  screenHeight = size.height;
  screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          menu(context),
          AnimatedPositioned(
            duration: duration,
            top: isCollapsed ? 0 : 0.1 * screenHeight,
            bottom: isCollapsed ? 0 : 0.1 * screenWidth,
            left: isCollapsed ? 0 : 0.6 * screenWidth,
            right: isCollapsed ? 0 : -0.4 * screenWidth,
            child:Material(
              
              animationDuration: const Duration(milliseconds: 3000),
              elevation: 8,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                child: Theme(
                  data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                     ),
                  child: InkWell(
                    onTap: (){
                      setState((){
                      isCollapsed = true;
                      });
                    },
                      child: Container(
                        height: 410.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: FractionalOffset.bottomCenter,
                            end: FractionalOffset.topCenter,
                            colors: [
                              minthemeColor,
                              themeColor,
                              ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),
                      padding: const EdgeInsets.only(top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                          padding: const EdgeInsets.only(left: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  child: Icon(Icons.list,color:Colors.white,size: 35.0,),
                                  onTap: () {
                                    setState((){
                                      isCollapsed = !isCollapsed;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text("E-Commerce", style: TextStyle(fontSize: 30, color: Colors.white),textAlign: TextAlign.center,),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 250.0,
                                  width: screenWidth,
                                  child: Carousel(
                                    images: [
                                      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                                      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                                      ExactAssetImage("assets/images/LaunchImage.jpg")
                                    ],
                                    dotSize: 5.0,
                                    dotSpacing: 15.0,
                                    dotColor: Colors.white,
                                    indicatorBgPadding: 5.0,
                                    dotBgColor: Colors.transparent,
                                    overlayShadow: true,
                                    overlayShadowColors: Color(0xFF057ECE),
                                    overlayShadowSize: 1.5,
                                  ),
                              ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
