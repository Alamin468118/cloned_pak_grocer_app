import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;
  // for slider image

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: MediaQuery.of(context).size.height * 0.3,
          // width: MediaQuery.of(context).size.width,

          child: CarouselSlider.builder(
            itemCount: imageList.length,
            options: CarouselOptions(
              enlargeCenterPage: true,
              height: MediaQuery.of(context).size.height *
                  0.3, // set height of slider
              autoPlay: true, // enable auto play
              autoPlayInterval: const Duration(
                  seconds: 5), // set auto change image for every 5 second
              reverse: false, // unable reverse direction
              aspectRatio: 5.0,
            ),
            itemBuilder: (context, int i, int id) {
              // to add image in the slider. call from the list at the top
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      // decorationImage allow to add image in container
                      image: AssetImage(imageList[i]),
                      fit: BoxFit
                          .cover, //ensure image special offer fully fill the box of box container
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
