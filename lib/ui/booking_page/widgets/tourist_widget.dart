import 'package:flutter/material.dart';
import 'package:hotel_app/ui/booking_page/widgets/custom_text_field_widget.dart';

import '../../global_widgets/layout_widget.dart';
import 'tourist_header_widget.dart';

class TouristWidget extends StatefulWidget {
  final int index;

  const TouristWidget({
    required this.index,
    super.key,
  });

  @override
  State<TouristWidget> createState() => _TouristWidgetState();
}

class _TouristWidgetState extends State<TouristWidget> {
  bool openTourist = false;
  late String touristName;

  @override
  Widget build(BuildContext context) {
    touristName = switch (widget.index) {
      0 => 'Первый',
      1 => 'Второй',
      2 => 'Третий',
      3 => 'Четвертый',
      4 => 'Пятый',
      5 => 'Шестой',
      6 => 'Седьмой',
      7 => 'Восьмой',
      8 => 'Девятый',
      9 => 'Десятый',
      10 => 'Одинадцатый',
      11 => 'Двенадцатый',
      12 => 'Тринадцатый',
      13 => 'Четырнадцатый',
      14 => 'Пятнадцатый',
      int() => 'Еще один',
    };

    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: openTourist
              ? LayoutWidget(
                  key: const ValueKey('open'),
                  child: Column(
                    children: [
                      TouristHeaderWidget(
                        touristName: touristName,
                        onTap: () {
                          setState(() {
                            openTourist = !openTourist;
                          });
                        },
                        icon: Icons.keyboard_arrow_up,
                      ),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 4, top: 16),
                            child: CustomTextFieldWidget(labelText: 'Имя'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: CustomTextFieldWidget(labelText: 'Фамилия'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: CustomTextFieldWidget(labelText: 'Дата рождения'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: CustomTextFieldWidget(labelText: 'Гражданство'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: CustomTextFieldWidget(labelText: 'Номер загранпаспорта'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: CustomTextFieldWidget(labelText: 'Срок действия загранпаспорта'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : LayoutWidget(
                  key: const ValueKey('close'),
                  child: TouristHeaderWidget(
                    touristName: touristName,
                    onTap: () {
                      setState(() {
                        openTourist = !openTourist;
                      });
                    },
                    icon: Icons.keyboard_arrow_down,
                  ),
                ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
