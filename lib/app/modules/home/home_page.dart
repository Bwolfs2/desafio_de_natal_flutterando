import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MenuItem> menus = [
    MenuItem(
        icon:
            "https://images.vexels.com/media/users/3/149857/isolated/lists/b0acaf8aaf2214fb396bc3073fda936f-hanukkah-caixa-de-presente-amarela.png",
        description: "List of Gifts",
        route: "/gifts"),
    MenuItem(
        icon:
            "https://pt.seaicons.com/wp-content/uploads/2015/10/Christmas-Gift-green-icon.png",
        description: "My of Gifts",
        route: "/gifts"),
    MenuItem(
        icon:
            "https://cdn3.iconfinder.com/data/icons/avatar-flat-vol-3/150/avatar__person__user__profile__young__boy__glasses-128.png",
        description: "My profile",
        route: "/gifts"),
    MenuItem(
        icon: "https://image.flaticon.com/icons/png/128/891/891391.png",
        description: "Logout",
        route: "/gifts"),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Opacity(
              child: Image.network(
                "https://images.pexels.com/photos/1551490/pexels-photo-1551490.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                fit: BoxFit.cover,
              ),
              opacity: .1,
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  child: Text(
                    "Welcome to Christmas Gift",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(40),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, menus[index].route);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  color: Colors.black12)
                            ]),
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                child: Image.network(menus[index].icon),
                              ),
                              Text(menus[index].description)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: 4,
                ),
                Image.network(
                  "https://image.flaticon.com/icons/png/512/1366/1366813.png",
                  width: 200,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem {
  final String icon;
  final String description;
  final String route;

  MenuItem({this.icon, this.description, this.route});
}
