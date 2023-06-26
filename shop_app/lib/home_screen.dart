import 'package:flutter/material.dart';
import 'package:shop_app/components_search.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
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
          ),
          const Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: searchForm(),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_categories.length,
                (index) => CategoryCard(
                  icon: demo_categories[index].icon,
                  title: demo_categories[index].title,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon, title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultBorderRadius),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              Image.asset(icon),
              const SizedBox(height: defaultPadding / 2),
              Text(title)
            ],
          ),
        ));
  }
}
