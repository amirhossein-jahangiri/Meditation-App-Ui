import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app_ui/screen/details_screen.dart';
import 'package:meditation_app_ui/widgets/bottom_nav_bar.dart';
import 'package:meditation_app_ui/widgets/custom_search_bar.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Good Morning\nShishir',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  CustomSearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      children: <Widget>[
                        CategoryCard(
                          title: 'Diet Recommendation',
                          svgSrc: 'assets/icons/Hamburger.svg',
                          press: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => DetailsScreen(),),
                            );
                          },
                        ),
                        CategoryCard(
                          title: 'Kegel Exercises',
                          svgSrc: 'assets/icons/Excrecises.svg',
                          press: (){},
                        ),
                        CategoryCard(
                          title: 'Meditation',
                          svgSrc: 'assets/icons/Meditation.svg',
                          press: (){},
                        ),
                        CategoryCard(
                          title: 'Yoga',
                          svgSrc: 'assets/icons/yoga.svg',
                          press: (){},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




