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
    final TextEditingController adressController = TextEditingController();
    final TextEditingController numberController = TextEditingController();
    final TextEditingController commentController = TextEditingController();

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
                            controller: adressController,
                            decoration: InputDecoration(
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
                            controller: numberController,
                            decoration: InputDecoration(
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
                            controller: commentController,
                            decoration: InputDecoration(
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
          Expanded(
            child: Padding(padding: EdgeInsets.symmetric(vertical: 170)),
          ),
          TextButton(
            onPressed: () {
              if (adressController.text.isNotEmpty &&
                  numberController.text.isNotEmpty &&
                  commentController.text.isNotEmpty) {
                Navigator.of(context).pushNamed('/succesfull');
              }
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(350, 4),
              backgroundColor: Color(0xFF427A5B),
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Заказать',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
