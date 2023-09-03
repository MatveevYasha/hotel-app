import 'package:flutter/material.dart';
import 'package:hotel_app/ui/global_widgets/layout_widget.dart';
import 'package:hotel_app/ui/hotel_page/widgets/base_information_about_hotel.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';
// import 'package:intl/intl.dart';

import '../global_widgets/bottom_navigation_block.dart';
import '../global_widgets/hotel_app_bar.dart';
import '../success_page/success_page.dart';
import 'widgets/custom_text_cost_row_widget.dart';
import 'widgets/custom_text_row_widget.dart';
import 'widgets/small_button_widget.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  List<int> list = [1];

  // String _howManyTourists(int tourists) => Intl.plural(
  //       tourists,
  //       // zero: 'Опыт - менее одного года',
  //       one: 'Первый',
  //       few: 'Второй',
  //       // many: 'Опыт - $years лет',
  //       // other: 'Опыт',
  //       locale: 'ru_RU',
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HotelAppBar(title: 'Бронирование'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 8),
            const LayoutWidget(
              child: BaseInformationAboutHotel(),
            ),
            const SizedBox(height: 8),
            const LayoutWidget(
              child: Column(
                children: [
                  CustomTextRowWidget(
                    leftText: 'Вылет из',
                    rightText: 'Санкт-Петербург',
                    removeTopPadding: true,
                  ),
                  CustomTextRowWidget(
                    leftText: 'Страна, город',
                    rightText: 'Египет, Хургада',
                  ),
                  CustomTextRowWidget(
                    leftText: 'Даты',
                    rightText: '19.09.2023 – 27.09.2023',
                  ),
                  CustomTextRowWidget(
                    leftText: 'Кол-во ночей',
                    rightText: '7 ночей',
                  ),
                  CustomTextRowWidget(
                    leftText: 'Отель',
                    rightText: 'Steigenberger Makadi',
                  ),
                  CustomTextRowWidget(
                    leftText: 'Номер',
                    rightText: 'Стандартный с видом на бассейн или сад',
                  ),
                  CustomTextRowWidget(
                    leftText: 'Питание',
                    rightText: 'Все включено',
                    removeBottomPadding: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            LayoutWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Информация о покупателе',
                    style: textTheme.bodyMedium,
                  ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     labelStyle: TextStyle(color: Colors.amber),
                  //     labelText: 'Номер телефона',
                  //     filled: true,
                  //     fillColor: const Color(0xFF828796),
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  Text(
                    'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      color: const Color(0xFF828796),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    LayoutWidget(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // TODO: AnimatedContainer
                          Text(
                            '${index + 1}й турист',
                            style: textTheme.bodyMedium,
                          ),
                          SmallButtonWidget(
                            onTap: () {},
                            icon: Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              },
            ),
            LayoutWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Добавить туриста',
                    style: textTheme.bodyMedium,
                  ),
                  SmallButtonWidget(
                    onTap: () {
                      setState(() {
                        list.add(1);
                      });
                    },
                    icon: Icons.add,
                    fill: true,
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            const LayoutWidget(
              child: Column(
                children: [
                  CustomTextCostRowWidget(
                    leftText: 'Тур',
                    rightText: 'Санкт-Петербург',
                    removeTopPadding: true,
                  ),
                  CustomTextCostRowWidget(
                    leftText: 'Топливный сбор',
                    rightText: 'Египет, Хургада',
                  ),
                  CustomTextCostRowWidget(
                    leftText: 'Сервисный сбор',
                    rightText: '19.09.2023 – 27.09.2023',
                  ),
                  CustomTextCostRowWidget(
                    leftText: 'К оплате',
                    rightText: '7 ночей',
                    removeBottomPadding: true,
                    costTextIsAccent: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBlock(
        title: 'Оплатить ????? ₽',
        onTap: () {
          // TODO: pushReplacement для последнего экрана
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SuccessPage(),
            ),
          );
        },
      ),
    );
  }
}
