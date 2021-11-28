import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coming_celebrities.dart';
import 'shared/celebrities_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff1D1D1D),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: height,
        width: width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: width * .3,
                        decoration: BoxDecoration(
                          color: const Color(0xff3D3D3D),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Seattle, WA',
                              style: GoogleFonts.raleway(
                                  color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Welcome back, John!',
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xff3D3D3D),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xff3D3D3D),
                          ),
                        ),
                        prefixIcon: const Icon(PhosphorIcons.magnifying_glass,
                            size: 20, color: Colors.white38),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.raleway(
                            color: Colors.white38, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    elevation: 10,
                    color: const Color(0xff292929),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 70,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff292929).withOpacity(.5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.raleway(
                            color: Colors.white54, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 20),
                            height: 200,
                            width: width * .85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/night_event.jpeg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 50,
                                width: width * .65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color(0xffED5F4A).withOpacity(.4),
                                ),
                                child: Row(children: [
                                  Container(
                                    height: 50,
                                    width: 55,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffED5F4A),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '12',
                                          style: GoogleFonts.raleway(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'DEC',
                                          style: GoogleFonts.raleway(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Winter Night Market',
                                          style: GoogleFonts.raleway(
                                            color: Colors.white60,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          'Seattle, WA.  21:00',
                                          style: GoogleFonts.raleway(
                                            color: Colors.white60,
                                            fontSize: 16,
                                          ),
                                        )
                                      ])
                                ]),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Coming Celebrities',
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ComingCelebrities();
                          }));
                        },
                        child: Text(
                          'View all',
                          style: GoogleFonts.raleway(
                              color: Colors.white54, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Celebrities(
                            imagePath: 'dua_lipa', celebrityName: 'Dua Lipa'),
                        Celebrities(
                            imagePath: 'taylor_swift',
                            celebrityName: 'Taylor Swift'),
                        Celebrities(
                            imagePath: 'dua_lipa', celebrityName: 'Dua Lipa'),
                        Celebrities(
                            imagePath: 'taylor_swift',
                            celebrityName: 'Taylor Swift'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.raleway(
                            color: Colors.white54, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 65,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Categories(icon: PhosphorIcons.fork_knife),
                        Categories(icon: PhosphorIcons.volleyball),
                        Categories(icon: PhosphorIcons.music_notes_simple),
                        Categories(icon: PhosphorIcons.game_controller),
                        Categories(icon: PhosphorIcons.fork_knife)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Events Nearby ',
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 270,
                        width: width * .9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/map.png'),
                              fit: BoxFit.cover),
                        )),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                height: 50,
                width: width * .8,
                decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          PhosphorIcons.house_fill,
                          color: Color(0xffED5F4A),
                          size: 20,
                        ),
                        Icon(PhosphorIcons.calendar_blank,
                            size: 20, color: Colors.white),
                        Icon(PhosphorIcons.user, size: 20, color: Colors.white),
                        Icon(PhosphorIcons.chat_circle,
                            size: 20, color: Colors.white),
                        Icon(PhosphorIcons.gear, size: 20, color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    required this.icon,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 65,
      width: 65,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff292929),
      ),
      child: Icon(
        icon,
        color: const Color(0xffED5F4A).withOpacity(.6),
      ),
    );
  }
}
