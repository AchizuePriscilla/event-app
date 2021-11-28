import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistDetails extends StatefulWidget {
  const ArtistDetails({Key? key}) : super(key: key);

  @override
  _ArtistDetailsState createState() => _ArtistDetailsState();
}

class _ArtistDetailsState extends State<ArtistDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xff1D1D1D),
        body: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffED5F4A),
                        )),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: height * .55,
                      width: width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(180),
                          bottom: Radius.circular(180),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/dua_lipa.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 100,
                      left: 0,
                      child: Container(
                        height: 140,
                        width: width * .6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(170),
                          ),
                          color: const Color(0xffED5F4A).withOpacity(.8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ARTIST',
                              style: GoogleFonts.raleway(
                                color: Colors.white54,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Taylor Swift',
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'NashVille, Tennessee, U.S',
                              style: GoogleFonts.raleway(
                                color: Colors.white54,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Pop',
                                  style: GoogleFonts.raleway(
                                    color: Colors.white54,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 6,
                                  width: 6,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white38),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Country',
                                  style: GoogleFonts.raleway(
                                    color: Colors.white54,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 6,
                                  width: 6,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white38),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Folk',
                                  style: GoogleFonts.raleway(
                                    color: Colors.white54,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Events (8)',
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.raleway(
                            color: Colors.white54, fontSize: 15),
                      )
                    ],
                  ),
                ),
                EventDetails(width: width),
                EventDetails(width: width),
                EventDetails(width: width),
                EventDetails(width: width),
                EventDetails(width: width),
                EventDetails(width: width),
                EventDetails(width: width),
              ],
            ),
          ),
        ));
  }
}

class EventDetails extends StatelessWidget {
  const EventDetails({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        height: 70,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xff292929).withOpacity(.9),
        ),
        child: Row(children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              color: Color(0xffED5F4A),
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12',
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 32,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Winter Night Market',
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
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
    );
  }
}
