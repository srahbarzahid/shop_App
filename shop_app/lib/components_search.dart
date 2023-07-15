import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class searchForm extends StatelessWidget {
  const searchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: "search your choice",
        suffixIcon: SizedBox(
          height: 48,
          width: 55,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Center(
                child: Icon(Icons.settings),
              )),
        ),
      ),
    ));
  }
}

const outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    borderSide: BorderSide.none);
