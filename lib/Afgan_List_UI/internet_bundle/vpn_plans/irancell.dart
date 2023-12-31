import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/other_network/vpn_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Irancell extends StatelessWidget {
  const Irancell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: 'Irancell VPN',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: ListView.builder(
            itemCount: iranCell.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Get.defaultDialog(
                    title: "VPN",
                    backgroundColor: Colors.white,
                    middleText: "Do you want to buy this product?",
                    titleStyle: TextStyle(color: Colors.black),
                    middleTextStyle: TextStyle(color: Colors.black),
                    textConfirm: "Confirm",
                    textCancel: "Cancel",
                    cancelTextColor: Colors.black,
                    confirmTextColor: Colors.black,
                    buttonColor: Colors.blue,
                    barrierDismissible: false,
                    radius: 8,
                    //  onConfirm: () {
                    //   Get.to(() =>
                    //       const VPNOrderPage()); // This will close the dialog.
                    // },
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: CustomWallet6(
                    image: 'assets/Vpn_iran.jpeg',
                    text: iranCell[index],
                    //  text2: 'MTN to MTN',
                    text1: iranCellPrice[index],
                  ),
                ),
              );
            }));
  }
}
