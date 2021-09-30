import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class EnergyGainShow extends StatefulWidget{
  final List<int> monthlyGain;
  final List<int> dailyGain;

  const EnergyGainShow({Key? key, required this.monthlyGain, required this.dailyGain}) : super(key: key);
  @override
  State<EnergyGainShow> createState() => _EnergyGainShowState(dailyGain, monthlyGain);
}

class _EnergyGainShowState extends State<EnergyGainShow> {
  final List<int> monthlyGain;
  final List<int> dailyGain;
  late List<int> currentGain;
  _EnergyGainShowState(this.monthlyGain, this.dailyGain);
  @override
  void initState() {
    super.initState();
    currentGain = monthlyGain;
  }
  @override
  Widget build(BuildContext context) {
    print(currentGain);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Energy gain".text.white.semiBold.xl2.make(),
            Row(
              children: [
                ElevatedButton(onPressed: () {currentGain = monthlyGain; setState(() {});},
                child: "Monthly".text.make()),
                ElevatedButton(onPressed: () {currentGain = dailyGain; setState(() {}); },
                child: "Daily".text.make()),
              ],
            )
          ],
        ),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: currentGain.length,
          itemBuilder: (BuildContext context, int index)=>Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              currentGain[index].text.white.extraBold.xl4.make().p8(),
              "monthName".text.orange200.make(),
            ],
          ).box.color(Themes.darkOrangeColor).roundedSM.width(130).make().p8(),
        ).py12().expand(),
      ],
    ).box.height(220).color(Themes.lightOrangeColor).roundedSM.p20.make().p16();
  }
}