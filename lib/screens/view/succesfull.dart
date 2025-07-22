import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Succesfull extends StatefulWidget {
  const Succesfull({super.key});

  @override
  State<Succesfull> createState() => _SuccesfullState();
}

class _SuccesfullState extends State<Succesfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F8F4),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/catalog');
              setState(() {});
            },
            child: SvgPicture.asset('assets/icons/x.svg'),
          ),
        ],
      ),
      backgroundColor: Color(0xFFF2F8F4),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Image.asset('assets/images/image_9.png'),
                Text(
                  'Заказ оформлен успешно',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
