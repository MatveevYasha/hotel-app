import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  // ignore: unused_field
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imgList
          .map((item) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Image.network(
                          item,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () => _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 12.0,
                                    height: 12.0,
                                    margin: EdgeInsets.only(
                                      top: 8,
                                      bottom: 8,
                                      right: 8,
                                      left: (entry.key == 0 || entry.key == imgList.length) ? 16 : 0,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,

                                      // Придумать как сделать безопасней
                                      color: Colors.black.withOpacity(1 - (0.2 * entry.key)),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    )),
              ))
          .toList(),
      carouselController: _controller,
      options: CarouselOptions(
          height: 260,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
    );
  }
}
