import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.blueGrey,
    );
    return Scaffold(
      backgroundColor: Color(0xFFF2F8F4),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F8F4),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/arrow.svg'),
          onPressed: () => Navigator.pop(context),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Text('Категория'),
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          TextButton(
            onPressed: () {
              index = 0;
              setState(() {});
            },
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/seed_icon.svg'),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text('Семена', style: textStyle),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                SvgPicture.asset(
                  index == 0
                      ? 'assets/icons/true.svg'
                      : 'assets/icons/minus.svg',
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              index = 1;
              setState(() {});
            },
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/plant.svg'),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),

                Text('Растения', style: textStyle),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                SvgPicture.asset(
                  index == 1
                      ? 'assets/icons/true.svg'
                      : 'assets/icons/minus.svg',
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              index = 2;
              setState(() {});
            },
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/grunt.svg'),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text('Грунт для растения', style: textStyle),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                SvgPicture.asset(
                  index == 2
                      ? 'assets/icons/true.svg'
                      : 'assets/icons/minus.svg',
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              index = 3;
              setState(() {});
            },
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/tree.svg'),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text('Для деревьев и саженцев', style: textStyle),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                SvgPicture.asset(
                  index == 3
                      ? 'assets/icons/true.svg'
                      : 'assets/icons/minus.svg',
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              index = 4;
              setState(() {});
            },
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/torf.svg'),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text('Торф фасованный', style: textStyle),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                SvgPicture.asset(
                  index == 4
                      ? 'assets/icons/true.svg'
                      : 'assets/icons/minus.svg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
