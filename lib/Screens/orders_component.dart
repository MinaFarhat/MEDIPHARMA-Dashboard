// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacyadmin/Screens/details_of_request.dart';
import 'package:pharmacyadmin/Screens/show_photo.dart';

class OrdersComponent extends StatefulWidget {
  String image;
  String fullName;
  String pharmacyName;
  String location;
  String releasedOnDate;
  int landlineNumber;
  int phoneNumber;
  String cyndicateCard;
  int registrationNumber;
  String registrationDate;
  String email;
  OrdersComponent(
      {required this.image,
      required this.fullName,
      required this.pharmacyName,
      required this.location,
      required this.releasedOnDate,
      required this.landlineNumber,
      required this.phoneNumber,
      required this.cyndicateCard,
      required this.registrationNumber,
      required this.registrationDate,
      required this.email,
      super.key});

  @override
  State<OrdersComponent> createState() => _OrdersComponentState();
}

class _OrdersComponentState extends State<OrdersComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailsOfRequest(
                image: widget.image,
                fullName: widget.fullName,
                pharmacyName: widget.pharmacyName,
                location: widget.location,
                releasedOnDate: widget.releasedOnDate,
                landlineNumber: widget.landlineNumber,
                phoneNumber: widget.phoneNumber,
                cyndicateCard: widget.cyndicateCard,
                registrationNumber: widget.registrationNumber,
                registrationDate: widget.registrationDate,
                email: widget.email,
              );
            },
          ),
        );
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300, // Shadow color
              offset: const Offset(0, 3), // Offset in x and y direction
              blurRadius: 2, // Blur radius
              spreadRadius: 0, // Spread radius
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ShowPhoto(
                              image: widget.image,
                              name: widget.pharmacyName,
                            );
                          },
                        ),
                      );
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFF3467D2),
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          widget.pharmacyName,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lora(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              color: Color(0xFF3467D2),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          widget.fullName,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lora(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300.withOpacity(0.3),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 7),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            "The Location:",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lora(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                color: Color(0xFF3467D2),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            widget.location,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lora(
                              textStyle: TextStyle(
                                fontSize: 15.5,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 7),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            "Released On Date:",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lora(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                color: Color(0xFF3467D2),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.29,
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            widget.releasedOnDate,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lora(
                              textStyle: TextStyle(
                                fontSize: 15.5,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 7),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.39,
                          child: Text(
                            "Landline Number:",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lora(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                color: Color(0xFF3467D2),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.31,
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            widget.landlineNumber.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lora(
                              textStyle: TextStyle(
                                fontSize: 15.5,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
