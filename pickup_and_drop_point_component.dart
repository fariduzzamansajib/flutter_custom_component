import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class PickupAndDropPointComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 0),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.black87),
              ),
            ),
            Dash(
              direction: Axis.vertical,
              length: 50,
              dashLength: 8,
              dashColor: Colors.black87,
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.black87),
              ),
            child:   Container(
                margin: EdgeInsets.all(3),
                // height: 10,
                // width: 10,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  shape: BoxShape.circle,

                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pickup Point",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                "Hazrat Shahjalal International Airport",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey[300],
                    height: 0,
                    indent: 0,
                    thickness: 1,
                    endIndent: 10.0,
                  )),
                  SizedBox(
// height: 40,
                    child: IconButton(
                      color: Colors.white,
                      style:
                          IconButton.styleFrom(backgroundColor: Colors.black87),
                      onPressed: () {},
                      icon: Icon(Icons.add_outlined),
                    ),
                  ),
                ],
              ),
              Text(
                "Drop off point",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                "Search Drop Off Point",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],

    );
  }
}
