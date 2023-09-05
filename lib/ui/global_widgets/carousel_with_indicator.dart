import 'package:carousel_slider/carousel_slider.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../theme/color_scheme.dart';

class CarouselWithIndicator extends StatefulWidget {
  final List<String> images;

  const CarouselWithIndicator({
    required this.images,
    super.key,
  });

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
      items: widget.images
          .map((item) => ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  ExtendedImage.network(
                    item,
                    fit: BoxFit.cover,
                    loadStateChanged: (ExtendedImageState state) {
                      if (state.extendedImageLoadState == LoadState.failed) {
                        return Center(child: Image.asset('assets/images/no_image.png'));
                      }
                      return null;
                    },
                  ),
                  Positioned(
                    bottom: 8,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: widget.images.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.only(
                                top: 4,
                                bottom: 4,
                                right: (entry.key == widget.images.length) ? 0 : 8,
                                left: (entry.key == 0) ? 8 : 0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: colorScheme.onPrimaryContainer.withOpacity(1 - (0.4 * entry.key)),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              )))
          .toList(),
      carouselController: _controller,
      options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
    );
  }
}
