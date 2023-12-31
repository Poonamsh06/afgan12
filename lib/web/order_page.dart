import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/widgets/dotted_line.dart';
import 'package:afghan_net/widgets/text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage_Web extends StatelessWidget {
  const OrderPage_Web({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: CustomText(
              text: 'Order',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 20, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: InkWell(
                  onTap: () => _showDialog(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            // spreadRadius: 5,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ]),
                    child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/etisalat1.png', // Replace with your image asset path
                              width: 65.0,
                              height: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: 'Product 1',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.005,
                                  // width: MediaQuery.of(context).size.width * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 23),
                                  child: CustomText1(text: '781144198'),
                                ),
                              ],
                            ),
                          ),
                          CustomText1(text: '142.0AF'),
                          Icon(
                            iconsList[index],
                            size: 24.0,
                            color: colorList[index],
                          ),
                        ]),
                  ),
                ),
              );
            }));
  }

  _showDialog() {
    Get.defaultDialog(
      backgroundColor: Colors.white,
      title: '',
      titleStyle: TextStyle(fontSize: 0, fontWeight: FontWeight.bold),
      radius: 0.0,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 48),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images-removebg-preview.png', // Replace with your image asset path
                    width: 60.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 61),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/logo9_13_4390-removebg.png", // Replace with your image asset path
                    width: 70.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.close,
                  size: 25,
                  color: const Color.fromARGB(255, 61, 78, 107),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: '21-Sep-2023',
                  fontSize: 10,
                  fontWeight: FontWeight.normal),
              SizedBox(
                width: 15,
              ),
              CustomText(
                  text: '12:50PM', fontSize: 10, fontWeight: FontWeight.normal),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'State:',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                      softWrap: true, // Enable text wra
                    ),
                    Text(
                      'Pending',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                      softWrap: true, // Enable text wra
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                DottedLineHorizontal(
                  color: Colors.black,
                  height: 0.5,
                  lineWidth: 1.0,
                  dotWidth: 1.0,
                  spacing: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Network type:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: 'MTN',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Bundle type:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: 'Voice Calling',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CustomText(
                //         text: 'Price:',
                //         fontSize: 13,
                //         fontWeight: FontWeight.normal),
                //     CustomText(
                //         text: '250 AF',
                //         fontSize: 13,
                //         fontWeight: FontWeight.normal),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Phone no:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: '0770770333',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Order no:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: '1', fontSize: 13, fontWeight: FontWeight.normal),
                  ],
                ),
                DottedLineHorizontal(
                  height: 0.5,
                  lineWidth: 1.0,
                  dotWidth: 1.0,
                  spacing: 4.0,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomText(
                    text: '1000 minutes MTN to MTN ',
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Price',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: '250 AF',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: DottedLineHorizontal(
                    color: Colors.red,
                    height: 0.5,
                    lineWidth: 1.0,
                    dotWidth: 1.0,
                    spacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomText(
                      text: 'Just reason Place',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
