import 'package:booktickets/screens/Edit_Profile_screen.dart';
import 'package:booktickets/utils/App_Layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Styles.primaryColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Styles.primaryColor,
                Styles.textColor,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
              child: SizedBox(height: 20),
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
              ,
              SizedBox(height: 20),
              Text(
                'Olan Shef',
                style: Styles.headLineStyle1.copyWith(color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'shefOlan32@gmail.com',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the EditProfilePage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfileScreen()),
                  );
                },
                child: const Text('Edit Profile'),
                style: ElevatedButton.styleFrom(
                  primary: Styles.textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bio',
                        style: Styles.headLineStyle2.copyWith(color: Styles.primaryColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Love Traveling, playing, seeing people around, making new friends, having parties, going to countries with huge waterfalls, and so much more',
                        style: Styles.textStyle,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Interests',
                        style: Styles.headLineStyle2.copyWith(color: Styles.primaryColor),
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        spacing: 10,
                        children: [
                          Chip(
                            label: Text('Eating'),
                            backgroundColor: Styles.primaryColor.withOpacity(0.2),
                            labelStyle: Styles.textStyle.copyWith(
                              color: Styles.primaryColor,
                            ),
                          ),
                          Chip(
                            label: Text('Traveling'),
                            backgroundColor: Styles.primaryColor.withOpacity(0.2),
                            labelStyle: Styles.textStyle.copyWith(
                              color: Styles.primaryColor,
                            ),
                          ),
                          Chip(
                            label: Text('Conversing'),
                            backgroundColor: Styles.primaryColor.withOpacity(0.2),
                            labelStyle: Styles.textStyle.copyWith(
                              color: Styles.primaryColor,
                            ),
                          ),
                          Chip(
                            label: Text('Exploring'),
                            backgroundColor: Styles.primaryColor.withOpacity(0.2),
                            labelStyle: Styles.textStyle.copyWith(
                              color: Styles.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
