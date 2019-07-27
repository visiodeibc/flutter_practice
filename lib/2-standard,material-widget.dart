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
          border: Border.all(width: 5, color: Colors.pinkAccent),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(2),
        child: Image.asset('assets/pic$imageIndex.jpg'),
      ),
    );

Widget buildImageRow(int imageIndex) => Row(
      children: [
        buildDecoratedImage(imageIndex),
        buildDecoratedImage(imageIndex + 1),
      ],
    );

Widget buildGrid() => GridView.extent(
  maxCrossAxisExtent: 150,
  padding: const EdgeInsets.all(4),
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  children: buildGridTileList(4)
);

List<Container> buildGridTileList(int count) => List.generate(
  count, (i)=> Container(child:Image.asset('assets/pic$i.jpg')));
