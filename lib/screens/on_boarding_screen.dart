import 'package:flutter/material.dart';
import 'package:testing_project/components/custom_button.dart';
import 'package:testing_project/components/on_boarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  void nextScreen() {
    if (active_screen_id < 1) {
      active_screen_id += 1;
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(
            '/onboarding',
            (Route<dynamic> route) => false,
          )
          .then((value) => setState(() {}));
    }
  }

  int active_screen_id = 0;
  List<Onboarding> screenData = [
    Onboarding(
      screenId: 0,
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et',
      title: 'Добро пожаловать',
    ),
    Onboarding(
      screenId: 1,
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et',
      title: 'Добро пожаловать',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/image_$active_screen_id.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height / 2,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  blurStyle: BlurStyle.normal,
                  blurRadius: 5,
                  color: Color.fromARGB(255, 230, 230, 230),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  screenData[active_screen_id].title!,
                  style: TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 10, bottom: 20),
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          screenData[active_screen_id].text!,
                          style: TextStyle(
                            fontFamily: 'Source_Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox.shrink()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomButton(
                        borderRadius: BorderRadius.circular(6),
                        onPressed: () {
                          setState(() {
                            if (active_screen_id == 0 ||
                                active_screen_id == 1) {
                              active_screen_id = 1;
                            } else {
                              nextScreen();
                            }
                          });
                        },
                        child: Text(
                          'Далее',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color.fromRGBO(94, 157, 53, 1),
                        isActive: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 15)),
        ],
      ),
    );
  }
}
