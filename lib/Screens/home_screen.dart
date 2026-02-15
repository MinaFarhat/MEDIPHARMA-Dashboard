// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacyadmin/Screens/login_screen.dart';
import 'package:pharmacyadmin/Screens/orders_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool lang = true;
  String _selectedLanguage = 'English';
  List<Map<String, dynamic>> orders = [
    {
      "image": "images/app/ph.jpg",
      "Full Name": "Mina Zead Farhat",
      "Pharmacy Name": "Mina's Pharmacy",
      "Location": "Damascus/Bab-Toma jgk ,hkjhlkhk",
      "Released On Date": "2/1/2012",
      "Landline Number": 4711919,
      "Phone Number": 0937956046,
      "Cyndicate Card": "images/app/card.jpg",
      "Registration Number": 8565472,
      "Registration Date": "5/2/1989",
      "Email": "minaFarhat12fhjhgjhvj12@gmail.com",
    },
    {
      "image": "images/app/ph.jpg",
      "Full Name": "Mina Zead Farhat",
      "Pharmacy Name": "Mina's Pharmacy",
      "Location": "Damascus/Bab-Toma",
      "Released On Date": "2/1/2012",
      "Landline Number": 4711919,
      "Phone Number": 0937956046,
      "Cyndicate Card": "images/app/card.jpg",
      "Registration Number": 8565472,
      "Registration Date": "5/2/1989",
      "Email": "minaFarhat1212@gmail.com",
    },
    {
      "image": "images/app/ph.jpg",
      "Full Name": "Mina Zead Farhat",
      "Pharmacy Name": "Mina's Pharmacy",
      "Location": "Damascus/Bab-Toma",
      "Released On Date": "2/1/2012",
      "Landline Number": 4711919,
      "Phone Number": 0937956046,
      "Cyndicate Card": "images/app/card.jpg",
      "Registration Number": 8565472,
      "Registration Date": "5/2/1989",
      "Email": "minaFarhat1212@gmail.com",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: DropdownButton<String>(
                          iconEnabledColor: Colors.black,
                          value: _selectedLanguage,
                          underline: Container(),
                          onChanged: (String? newValue) {
                            SystemChrome.setEnabledSystemUIMode(
                              SystemUiMode.manual,
                              overlays: [],
                            );
                            setState(() {
                              _selectedLanguage = newValue!;
                            });
                          },
                          items: <String>['English', 'Arabic']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.lora(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF3467D2),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/app/logo2.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Logout",
                                        style: GoogleFonts.lora(
                                          textStyle: const TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF3467D2),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 16.0),
                                      Text(
                                        "Are you sure you want to logout?",
                                        style: GoogleFonts.lora(
                                          textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 24.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            style: ButtonStyle(
                                              overlayColor:
                                                  WidgetStateProperty.all(
                                                      Colors.transparent),
                                            ),
                                            onPressed: () {
                                              SystemChrome
                                                  .setEnabledSystemUIMode(
                                                SystemUiMode.manual,
                                                overlays: [],
                                              );
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              'Cancel',
                                              style: GoogleFonts.lora(
                                                textStyle: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 12.0),
                                          TextButton(
                                            style: ButtonStyle(
                                              overlayColor:
                                                  WidgetStateProperty.all(
                                                      Colors.transparent),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return const LogInScreen();
                                                  },
                                                ),
                                              );
                                              SystemChrome
                                                  .setEnabledSystemUIMode(
                                                SystemUiMode.manual,
                                                overlays: [],
                                              );
                                            },
                                            child: Text(
                                              'Logout',
                                              style: GoogleFonts.lora(
                                                textStyle: const TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFF3467D2),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Row(
                          children: [
                            Text(
                              "Logout",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.lora(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF3467D2),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                            Icon(
                              Icons.hail_outlined,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: orders.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OrdersComponent(
                              image: orders[index]["image"],
                              fullName: orders[index]["Full Name"],
                              pharmacyName: orders[index]["Pharmacy Name"],
                              location: orders[index]["Location"],
                              releasedOnDate: orders[index]["Released On Date"],
                              landlineNumber: orders[index]["Landline Number"],
                              phoneNumber: orders[index]["Phone Number"],
                              cyndicateCard: orders[index]["Cyndicate Card"],
                              registrationNumber: orders[index]
                                  ["Registration Number"],
                              registrationDate: orders[index]
                                  ["Registration Date"],
                              email: orders[index]["Email"],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
