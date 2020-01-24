import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget menu(context){
  final themeColor = const Color(0xFF07aeeb);
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0,),
          CircleAvatar(
            radius: 40.0,
            backgroundColor: themeColor,
            child: Icon(Icons.person,size: 45.0,color: Colors.white,),
          ),
          SizedBox(height: 10.0,),
          Text("Username",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
          SizedBox(height: 5.0,),
          Text("example@anymail.com",style: TextStyle(fontSize: 14.0,color: Colors.blueGrey),),
          SizedBox(height: 20.0,),
          FlatButton.icon(onPressed: (){}, icon: Icon(Icons.person_outline,size: 18.0,color: themeColor,), label: Text("My Account",style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),),),
          FlatButton.icon(onPressed: (){}, icon: Icon(Icons.notifications,size: 18.0,color: themeColor,), label: Text("Notifications",style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),),),
          FlatButton.icon(onPressed: (){}, icon: Icon(Icons.category,size: 18.0,color: themeColor,), label: Text("Categories",style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),),),
          FlatButton.icon(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 18.0,color: themeColor,), label: Text("Your Cart",style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),),),
          Expanded(
            child:Align(
              alignment: FractionalOffset.bottomLeft,
              child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.power_settings_new,size: 18.0,color: themeColor,), label: Text("Logout",style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),),),
            ),
          ),        
        ],
      ),
    ),
  );
  
}