import 'package:electro_planet/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

class RatingPage extends StatelessWidget {
  const RatingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200],
         title: Text('ElectroPlanet'),
        ),
        body: Container(
          child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network('https://ru.store.asus.com/image/cache/catalog/notebooks/ROG%2BStrix/G513/Eclipse_Gray_4_zone_No_Numpad/G513_Eclipse_Gray_4_zone_No_Numpad_4-470x470.jpg',width: 230,height: 230,),
                        SizedBox(width: 25,),
                        Column(
                          children: [
                            TextS('Laptop ASUS\nRog Strix G15\nG513QE-HN104T')
                          ],
                        )
                      ],
                    )
                  ],

          ),
        ));
  }

  Text TextS(String text) => Text(text,style: TextStyle(fontSize: 15),);
}
