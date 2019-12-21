import 'package:desafio_de_natal_flutterando/app/modules/gift_list/widgets/card/card_widget.dart';
import 'package:flutter/material.dart';

class GiftListPage extends StatefulWidget {
  final String title;
  const GiftListPage({Key key, this.title = "List of Gifts"}) : super(key: key);

  @override
  _GiftListPageState createState() => _GiftListPageState();
}

class _GiftListPageState extends State<GiftListPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Image.network(
              "https://images.vexels.com/media/users/3/149857/isolated/lists/b0acaf8aaf2214fb396bc3073fda936f-hanukkah-caixa-de-presente-amarela.png",
              width: 24,
              height: 24,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              widget.title,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          indicatorWeight: 2,
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("RECENT"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ALL"),
            ),
          ],
        ),
      ),
      body: Stack(
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
          TabBarView(
            controller: _tabController,
            children: <Widget>[
              ListView.separated(
                itemCount: 10,
                padding: EdgeInsets.all(10),
                itemBuilder: (BuildContext context, int index) {
                  return CardWidget();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              ),
              ListView.separated(
                itemCount: 10,
                padding: EdgeInsets.all(10),
                itemBuilder: (BuildContext context, int index) {
                  return CardWidget();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
