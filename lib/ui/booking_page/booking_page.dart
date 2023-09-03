import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_app/domain/state/booking_state/booking_state.dart';
import 'package:hotel_app/ui/global_widgets/layout_widget.dart';
import 'package:hotel_app/ui/hotel_page/widgets/base_information_about_hotel.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
// import 'package:intl/intl.dart';

import '../global_widgets/bottom_navigation_block.dart';
import '../global_widgets/hotel_app_bar.dart';
import '../success_page/success_page.dart';
import 'widgets/custom_text_cost_row_widget.dart';
import 'widgets/custom_text_row_widget.dart';
import 'widgets/small_button_widget.dart';

class BookingPage extends ConsumerStatefulWidget {
  const BookingPage({super.key});

  @override
  ConsumerState<BookingPage> createState() => _BookingPageConsumerState();
}

class _BookingPageConsumerState extends ConsumerState<BookingPage> {
  List<int> list = [1];
  late int _totalPrice;
  FocusNode focusNode = FocusNode();

  TextEditingController numberController = TextEditingController(text: '+7');

  MaskTextInputFormatter maskNumberFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

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
    final state = ref.watch(bookingStateProvider);

    if (state.isLoading) {
      return const Material(
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.blue,
          ),
        ),
      );
    }

    if (state.isLoading) {
      return const Material(
        child: Center(
          child: Text('При загрузке данных произошла ошибка'),
        ),
      );
    }

    _totalPrice = state.booking.tourPrice + state.booking.fuelCharge + state.booking.serviceCharge;

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
            LayoutWidget(
              child: Column(
                children: [
                  CustomTextRowWidget(
                    leftText: 'Вылет из',
                    rightText: state.booking.departure,
                    removeTopPadding: true,
                  ),
                  CustomTextRowWidget(
                    leftText: 'Страна, город',
                    rightText: state.booking.arrivalCountry,
                  ),
                  CustomTextRowWidget(
                    leftText: 'Даты',
                    rightText: '${state.booking.tourDateStart} – ${state.booking.tourDateStop}',
                  ),
                  CustomTextRowWidget(
                    leftText: 'Кол-во ночей',
                    rightText: '${state.booking.numberOfNights} ночей',
                  ),
                  const CustomTextRowWidget(
                    leftText: 'Отель',
                    rightText: 'Steigenberger Makadi',
                  ),
                  CustomTextRowWidget(
                    leftText: 'Номер',
                    rightText: state.booking.room,
                  ),
                  CustomTextRowWidget(
                    leftText: 'Питание',
                    rightText: state.booking.nutrition,
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
                  TextFormField(
                    controller: numberController,
                    focusNode: focusNode,
                    inputFormatters: [maskNumberFormatter],
                    decoration: InputDecoration(
                      labelStyle: textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF828796),
                        fontSize: focusNode.hasFocus ? 12 : 17,
                      ),
                      labelText: 'Номер телефона',
                      filled: true,
                      fillColor: const Color(0xFFF6F6F9),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFFF6F6F9),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFFF6F6F9),
                        ),
                      ),
                    ),
                  ),
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
            LayoutWidget(
              child: Column(
                children: [
                  // TODO: шрифт посмотреть что точно правильный
                  CustomTextCostRowWidget(
                    leftText: 'Тур',
                    // TODO: разделить цену
                    rightText: '${state.booking.tourPrice} ₽',
                    removeTopPadding: true,
                  ),
                  CustomTextCostRowWidget(
                    leftText: 'Топливный сбор',
                    rightText: '${state.booking.fuelCharge} ₽',
                  ),
                  CustomTextCostRowWidget(
                    leftText: 'Сервисный сбор',
                    rightText: '${state.booking.serviceCharge} ₽',
                  ),
                  CustomTextCostRowWidget(
                    leftText: 'К оплате',
                    rightText: '$_totalPrice',
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
        // TODO: разделить цену
        title: 'Оплатить $_totalPrice ₽',
        onTap: () {
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
