import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Large"),
      ),
      body: Center(
        child: Hero(tag: 'images', child: Image.network("https://i0.wp.com/www.globalemancipation.ngo/wp-content/uploads/2017/09/github-logo.png?ssl=1",width: 500,height: 500,)),
      )
    );
  }
}