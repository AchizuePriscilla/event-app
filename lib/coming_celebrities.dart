import 'dart:ui';

import 'package:event_app/shared/celebrities_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'artist_details.dart';

class ComingCelebrities extends StatefulWidget {
  const ComingCelebrities({Key? key}) : super(key: key);

  @override
  _ComingCelebritiesState createState() => _ComingCelebritiesState();
}

class _ComingCelebritiesState extends State<ComingCelebrities> {
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
            Column(
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
                  'Coming\nCelebrities',
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 17,
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xff3D3D3D),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: const Icon(PhosphorIcons.magnifying_glass,
                          size: 20, color: Colors.white38),
                      hintText: 'Search',
                      hintStyle: GoogleFonts.raleway(
                          color: Colors.white38, fontSize: 18),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView(
                  children:[
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ArtistDetails();
                          }));
                      },
                      child: const Celebrities(
                        imagePath: 'dua_lipa',
                        celebrityName: 'Dua Lipa',
                        isLarge: true,
                      ),
                    ),
                    const Celebrities(
                      imagePath: 'taylor_swift',
                      celebrityName: 'Taylor Swift',
                      isLarge: true,
                    ),
                    const Celebrities(
                      imagePath: 'dua_lipa',
                      celebrityName: 'Dua Lipa',
                      isLarge: true,
                    ),
                   const Celebrities(
                      imagePath: 'taylor_swift',
                      celebrityName: 'Taylor Swift',
                      isLarge: true,
                    ),
                  ],
                ))
              ],
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
