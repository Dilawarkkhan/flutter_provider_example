import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.add, required this.subtract, required this.value}) : super(key: key);

  final Function() add;
  final Function() subtract;
  final int value;

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 7,
      color: Color(0xffffffff),
       shadowColor: Color(0xfff0f0e8),
       child:
          ListTile(
            leading: InkWell(
              onTap: add,
              child: const Icon(
                Icons.add_sharp,
                size: 30,
              ),
            ),
            title: Center(
              child: Text(
                ' $value',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            trailing: InkWell(
              onTap: subtract,
              child: const Icon(
                Icons.minimize_sharp,
                size: 30,
              ),
            ),
          ),
      );

      // ListView(
      //   children: ListTile.divideTiles(context : context, tiles: [
      //
      //       ListTile(
      //         leading: Icon(
      //           Icons.add_sharp,
      //           size: 30,
      //         ),
      //         title: Text(
      //           ' $value',
      //           style: TextStyle(
      //             fontSize: 20,
      //           ),
      //         ),
      //
      //         onTap: add,
      //       ),
      //     ListTile(
      //       leading: Icon(
      //         Icons.minimize_sharp,
      //         size: 30,
      //       ),
      //       // title: Text(
      //       //   ' $value',
      //       //   style: TextStyle(
      //       //     fontSize: 20,
      //       //   ),
      //       // ),
      //
      //       onTap: subtract,
      //     ),
      //
      //
      //
      //   ]).toList(),
      // )

  }
}
