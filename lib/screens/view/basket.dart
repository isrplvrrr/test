import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:testing_project/database/database.dart';
import 'package:testing_project/database/product.dart';
import 'package:testing_project/hive_adapter/hive_adapter.dart';

// ignore: must_be_immutable
class Basket extends StatefulWidget {
  List<Product> product;
  Basket({super.key, required this.product});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  bool isActive = box.isNotEmpty ? true : false;
  final selderey1 = box.getAt(0);
  void allSumm() {
    if (selderey1 == null) {
      Navigator.pop(context);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 250,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Сумма',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 100),
                          ),
                          Icon(Icons.attach_money),
                          if (selderey1 != null)
                            Text(
                              '${selderey1!.price}',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          else
                            Text('0'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Стоимость доставки',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 45)),
                        Text(
                          'Бесплатно',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Всего',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 100)),
                        Icon(Icons.attach_money),
                        Text(
                          '${selderey1!.price! * box.length}',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                    TextButton(
                      onPressed: () {
                        if (box.isNotEmpty) {
                          isActive = !isActive;
                        }
                        setState(() {});
                        if (box.isNotEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          TextButton(
                                            child: Text('Самовывоз'),
                                            onPressed: () {
                                              Navigator.of(
                                                context,
                                              ).pushNamed('/pickup');
                                              setState(() {});
                                            },
                                            style: ElevatedButton.styleFrom(
                                              fixedSize: Size(150, 2),
                                              backgroundColor: Color(
                                                0xFF427A5B,
                                              ),
                                              foregroundColor: Colors.white,
                                              // side: BorderSide(color: Colors.yellow, width: 5),
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(
                                                context,
                                              ).pushNamed('/delivery');
                                              setState(() {});
                                            },
                                            style: ElevatedButton.styleFrom(
                                              fixedSize: Size(150, 2),
                                              backgroundColor: Color(
                                                0xFF427A5B,
                                              ),
                                              foregroundColor: Colors.white,
                                              // side: BorderSide(color: Colors.yellow, width: 5),
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                            child: Text('Доставка'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(500, 10),
                        backgroundColor: isActive
                            ? Color(0xFF427A5B)
                            : Colors.grey,
                        foregroundColor: Colors.white,

                        // side: BorderSide(color: Colors.yellow, width: 5),
                      ),
                      child: Text(
                        'Оформить заказ',
                        style: TextStyle(
                          color: isActive ? Colors.white : Colors.black,
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFF2F8F4),
        appBar: AppBar(
          backgroundColor: Color(0xFFF2F8F4),
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/arrow.svg'),
            onPressed: () => Navigator.pop(context),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text('Корзина'),
          ),
        ),
        body: ListView.builder(
          itemCount: box.length,
          itemBuilder: (context, index) {
            final selderey = box.getAt(0);
            if (selderey == null) {
              return SizedBox.shrink();
            }
            return ListTile(
              title: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(selderey.image ?? 'Uncnown Image'),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                  ),
                                  Text(
                                    selderey.name ?? 'Uncnown name',
                                    style: TextStyle(fontSize: 13),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      if (box.isNotEmpty) {
                                        box.deleteAt(0);
                                        setState(() {});
                                      } else {
                                        Navigator.pop(context);
                                      }
                                    },

                                    icon: SvgPicture.asset(
                                      'assets/icons/delete.svg',
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                selderey.specialization ?? 'Uncnown name',
                                style: TextStyle(fontSize: 13),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.attach_money),
                                  Text(
                                    ':  ${selderey.price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
