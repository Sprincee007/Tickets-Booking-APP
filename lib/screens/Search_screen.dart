import 'package:booktickets/Widgets/Double_text_widget.dart';
import 'package:booktickets/Widgets/Icon_text_widget.dart';
import 'package:booktickets/Widgets/Ticket_tabs.dart';
import 'package:booktickets/utils/App_Layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Scaffold(
backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
           Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(firsTab:"Airline Tickets", secondTab: "Hotels" ,),
           Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: Color(
                0xD91130CE
              ),
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          ),
          child: Center(
            child: Text("Find tickets", style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 20),
            ),
          ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                          "Ta/Images/sit.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Text('20% discount on the early booking of this flight,Make sure to grab it!',
                    style: Styles.headLineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                      color: Color(0xFF3ABBBB),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getHeight(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Gap(AppLayout.getHeight(10)),
                        Text("Take the survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),


                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
