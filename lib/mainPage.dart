import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Good Morning',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img-avatar.png"))),
            )
          ],
        ),
      );
    }

    Widget favorite() {
      Widget favoriteCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14,
                  )),
            ],
          ),
        );
      }

      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              favoriteCard('assets/img-music12.png', 'Chill Hits'),
              favoriteCard('assets/img-music11.png', 'Top Hits'),
              favoriteCard('assets/img-music13.png', 'Sad Songs'),
              favoriteCard('assets/img-music14.png', 'Accoustic'),
            ],
          ),
        ),
      );
    }

    Widget Special() {
      Widget favoriteCard(String img, String text, String SubText) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 142,
                height: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 8,
              ),
              Text(SubText,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 26, 25, 25),
                    fontSize: 12,
                  )),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            child: Text('Just for You',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  favoriteCard('assets/img-music21.png', 'Daily Mix',
                      'Jonas Blue, NOTD, David Guetta and more'),
                  favoriteCard('assets/img-music22.png', 'Feelin’ Myself',
                      'Ariana Grande, Doja Cat, Megan Thee Stallion...'),
                  favoriteCard('assets/img-music23.png', 'Mood Booster',
                      'BTS, Dua Lipa, Malone, Justin Bieber and more'),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget popularSong() {
      Widget popularCard(String img, String text, String SubText) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 142,
                height: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 8,
              ),
              Text(SubText,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 15, 15, 15),
                    fontSize: 12,
                  )),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            child: Text('Popular Song',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  popularCard('assets/img-music33.png', 'Good Vibes',
                      'Tame Impala, Joji, Tyler, The Creator, 5 Second'),
                  popularCard('assets/img-music14.png', 'Mega Hit Mix',
                      'Ariana Grande, BTS, Dua Lipa, Justin Bieber, Taylor'),
                  popularCard('assets/img-music23.png', 'Young & Free',
                      'LANY, Jeremy Zucker, Joji, ILLENIUM, Glass A...'),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            header(),
            const SizedBox(
              height: 24,
            ),
            favorite(),
            const SizedBox(
              height: 40,
            ),
            Special(),
            const SizedBox(
              height: 35,
            ),
            popularSong()
          ],
        ),
      )),
    );
  }
}
