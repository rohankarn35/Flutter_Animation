import 'package:flutter/material.dart';

import 'image.dart';

class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: InkWell
          
          (
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images()));
            },
            child: Hero(tag: 'images', child: Image.network("https://i0.wp.com/www.globalemancipation.ngo/wp-content/uploads/2017/09/github-logo.png?ssl=1",width: 100,height: 100,))),
        ),
      ),
    );
  }
}