import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';

List<Map> transacList = [
  {"name": "Uber eats", "price": "44.99", "date": "06/03/2022"},
  {"name": "Theater", "price": "22.43", "date": "13/02/2022"},
  {"name": "Candy crush", "price": "223.19", "date": "02/01/2022"},
  {"name": "Auchan", "price": "12.23", "date": "29/02/2022"},
];

class ListTransac extends StatelessWidget {
  const ListTransac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        //controller: _scrollController,
        itemCount: transacList.length,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 1,
        //   crossAxisSpacing: defaultPadding,
        //   mainAxisSpacing: defaultPadding,
        //   childAspectRatio: 2.4,
        // ),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, index) {
          // final item = jsonList.toString();
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 70,
                    child: Image.asset(
                        "images/transac" + (index + 1).toString() + ".png")),
                Column(
                  children: [
                    Text(transacList[index]["name"]),
                    Text(transacList[index]["date"])
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(transacList[index]["price"]),
                ),
              ],
            ),
          );
        });
  }
}
