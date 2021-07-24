import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app_ui/constants.dart';
import 'package:meditation_app_ui/widgets/bottom_nav_bar.dart';
import 'package:meditation_app_ui/widgets/custom_search_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/meditation_bg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * .05),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '3-10 MIN Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .7,
                      child: Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness.',
                      ),
                    ),
                    SizedBox(width: size.width * .5 ,child: CustomSearchBar()),
                    SizedBox(height: 10),
                    Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      children: [
                        SessionCard(
                          isDone: true,
                          sessionNumber: 1,
                        ),
                        SessionCard(
                          sessionNumber: 2,
                        ),
                        SessionCard(
                          sessionNumber: 3,
                        ),
                        SessionCard(
                          sessionNumber: 4,
                        ),
                        SessionCard(
                          sessionNumber: 5,
                        ),
                        SessionCard(
                          sessionNumber: 6,
                        ),
                        SessionCard(
                          sessionNumber: 7,
                        ),
                        SessionCard(
                          sessionNumber: 8,
                        ),
                        SessionCard(
                          sessionNumber: 9,
                        ),
                        SessionCard(
                          sessionNumber: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                    ),


                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13.0),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text(
                                  'Start your deepen you practice'
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
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
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int? sessionNumber;
  final bool? isDone;

  const SessionCard({
    this.sessionNumber,
    this.isDone = false,
});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constants) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Container(
            width: constants.maxWidth / 2 -10,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color: isDone! ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor),
                        ),
                        child: Icon(Icons.play_arrow , color: isDone! ? Colors.white : kBlueColor),
                      ),
                      SizedBox(width: 10),
                      Text('Session $sessionNumber' , style: Theme.of(context).textTheme.subtitle2,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
