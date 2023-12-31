import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/AWCC_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/etisalat_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/mtn_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/roshan_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/salaam_t.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/subscription_card.dart';

class NetworTypePage extends StatelessWidget {
  final String image;
  final String text;

  const NetworTypePage({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: CustomText(
            text: 'Network',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //  backgroundColor: Color.fromARGB(255, 206, 203, 203),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () =>
                  text == 'Top up Card'?Get.to(()=>SalaamT()):
                   Get.to(() => Scard(
                        text: "Salaam",
                        imageUrl: image,
                        text1: text,
                      )),
                  child: CustomWallet5(
                      text: 'Salaam', image: 'assets/salaam1.png')),
              InkWell(
                onTap: () => text == 'Top up Card'?Get.to(()=>AWCCT()) : Get.to(() => Scard(
                      text: 'AWCC',
                      imageUrl: image,
                      text1: text,
                    )),
                child: CustomWallet5(text: 'AWCC', image: 'assets/AWCC1.png'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => text == 'Top up Card'?Get.to(()=>MtnT()) : Get.to(() =>
                Scard(
                      text: 'MTN',
                      imageUrl: image,
                      text1: text,
                    )),
                child: CustomWallet5(text: 'MTN', image: 'assets/MTN1.jpeg'),
              ),
              InkWell(
                onTap: () =>text == 'Top up Card'?Get.to(()=>RoshanT()) : Get.to(() => Scard(
                      text: 'Roshan',
                      imageUrl: image,
                      text1: text,
                    )),
                child:
                    CustomWallet5(text: 'Roshan', image: 'assets/roshan1.png'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () =>text == 'Top up Card'?Get.to(()=>ETisalatT()) : Get.to(() => Scard(
                  text: 'Etisalat',
                  imageUrl: image,
                  text1: text,
                )),
            child:
                CustomWallet5(text: 'Etisalat', image: 'assets/etisalat1.png'),
          ),
        ],
      ),
    );
  }
}
