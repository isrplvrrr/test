import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/arrow.svg'),
          onPressed: () => Navigator.pop(context),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 85),
          child: Text('Доставка'),
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 25)),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                            ),
                            Text('Укажите адрес доставки *'),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              // hintText: hintText, // Подсказка внутри поля ввода
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                            ),
                            Text('Укажите контакный номер *'),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              // hintText: hintText, // Подсказка внутри поля ввода
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                            ),
                            Text('Комментарий'),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              // hintText: hintText, // Подсказка внутри поля ввода
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
