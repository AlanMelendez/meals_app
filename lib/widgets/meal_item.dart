// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28)
      ),
      clipBehavior: Clip.hardEdge, 
      elevation: 5, //Shadow like BoxShadow in CSS
      child: InkWell(
        onTap: (){},
        child: Stack(
          children: [
            FadeInImage(placeholder: MemoryImage(kTransparentImage), image: NetworkImage(meal.imageUrl)),
            Positioned( top: 0, bottom: 0, left: 0, right: 0,child: Container(
              color: Colors.black54,
              padding: const EdgeInsets.symmetric(vertical:6, horizontal:44),
              child:  Column(
                children: [
                  Text(
                    meal.title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                   ),
                   const SizedBox(height: 12),
                   Row(
                    children: [

                    ],
                   )
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
