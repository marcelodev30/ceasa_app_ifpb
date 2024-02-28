import 'package:ceasa_app_v1/appcolors.dart';
import 'package:flutter/material.dart';

class HomeRuralPage extends StatefulWidget {
  const HomeRuralPage({super.key});

  @override
  State<HomeRuralPage> createState() => _HomeRuralPageState();
}

class _HomeRuralPageState extends State<HomeRuralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.wi,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.ruby,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.midnightMoss,
                ),
                const SizedBox(width: 10),
                const Text('Ola')
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.midnightBlue,
              ))
        ],
      ),
    );
  }
}
