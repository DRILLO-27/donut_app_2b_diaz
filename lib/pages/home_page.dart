import 'package:donut_app_2b_diaz/tabs/burger_tab.dart';
import 'package:donut_app_2b_diaz/tabs/donut_tab.dart';
import 'package:donut_app_2b_diaz/tabs/pancakes_tab.dart';
import 'package:donut_app_2b_diaz/tabs/pizza_tab.dart';
import 'package:donut_app_2b_diaz/tabs/smoothie_tab.dart';
import 'package:donut_app_2b_diaz/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Lista de Tabs
  List<Widget> myTabs = [
    //DonutTab
    MyTab(iconPath: 'lib/icons/donut.png'),
    //BurguertTab
    MyTab(iconPath: 'lib/icons/burger.png'),
    //SmoothieTab
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    //PancakeTab
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    //PizzatTab
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // icono izquierdo
          leading: Icon(
            Icons.menu,
            color: Colors.pinkAccent[800],
          ),
          // Icono derecho
          actions: [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )]
        ),
        body: Column(
          children:[
          //Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to", style: TextStyle(
                    fontSize: 32 )),
                  Text("Eat",style: TextStyle(
                    //Tamaño de letra
                    fontSize: 32,
                    //Negritas
                    fontWeight: FontWeight.bold,
                    //Subrayado
                    decoration: TextDecoration.underline,
                    //Color de letra
                    color: Colors.pinkAccent[800]  
                    ) )
                ],
              ),
            ),
          //TabBar(barra de pestañas)
          TabBar(tabs: myTabs),
          //TabBarView (contenido de pestañas)
          Expanded(
            child: TabBarView(children: [
            DonutTab(),
            BurgerTab(),
            SmoothieTab(),
            PancakesTab(),
            PizzaTab()
            ]),
          ),
          
      
          //Carrito
          Container(
            color: Colors.white,
            padding: const  EdgeInsets.all(16),
            child: Row(
              //poner los elementos en los extremos de la fila
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: 28),
                child: Column(
                  //alinearlo a la izquierda
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('2 Items | \$45', 
                  style: TextStyle(fontSize: 18, 
                  //texto en negritas
                  fontWeight: FontWeight.bold),),
                  Text("Delivery Charges Included", style: TextStyle(fontSize: 12)),  

                  ],
                )), 
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.pink),
                    child: Text('view cart', style: TextStyle(color: Colors.white),
                    )),
              ],
              ),
          )
          ] )
      ),
    );
  }
}