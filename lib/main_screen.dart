import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'model/menu_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Pecel Lele Cak Su'),
            backgroundColor: Colors.blue[900],
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const MenuList();
              } else if (constraints.maxWidth <= 1200) {
                return const MenuListGrid(gridCount: 4);
              } else {
                return const MenuListGrid(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

class MenuListGrid extends StatelessWidget {
  final int gridCount;

  const MenuListGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: menuItemList.map((item) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(menuItem: item);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        item.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    //   child: Text(
                    //     item.location,
                    //   ),
                    // ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final MenuItem menuItem = menuItemList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(menuItem: menuItem);
              }));
            },
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                        width: 90,
                        height: 90,
                        alignment: Alignment.center,
                        child: Image.asset(menuItem.imageAsset)),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            menuItem.name,
                            style: const TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(children: [
                            Container(
                                height: 15,
                                width: 15,
                                alignment: Alignment.center,
                                child:
                                    Image.asset('assets/images/ic_star.png')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(menuItem.rating,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400))
                          ]),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            menuItem.price,
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: null,
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        child: const Text('+',
                            style: TextStyle(color: Colors.blue)),
                      )),
                ],
              ),
            ),
          );
        },
        itemCount: menuItemList.length,
      ),
    );
  }
}
