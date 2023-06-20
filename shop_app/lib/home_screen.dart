import 'package:flutter/material.dart';
import 'package:shop_app/components_search.dart';
import 'package:shop_app/constants.dart';

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
                SizedBox(
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
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: searchForm(),
          ),
        ],
      ),
    );
  }
}
