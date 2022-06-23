import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'data/state/detail_resto/cubit/detail_resto_cubit.dart';
import 'data/state/list_resto/cubit/list_resto_cubit.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late DetailRestoCubit _detailRestoCubit;

  void initState() {
    super.initState();
    String id = Get.parameters['id'] ?? '';
    print(id);
    _detailRestoCubit = DetailRestoCubit()..getDetailResto(id);
  }

  @override
  void dispose() {
    _detailRestoCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _detailRestoCubit,
      child: Scaffold(
        body: BlocBuilder<DetailRestoCubit, DetailRestoState>(
          builder: (context, state) {
            if (state is DetailRestoLoading) {
              return Center(
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                  ),
                ),
              );
            } else if (state is DetailRestoSuccess) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Image.network(
                              'https://restaurant-api.dicoding.dev/images/medium/${state.data.restaurant.pictureId}'),
                        ),
                        SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                // const FavoriteButton(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Container(
                    //   margin: EdgeInsets.fromLTRB(4, 4, 16, 0),
                    //   height: 100,
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: menuItem.imageUrls.map((url) {
                    //       return Padding(
                    //         padding: const EdgeInsets.all(4.0),
                    //         child: ClipRRect(
                    //           borderRadius: BorderRadius.circular(10),
                    //           child: Image.network(url),
                    //         ),
                    //       );
                    //     }).toList(),
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Text(
                                  state.data.restaurant.name,
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Staatliches',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    height: 15,
                                    width: 15,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                        'assets/images/ic_star.png')),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(state.data.restaurant.rating.toString(),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                state.data.restaurant.city,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text(
                        state.data.restaurant.description,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Oxygen',
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
