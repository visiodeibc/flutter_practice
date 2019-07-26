import 'package:flutter/material.dart';

Widget buildImageColumn() => Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [
          buildImageRow(1),
          buildImageRow(3),
        ],
      ),
    );

Widget buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('assets/pic$imageIndex.jpg'),
      ),
    );

Widget buildImageRow(int imageIndex) => Row(
      children: [
        buildDecoratedImage(imageIndex),
        buildDecoratedImage(imageIndex + 1),
      ],
    );