import 'package:afghan_net/Afgan_List_UI/internet_bundle/etisalat_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class MtnWeeklyVc extends StatelessWidget {
  const MtnWeeklyVc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(
              left: 90,
            ),
            child: CustomText(
              text: 'Weekly',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: vbMTNwb.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  showDialogPhone();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: CustomWallet7(
                    image: 'assets/MTN1.jpeg',
                    text: vbMTNwb[index],
                    text2: 'MTN to MTN',
                    text1: vbMTNwb2[index],
                  ),
                ),
              );
            }));
  }
}
