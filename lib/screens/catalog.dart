import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing_project/components/custom_button.dart';
import 'package:testing_project/database/database.dart';
import 'package:testing_project/hive_adapter/hive_adapter.dart';

class Catalog extends StatefulWidget {
  // List<Product> product;
  Catalog({
    super.key,
    //  required this.product
  });

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    box.length >= 0;

    return Scaffold(
      backgroundColor: Color(0xFFF2F8F4),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/categories');
          },
          icon: SvgPicture.asset('assets/icons/categories.svg'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/icons/basket.svg'),
                  onPressed: () {
                    if (box.isEmpty)
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(title: Text('Корзина пуста'));
                        },
                      );
                    else
                      Navigator.of(context).pushNamed('/basket');
                  },
                ),
              ],
            ),
          ),
        ],
        title: Center(
          child: Column(
            children: [
              Text('Каталог товаров', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        backgroundColor: Colors.white70,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(16),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      height: 350,
                      width: 200,
                      child: Column(
                        children: [
                          CustomButton(
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(20),
                                child: Image.asset(
                                  'assets/images/image_3.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '         CЕЛЬДЕРЕЙ \n ПРАЖСКИЙ  ГИГАНТ',
                            style: TextStyle(fontSize: 15),
                          ),
                          SvgPicture.asset('assets/icons/seed_icon.svg'),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          Text('Семена'),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(80),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/details');
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(150, 2),
                                backgroundColor: Color(0xFF427A5B),
                                foregroundColor: Colors.white,
                                // side: BorderSide(color: Colors.yellow, width: 5),
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),

                              child: Text('Подробнее'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(16),
                        child: Container(
                          color: Colors.white,
                          height: 350,
                          width: 190,
                          child: Column(
                            children: [
                              CustomButton(
                                onPressed: () {},
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      20,
                                    ),
                                    child: Image.asset(
                                      'assets/images/image_4.png',
                                      height: 150,
                                      width: 150,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '        ЛЮПИН \n МНОГОЛЕТНИЙ',
                                style: TextStyle(fontSize: 15),
                              ),
                              SvgPicture.asset('assets/icons/seed_icon.svg'),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                              ),
                              Text('Семена'),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(
                                  100,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(
                                      context,
                                    ).pushNamed('/detailsLupin');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(150, 10),
                                    backgroundColor: Color(0xFF427A5B),
                                    foregroundColor: Colors.white,
                                    // side: BorderSide(color: Colors.yellow, width: 5),
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  child: Text('Подробнее'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15)),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(16),
                    child: Container(
                      color: Colors.white,
                      height: 350,
                      width: 200,
                      child: Column(
                        children: [
                          CustomButton(
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(20),
                                child: Image.asset(
                                  'assets/images/image_3.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '         CЕЛЬДЕРЕЙ \n ПРАЖСКИЙ  ГИГАНТ',
                            style: TextStyle(fontSize: 15),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(90),
                            child: SizedBox(
                              height: 35,
                              width: 130,
                              child: TextButton(
                                onPressed: () {
                                  box.add(
                                    Selderey(
                                      isBought: true,
                                      name: 'СЕЛЬДЕРЕЙ ПРАЖСКИЙ \n ГАРАНТ',
                                      specialization: 'Растения',
                                      id: 1,
                                      image: 'assets/images/image_3.png',
                                      price: 349,
                                    ),
                                  );
                                  setState(() {
                                    Navigator.of(context).pushNamed('/basket');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(150, 10),
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                child: Text('В корзину'),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(90),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/details');
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(150, 10),
                                backgroundColor: Color(0xFF427A5B),
                                foregroundColor: Colors.white,
                                // side: BorderSide(color: Colors.yellow, width: 5),
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              child: Text('Подробнее'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child: Container(
                    color: Colors.white,
                    height: 350,
                    width: 190,
                    child: Column(
                      children: [
                        CustomButton(
                          onPressed: () {},
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(20),
                              child: Image.asset(
                                'assets/images/image_4.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '        ЛЮПИН \n МНОГОЛЕТНИЙ',
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                            IconButton(
                              onPressed: () {
                                if (box.length > 0) {
                                  box.deleteAt(0);
                                  setState(() {});
                                }
                              },
                              icon: SvgPicture.asset(
                                'assets/icons/delete_icon.svg',
                              ),
                            ),
                            Text('${box.length}'),
                            IconButton(
                              onPressed: () {
                                box.add(
                                  Selderey(
                                    isBought: true,
                                    name: '        ЛЮПИН \n МНОГОЛЕТНИЙ',
                                    specialization: 'Растения',
                                    id: 2,
                                    image: 'assets/images/image_4.png',
                                    price: 349,
                                  ),
                                );
                                setState(() {});
                              },
                              icon: SvgPicture.asset(
                                'assets/icons/add_icon.svg',
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(90),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/detailsLupin');
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 10),
                              backgroundColor: Color(0xFF427A5B),
                              foregroundColor: Colors.white,
                              // side: BorderSide(color: Colors.yellow, width: 5),
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            child: Text('Подробнее'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
