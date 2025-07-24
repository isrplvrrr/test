import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccesfullPickup extends StatefulWidget {
  const SuccesfullPickup({super.key});

  @override
  State<SuccesfullPickup> createState() => _SuccesfullPickupState();
}

class _SuccesfullPickupState extends State<SuccesfullPickup> {
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
                Image.asset('assets/images/image_10.png'),
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
