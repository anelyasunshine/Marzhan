import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'TexnoHouse',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      'Almaty Kz',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Abay 71/2',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   style: TextButton.styleFrom(
                    //     backgroundColor: Colors.green,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(9),
                    //     ),
                    //   ),
                    //   child: Text(
                    //     'Add',
                    //     style: TextStyle(
                    //       fontSize: 12,
                    //       fontWeight: medium,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Image.asset(
                'assets/img_store1.png',
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
