import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Celebrities extends StatelessWidget {
  const Celebrities({
    Key? key,
    required this.celebrityName,
    required this.imagePath,
    this.isLarge = false,
  }) : super(key: key);
  final String celebrityName;
  final String imagePath;
  final bool isLarge;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLarge ? MediaQuery.of(context).size.height * .5 : 150,
      width: isLarge ? 300 : 150,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage('assets/images/$imagePath.jpeg'),
            fit: BoxFit.cover),
      ),
      child: Container(
          padding:
              EdgeInsets.symmetric(vertical: isLarge ? 90 : 20, horizontal: 10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, .9],
              colors: [Colors.transparent, Color(0xffED5F4A)],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              celebrityName,
              textAlign: TextAlign.center,
              softWrap: true,
              style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: isLarge ? 43 : 21,
                  fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
