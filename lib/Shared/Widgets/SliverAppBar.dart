import 'package:dine/Models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget createCustomSliverAppBar({required Restaurant restaurant}) {
  Widget customSliverAppBar = SliverAppBar(
    floating: false,
    expandedHeight: 350,
    elevation: 0,
    pinned: true,
    collapsedHeight: 100,
    flexibleSpace: FlexibleSpaceBar(
      expandedTitleScale: 1,
      titlePadding: EdgeInsets.all(0),
      title: Container(
        color: Colors.white,
        width: double.infinity,
        height: 115,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            children: [
              // SizedBox(
              //     width: double.infinity,
              // child: TextFormField(
              //   decoration: InputDecoration(
              //     hintText: "Search in Menu",
              //     disabledBorder: OutlineInputBorder(
              //         borderSide:
              //             BorderSide(color: Color(0xFFF4F4FF), width: 0),
              //         borderRadius: BorderRadius.all(Radius.circular(12))),
              //     enabledBorder: OutlineInputBorder(
              //         borderSide:
              //             BorderSide(color: Color(0xFFF4F4FF), width: 0),
              //         borderRadius: BorderRadius.all(Radius.circular(12))),
              //     errorBorder: OutlineInputBorder(
              //         borderSide:
              //             BorderSide(color: Color(0xFFF4F4FF), width: 0),
              //         borderRadius: BorderRadius.all(Radius.circular(12))),
              //     border: OutlineInputBorder(
              //         borderSide:
              //             BorderSide(color: Color(0xFFF4F4FF), width: 0),
              //         borderRadius: BorderRadius.all(Radius.circular(12))),
              //     filled: true,
              //     fillColor: Color(0xFFF4F4FF),
              //   ),
              // )),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 20,
                width: double.infinity,
                child: Center(
                  child: ListView.builder(
                    itemCount: restaurant.tags.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Column(children: [
                              SvgPicture.asset(
                                "assets/fastfood.svg",
                                width: 20,
                                height: 20,
                              ),
                            ]),
                            SizedBox(
                              width: 10,
                            ),
                            Text(restaurant.tags[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      collapseMode: CollapseMode.parallax,
      background: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [Color(0xFFb7975a), Colors.white])),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  child: Image.network(restaurant.logo),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(restaurant.name,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 4,
                ),
                Text("${restaurant.city}, ${restaurant.state}",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  return customSliverAppBar;
}
