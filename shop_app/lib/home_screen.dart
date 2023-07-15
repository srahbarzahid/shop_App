import 'package:flutter/material.dart';
import 'package:shop_app/components_search.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/category.dart';
import 'package:shop_app/section_title.dart';

import 'categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        title: Text(
          'hello',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text('best outfit for you',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const searchForm(),
            const SizedBox(
              height: 26,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoCategories.length,
                  (index) => CategoryCard(
                    icon: demoCategories[index].icon,
                    title: demoCategories[index].title,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SectionTitle(
              title: "New Arrival",
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image5.png"))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
