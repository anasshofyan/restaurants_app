import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_app/data/model/menu_item.dart';
import 'package:restaurants_app/data/state/list_resto/cubit/list_resto_cubit.dart';
import 'package:restaurants_app/api/api_provider.dart';
import 'detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isShow = false;
  final controller = TextEditingController();
  List<MenuItemResto> menuItemResto = allMenuItem;
  late ListRestoCubit _listRestoCubit;

  void showInput() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  void initState() {
    super.initState();
    _listRestoCubit = ListRestoCubit()..getListResto();
  }

  @override
  void dispose() {
    _listRestoCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _listRestoCubit,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
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
          body: BlocBuilder<ListRestoCubit, ListRestoState>(
            builder: (context, state) {
              if (state is ListRestoLoading) {
                return Center(
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                    ),
                  ),
                );
              } else if (state is ListRestoSuccess) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                      children: List.generate(state.data.count, (index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) {
                        //   return DetailScreen(menuItem: menuItem);
                        // }));
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
                                  child: Image.network(
                                      'https://restaurant-api.dicoding.dev/images/medium/${state.data.restaurants[index].pictureId}')),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      state.data.restaurants[index].name,
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
                                      Text(
                                          state.data.restaurants[index].rating
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400))
                                    ]),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Text(
                                      state.data.restaurants[index].city,
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
                  })),
                );
              }
              return Container();
            },
          )),
    );
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
