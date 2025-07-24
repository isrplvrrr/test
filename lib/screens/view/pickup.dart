import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Pickup extends StatefulWidget {
  const Pickup({super.key});

  @override
  State<Pickup> createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  static final LatLng _kMapCenter = LatLng(
    55.6494746544604,
    37.327046930267564,
  );
  String markerValue1 = 'Your Marker Id';

  static final CameraPosition _kInitialPosition = CameraPosition(
    target: _kMapCenter,
    zoom: 11.0,
    tilt: 0,
    bearing: 0,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Color(0xFFF2F8F4),
        appBar: AppBar(
          backgroundColor: Color(0xFFF2F8F4),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/arrow.svg'),
            onPressed: () => Navigator.pop(context),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75),
            child: Text('Самовывоз'),
          ),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      if (_kInitialPosition == _kMapCenter)
                        Text('Russia,Moscow')
                      else
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                            ),

                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                ),
                                SvgPicture.asset('assets/icons/rounded.svg'),
                                Text(
                                  '   Адрес: г. Москва, ул. Ленина 17, оф. 5',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(30),
                    child: Container(
                      height: 210,
                      width: 350,
                      child: GoogleMap(
                        initialCameraPosition: _kInitialPosition,
                        markers: {
                          const Marker(
                            markerId: MarkerId('Russia'),
                            position: LatLng(-55.09, 38.49),
                          ),
                        },
                      ),
                    ),
                  ),
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
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 25,
                                      ),
                                    ),
                                    Text('  Укажите контакный номер *'),
                                  ],
                                ),
                                SizedBox(
                                  height: 35,
                                  width: 300,
                                  child: TextField(
                                    controller: numberController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          25.0,
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 20.0,
                                        horizontal: 25.0,
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
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 25,
                                      ),
                                    ),
                                    Text('  Комментарий'),
                                  ],
                                ),
                                SizedBox(
                                  height: 35,
                                  width: 300,
                                  child: TextField(
                                    controller: commentController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          25.0,
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 170),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (numberController.text.isNotEmpty &&
                          commentController.text.isNotEmpty) {
                        Navigator.of(context).pushNamed('/succesfullPickup');
                      }
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(350, 4),
                      backgroundColor: Color(0xFF427A5B),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      'Оформить самовывоз',
                      style: TextStyle(
                        color: Colors.white,
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
    );
  }
}
