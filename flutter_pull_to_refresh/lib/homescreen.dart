import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _refreshhandler() async{
    return await Future.delayed(Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        onRefresh: _refreshhandler,
        animSpeedFactor: 2,
        backgroundColor: Colors.white,
        color: Colors.deepOrangeAccent,
        height: 200,
        child: ListView.builder(
          itemCount: 10,
          
          itemBuilder: 
           (BuildContext context,  int index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
           } ),
      )
      
      );
    
  }
}