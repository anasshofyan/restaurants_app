import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'model/menu_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isShow = false;
  final controller = TextEditingController();
  List<MenuItemResto> menuItemResto = allMenuItem;

  void showInput() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          actions: <Widget>[
            IconButton(
              icon: isShow
                  ? Icon(
                      Icons.search,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
              onPressed: showInput,
            )
          ],
          title: isShow
              ? Text('Penyetan Cak Su')
              : Container(
                  width: double.infinity,
                  height: 40,
                  child: Center(
                      child: TextField(
                          onChanged: searchMenu,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Cari menu yang kamu suka..',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 0, 10, 10)))),
                ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: menuItemResto.length,
            itemBuilder: (context, index) {
              final menuItem = menuItemResto[index];
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
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                Container(
                                    height: 15,
                                    width: 15,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                        'assets/images/ic_star.png')),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(menuItem.rating,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                menuItem.price,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
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
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                            ),
                            child: const Text('+',
                                style: TextStyle(color: Colors.blue)),
                          )),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  void searchMenu(String query) {
    final suggestions = allMenuItem.where((menuItem) {
      final menuTitle = menuItem.name.toLowerCase();
      final input = query.toLowerCase();

      return menuTitle.contains(input);
    }).toList();
    setState(() => menuItemResto = suggestions);
    print(query);
  }
}
