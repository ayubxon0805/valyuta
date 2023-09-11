import 'package:dollar_kurslari/view_model/dollar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Consumer<DollarViewModel>(
            builder: (context, myProvider, child) {
              if (myProvider.products.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Markaziy bank'),
                                      Text(myProvider.products[0].CcyNm_UZ),
                                      Text(myProvider.products[0].Rate),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('NBU '),
                                      Text(myProvider.nbuproducts[23].title),
                                      Text(myProvider.nbuproducts[23].cb_price),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              }
              if (myProvider.nbuproducts.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ewgbsrettyth'),
                              Text(myProvider.nbuproducts[12].Rate),
                              Text(myProvider.nbuproducts[12].cb_price),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return Text('data yoq');
              }
            },
          )
        ],
      ),

      ////////////

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<DollarViewModel>().getNbuProducts();
          context.read<DollarViewModel>().getAllProducts();
        },
      ),
    );
  }
}
