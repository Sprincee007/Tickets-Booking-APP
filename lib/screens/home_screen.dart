import 'dart:math';

import 'package:booktickets/Widgets/Double_text_widget.dart';
import 'package:booktickets/screens/Hotel_screen.dart';
import 'package:booktickets/screens/TicketView.dart';
import 'package:booktickets/utils/App_Layout.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// The home screen widget for the app.
class HomeScreen extends StatelessWidget {
  /// Creates a new instance of the [HomeScreen] class.
  ///
  /// Parameters:
  ///   - key: The key to use for the widget.
  const HomeScreen({Key? key}) : super(key: key);

  /// Builds the widget tree for the home screen.
  ///
  /// This method is called by the Flutter framework to build the widget tree for the home screen.
  ///
  /// Parameters:
  ///   - context: The build context for the home screen.
  ///
  /// Returns:
  ///   A widget that represents the home screen.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Good morning", style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            "Book Tickets", style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: (AppLayout.getHeight(50)),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                              "Ta/Images/icon.jpg"
                          )
                        )
                      ),
                    )
                    ],
                ),
                const Gap(25),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF4F6FD),
                  ),
                  style: Styles.headLineStyle4,
                  onChanged: (value) {
                    // Handle search query changes here
                  },
                ),
                const Gap(40),
                const AppDoubleTextWidget(bigText: "Upcoming flights", smallText: "View all")
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(15),
          SingleChildScrollView(
             scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children:hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
          ),
          )
        ],
      ),
    );
  }
}
