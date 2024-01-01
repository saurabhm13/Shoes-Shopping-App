import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image, required this.backgroundColor});

  final String title;
  final double price;
  final String image;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(
            height: 1,
          ),
          Text('\$$price', style: Theme.of(context).textTheme.bodyLarge,),
          Center(
            child: Image(
              height: 175,
              image: AssetImage(image),
            ),
          ),
        ],
      ),
    );
  }
}
