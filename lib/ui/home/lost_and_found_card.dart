import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LostAndFoundCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 16.0,
          ),
          CircleAvatar(
            radius: 64,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text('Samsung Phone'),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
