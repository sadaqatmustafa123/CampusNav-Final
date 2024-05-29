// import 'package:flutter/material.dart';
// import 'package:onboarding_intro_screen/onboarding_screen.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: OnBoardingScreen(
//           onSkip: () {
//             debugPrint("On Skip Called....");
//           },
//           showPrevNextButton: true,
//           showIndicator: true,
//           backgourndColor: Colors.white, // Corrected spelling: 'backgroundColor'
//           activeDotColor: Colors.blue,
//           deactiveDotColor: Colors.grey, // Corrected spelling: 'deactiveDotColor'
//           iconColor: Colors.black,
//           leftIcon: Icons.arrow_circle_left_rounded,
//           rightIcon: Icons.arrow_circle_right_rounded,
//           iconSize: 30,
//           pages: [
//             OnBoardingModel(
//               image: Image.network('https://www.eduopinions.com/wp-content/uploads/2017/10/University-of-Engineering-and-Technology-NED-logo-350x250.png'),
//               title: "CampusNav",
//               body:
//               "Providing your shuttle at your doorsteps. What else can you ask for",
//             ),
//             OnBoardingModel(
//               image: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpiukHOJDjz4trtUqMB1ibZRHz3jmcnG8AoQ&s'),
//               title: "Coffee With Friends",
//               body:
//               "When your morning starts with a cup of coffee and you are used to survive the day with the same, then all your Instagram stories and snapchat streaks would stay filled up with coffee pictures",
//             ),
//             OnBoardingModel(
//               image: Image.network('https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_640.jpg'),
//               title: "Business Chat",
//               body:
//               "First impressions are everything in business, even in chat service. It’s important to show professionalism and courtesy from the start",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:onboarding_intro_screen/onboarding_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            OnBoardingScreen(
              onSkip: () {
                debugPrint("On Skip Called....");
              },
              showPrevNextButton: true,
              showIndicator: true,
              backgourndColor: Colors.white,
              activeDotColor: Colors.blue,
              deactiveDotColor: Colors.grey,
              iconColor: Colors.black,
              leftIcon: Icons.arrow_circle_left_rounded,
              rightIcon: Icons.arrow_circle_right_rounded,
              iconSize: 30,
              pages: [
                OnBoardingModel(
                  image: Image.network('https://www.eduopinions.com/wp-content/uploads/2017/10/University-of-Engineering-and-Technology-NED-logo-350x250.png'),
                  title: "CampusNav",
                  body:
                  "Providing your shuttle at your doorsteps. What else can you ask for",
                ),
                OnBoardingModel(
                  image: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpiukHOJDjz4trtUqMB1ibZRHz3jmcnG8AoQ&s'),
                  title: "Coffee With Friends",
                  body:
                  "When your morning starts with a cup of coffee and you are used to survive the day with the same, then all your Instagram stories and snapchat streaks would stay filled up with coffee pictures",
                ),
                OnBoardingModel(
                  image: Image.network('https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_640.jpg'),
                  title: "Business Chat",
                  body:
                  "First impressions are everything in business, even in chat service. It’s important to show professionalism and courtesy from the start",
                ),
              ],
            ),
            Positioned(
              top: 40,
              left: 11,
              child: TextButton(
                onPressed: () {
                  // Handle your button tap here
                },
                child: Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),), // Icon for example, replace with your desired widget
              ),
            ),
          ],
        ),
      ),
    );
  }
}
