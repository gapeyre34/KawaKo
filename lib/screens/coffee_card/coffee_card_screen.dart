import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CoffeeCardScreen extends StatefulWidget {
  const CoffeeCardScreen({Key? key}) : super(key: key);

  @override
  _CoffeeCardScreenState createState() => _CoffeeCardScreenState();
}

class _CoffeeCardScreenState extends State<CoffeeCardScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                      image: AssetImage("assets/images/coffee/Le_Basic.PNG"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              ClipRect(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  height: 145,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 3,sigmaX: 3, tileMode: TileMode.decal),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.black.withOpacity(0.6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  "Le Gourmand",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "(Chocolat & Miel)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Le café Le Gourmand possède un puissant bouquet d'épices légèrement floral, du chocolat et du miel. Goûtez à un nectar velouté et sucré, des épices noires, de la tonka et du poivre avec une acidité discrète.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Size",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ToggleSwitch(
                  activeBgColor: [Colors.amber.shade800],
                  fontSize: 17,
                  inactiveFgColor: Colors.white,
                  animate: true,
                  curve: Curves.decelerate,
                  minWidth: 500,
                  initialLabelIndex: 0,
                  totalSwitches: 3,
                  labels: ['S', 'M', 'L'],
                  inactiveBgColor: Colors.blueGrey.shade900,
                  //radiusStyle: true,
                  onToggle: (index) {

                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16
                              ),
                            ),
                            Text(
                              "\$ 4.20",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 165,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          width: 110,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade900,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber.shade800,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Center(
                                child: Text(
                                  "4,83",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
