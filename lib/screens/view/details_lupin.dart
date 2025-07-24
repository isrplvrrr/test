import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing_project/database/database.dart';
import 'package:testing_project/hive_adapter/hive_adapter.dart';

class DetailsLupin extends StatefulWidget {
  const DetailsLupin({super.key});

  @override
  State<DetailsLupin> createState() => _DetailsLupinState();
}

class _DetailsLupinState extends State<DetailsLupin> {
  bool litr1 = true;
  bool litr5 = true;
  bool litr10 = true;
  bool litr20 = true;
  bool showDescription = false;

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2F8F4),
        appBar: AppBar(
          backgroundColor: Color(0xFFF2F8F4),
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/arrow.svg',
            ), // или любой другой виджет
            onPressed: () => Navigator.pop(context),
          ),
          actions: [SvgPicture.asset('assets/icons/basket.svg')],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 10,
                          ),
                        ),

                        Image.asset('assets/images/image_4.png'),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10)),

                        Image.asset('assets/images/image_4.png'),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10)),

                        Image.asset('assets/images/image_4.png'),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10)),

                        Image.asset('assets/images/image_4.png'),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                  Container(child: Image.asset('assets/images/image_4.png')),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                        ),
                        Text(
                          '      Люпин \n Многолетний',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            Text('   Растения'),
                            SvgPicture.asset('assets/icons/plant.svg'),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                            ),
                            Expanded(
                              child: Text(
                                'Выбрать фасовку:',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (litr1 == false) {
                                    litr5 = true;
                                    litr10 = true;
                                    litr20 = true;
                                  }
                                  litr1 = !litr1;
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  litr1 ? Colors.white : Colors.black,
                                ),
                              ),
                              child: Text(
                                '1 л',
                                style: TextStyle(
                                  color: litr1 ? Colors.black : Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (litr5 == false) {
                                    litr1 = true;
                                    litr10 = true;
                                    litr20 = true;
                                  }
                                  litr5 = !litr5;
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  litr5 ? Colors.white : Colors.black,
                                ),
                              ),
                              child: Text(
                                '5 л',
                                style: TextStyle(
                                  color: litr5 ? Colors.black : Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (litr10 == false) {
                                    litr1 = true;
                                    litr5 = true;
                                    litr20 = true;
                                  }
                                  litr10 = !litr10;
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  litr10 ? Colors.white : Colors.black,
                                ),
                              ),
                              child: Text(
                                '10 л',
                                style: TextStyle(
                                  color: litr10 ? Colors.black : Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (litr20 == false) {
                                    litr1 = true;
                                    litr10 = true;
                                    litr5 = true;
                                  }
                                  litr20 = !litr20;
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  litr20 ? Colors.white : Colors.black,
                                ),
                              ),
                              child: Text(
                                '20 л',
                                style: TextStyle(
                                  color: litr20 ? Colors.black : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 90,
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  showDescription = true;
                                  setState(() {});
                                },
                                style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Описание',
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                    Container(
                                      height: 2,
                                      width: 90,
                                      color: !showDescription
                                          ? Colors.black
                                          : Colors.green,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 90,
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  showDescription = false;
                                  setState(() {});
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      'Состав',
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                    Container(
                                      height: 2,
                                      width: 90,
                                      color: !showDescription
                                          ? Colors.green
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            showDescription
                                ? '\n Люпин многолетний — вид травянистых растений из \n подрода Platycarpos рода Люпин семейства Бобовые. \n Ботаническое описание. Высота растения до 120 см. \n Корень толстый, мясистый, многолетний.'
                                : '•  белки,\n • жиры,\n • углеводы и витамины.',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 40)),
                  Icon(Icons.attach_money),
                  Text(
                    '349',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 90)),

                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(90),
                    child: SizedBox(
                      height: 45,
                      width: 140,
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
                          backgroundColor: Color(0xFF427A5B),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
