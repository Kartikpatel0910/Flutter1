 import 'package:flutter/material.dart';
 
 const sliv(
      {super.key,
      required this.title,
      required this.pinned,
      required this.floating,
      this.expandhieght = 200,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            floating: floating,
            expandedHeight: expandhieght,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(title),
              background: Image.network(imageurl,fit: BoxFit.cover,),
            ),
          )
        ],
      ),
    );
  }
}
