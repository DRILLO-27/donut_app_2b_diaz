import 'package:donut_app_2b_diaz/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {

  //lista de donas
  final List  donutsOnsale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Ice cream","Krispy Kreme","36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry","Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape","cotsco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco","Walmart","95", Colors. brown, "lib/images/chocolate_donut.png"],
    ["Ice cream","Krispy Kreme","36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry","Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape","cotsco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco","Walmart","95", Colors. brown, "lib/images/chocolate_donut.png"],
  ];


  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //elementos en nuestra lista
      itemCount: donutsOnsale.length, 
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        //Relacion de aspecto o proporción
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnsale[index][0],
          donutStore: donutsOnsale[index][1],
          donutPrice: donutsOnsale[index][2],
          donutColor: donutsOnsale[index][3],
          imageName: donutsOnsale[index][4],

        );
    });
  }
}
