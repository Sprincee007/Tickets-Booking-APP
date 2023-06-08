import 'package:booktickets/utils/App_Layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// A screen that displays details about a single hotel.
class HotelScreen extends StatelessWidget {
  /// The details of the hotel to display.
  final Map<String, dynamic> hotel;

  /// Creates a new instance of the [HotelScreen] class.
  ///
  /// Parameters:
  ///   - key: The key to use for the widget.
  ///   - hotel: The details of the hotel to display.
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  /// Builds the widget tree for the screen.
  ///
  /// This method is called by the Flutter framework to build the widget tree for the screen.
  ///
  /// Parameters:
  ///   - context: The build context for the screen.
  ///
  /// Returns:
  ///   A widget that represents the screen.
  @override
  Widget build(BuildContext context) {
    // Build the widget tree
    print('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      /// Widget properties
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: AppLayout.getWidth(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image:  DecorationImage(
                fit: BoxFit.cover ,
                image: AssetImage(
                    "Ta/Images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color:Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color:Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color:Styles.kakiColor),
          ),
        ]

      ),
    );
  }
}
