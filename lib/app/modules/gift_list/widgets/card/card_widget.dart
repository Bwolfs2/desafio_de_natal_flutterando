import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final color = const Color(0xff3EBCA6);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 2),
              color: Colors.grey.withOpacity(.5),
              blurRadius: 3,
            ),
          ]),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.licdn.com/dms/image/C4D03AQHdymoBuUGFsg/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=8k9f0h0SmZAehqT0eA733s5gl58X0sxqrNLtHx1DaYk"),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Benjamin Carlson"),
                          Spacer(),
                          Text(
                            "27 min ago",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "8 years old",
                            style: TextStyle(color: color),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 0,
              bottom: 10,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        "http://pngimg.com/uploads/bicycle/bicycle_PNG5374.png",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bycicle",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        color: Colors.grey,
                                        blurRadius: 3)
                                  ]),
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        color: Colors.grey,
                                        blurRadius: 3)
                                  ]),
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
