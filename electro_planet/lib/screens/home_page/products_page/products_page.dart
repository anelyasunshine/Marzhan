import 'package:electro_planet/animation/fade_animation.dart';
import 'package:electro_planet/models/service.dart';
import 'package:electro_planet/screens/home_page/products_page/rating_page.dart';
import 'package:electro_planet/screens/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<Service> services = [
    Service('Watch',
        'https://object.pscloud.io/cms/cms/Photo/img_0_911_453_0_6.png'),
    Service('Phone',
        'https://hnsgsfp.imgix.net/9/images/detailed/56/Vivo_Y20_(4GB_128GB)_6.51-inch_Smartphone_-_Dawn_White_(IMG_2).jpg?fit=fill&bg=0FFF&w=1536&h=900&auto=format,compress'),
    Service('Bike',
        'https://cdn.shopify.com/s/files/1/2081/1519/products/1600x1067_Sparrow_White_Blue_ANGLE.jpg?v=1590502984'),
    Service('Laptops',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Schenker_VIA14_Laptop_asv2021-01.jpg/800px-Schenker_VIA14_Laptop_asv2021-01.jpg'),
    Service('Tablet',
        'https://www.techinn.com/f/13777/137777410/apple-ipad-32gb-10.2-tablet.jpg'),
    Service('Bags',
        'https://static.acer.com/up/Resource/Acer/Accessories/Predator/Predator%20Gaming%20Utility%20Backpack/Images/20151203/Predator-Gaming-Utility-Backpack_sku-main.png'),
  ];

  List<dynamic> workers = [
    [
      ' Asus ROG Strix G15',
      'Laptop',
      'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/b/e/bea8ac0efc4ee23fe5c995512220e35e48078563_245977_1a.jpg',
      4.8
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      FadeAnimation(
          1,
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Assistant',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                    ))
              ],
            ),
          )),
      FadeAnimation(
          1.2,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(0, 4),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              'https://i.pinimg.com/736x/e9/bb/9f/e9bb9f10cfb988ff220f77f41f274b07.jpg',
                              width: 70,
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ai Kai",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "IT specialist",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                          child: Text(
                        'View Profile',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    )
                  ],
                ),
              ),
            ),
          )),
      SizedBox(
        height: 20,
      ),
      FadeAnimation(
          1.3,
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                    ))
              ],
            ),
          )),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 300,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: services.length,
            itemBuilder: (BuildContext context, int index) {
              return FadeAnimation(
                  (1.0 + index) / 4,
                  serviceContainer(
                      services[index].imageURL, services[index].name, index));
            }),
      ),
      SizedBox(
        height: 20,
      ),
      FadeAnimation(
          1.3,
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Rated',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                    ))
              ],
            ),
          )),
      GestureDetector(
        onTap: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RatingPage()),
  );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: workers.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeAnimation(
                    (1.0 + index) / 4,
                    workerContainer(workers[index][0], workers[index][1],
                        workers[index][2], workers[index][3]));
              }),
        ),
      ),
      SizedBox(
        height: 150,
      ),
    ])));
  }

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(
            color: Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(image, height: 45),
              SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 15),
              )
            ]),
      ),
    );
  }

  workerContainer(String name, String job, String image, double rating) {
    return GestureDetector(
      child: AspectRatio(
        aspectRatio: 3.5,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(image)),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      job,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      rating.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
