import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_app/domain/state/booking_state/booking_state.dart';
import 'package:hotel_app/ui/global_widgets/layout_widget.dart';
import 'package:hotel_app/ui/hotel_page/widgets/base_information_about_hotel.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../global_widgets/bottom_navigation_block.dart';
import '../global_widgets/hotel_app_bar.dart';
import '../success_page/success_page.dart';
import 'widgets/custom_text_cost_row_widget.dart';
import 'widgets/custom_text_field_widget.dart';
import 'widgets/custom_text_row_widget.dart';
import 'widgets/small_button_widget.dart';
import 'widgets/tourist_widget.dart';

final _formKey = GlobalKey<FormState>();

class BookingPage extends ConsumerStatefulWidget {
  const BookingPage({super.key});

  @override
  ConsumerState<BookingPage> createState() => _BookingPageConsumerState();
}

class _BookingPageConsumerState extends ConsumerState<BookingPage> {
  List<int> listTourists = [1];
  late int _totalPrice;

  // MaskTextInputFormatter maskNumberFormatter = MaskTextInputFormatter(
  //   mask: '+7 (###) ###-##-##',
  //   filter: {"#": RegExp(r'[0-9]')},
  //   type: MaskAutoCompletionType.lazy,
  // );

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
        child: Form(
          key: _formKey,
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
                    CustomTextFieldWidget(
                      // mask: maskNumberFormatter,
                      keyboardType: TextInputType.phone,
                      labelText: 'Номер телефона',
                    ),
                    const SizedBox(height: 8),
                    CustomTextFieldWidget(
                      // TODO: посмотреть другую валидацию
                      // mask: maskEmailFormatter,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Почта',
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
              // TODO: сделать что нибудь со скролом (посмотреть видео может быть)
              ListView.builder(
                shrinkWrap: true,
                itemCount: listTourists.length,
                itemBuilder: (context, index) {
                  return TouristWidget(
                    index: index,
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
                          listTourists.add(1);
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
      ),
      bottomNavigationBar: BottomNavigationBlock(
        // TODO: разделить цену
        title: 'Оплатить $_totalPrice ₽',
        onTap: () {
          if (_formKey.currentState!.validate()) {
            print('success');
          } else {
            print('NOT success!!!');
          }

          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => const SuccessPage(),
          //   ),
          // );
        },
      ),
    );
  }
}
