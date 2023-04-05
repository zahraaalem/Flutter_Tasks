import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('IEEE',
          style: TextStyle(color:Colors.black ),),
        actions: [
          IconButton(onPressed:(){}, icon:Icon(Icons.search, color: Colors.black, size: 35,),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color:Colors.grey,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Container(child: Icon(Icons.house,))),

            Expanded(child: Container(child: Icon(Icons.favorite_outline))),

            Expanded(child: Container(child: Icon(Icons.person))),
          ],
        ),
      ),
    );
  }
}
