import 'package:booktickets/Widgets/Column_layout.dart';
import 'package:booktickets/Widgets/Ticket_tabs.dart';
import 'package:booktickets/screens/TicketView.dart';
import 'package:booktickets/utils/App_Layout.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children:[
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firsTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child:  TicketView(ticket: ticketList[0],isColor: true,),
            ),
            SizedBox(height: 2,),

            /// A container widget with a white background, padding, and a margin.
            ///
            /// This widget is typically used to group other widgets together and apply
            /// styling to them. It has a white background color, and is padded and
            /// margined by 15 pixels horizontally and 20 pixels vertically.
            ///
            /// {@template container_children}
            /// The child widgets of this container should be placed in a [Column] widget.
            /// {@endtemplate}

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal:15, vertical: 20 ),
              color: Colors.white,
              child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                       Text("Flutter DB", style: Styles.headLineStyle3,),
                     Gap(AppLayout.getHeight(5)),
                     Text("Passenger", style: Styles.headLineStyle4,),
                       ],
                     ),
                     Column(
                       children: [
                         Text("5221 364869", style: Styles.headLineStyle3,),
                         Gap(AppLayout.getHeight(5)),
                         Text("Passport", style: Styles.headLineStyle4,),
                       ],
                     ),

                   ],
                     )
                   ],
                 ),

            )
          ],
        ),
      ]),
    );
  }
}
