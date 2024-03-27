import 'package:core_infra/models/transaction_status.dart';
import 'package:core_infra/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'awaiting_approval.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> with SingleTickerProviderStateMixin {
  late double width;

  late TabController controller;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    controller =  TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/icons/arrow-left.png'),
          ),
          title: const Text(
            'Status',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          bottom: TabBar(
            indicatorColor: setColor(tabIndex),
            onTap: (index) {
              setState(() {
                tabIndex = index;
              });
            },
            controller: controller,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(
                child: Text(
                  'Approved',
                  style: kStatusChoice,
                ),
              ),
              Tab(
                child: Text(
                  'Pending',
                  style: kStatusChoice,
                ),
              ),
              Tab(
                child: Text(
                  'Declined',
                  style: kStatusChoice,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       GestureDetector(
            //         onTap: () {
            //           pageController.animateToPage(0,
            //               duration: Duration(milliseconds: 250),
            //               curve: Curves.bounceInOut);
            //         },
            //         child: Text(
            //           'Approved',
            //           style: kStatusChoice,
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: () {
            //           pageController.animateToPage(1,
            //               duration: Duration(milliseconds: 250),
            //               curve: Curves.bounceInOut);
            //         },
            //         child: Text(
            //           'Pending',
            //           style: kStatusChoice,
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: () {
            //           pageController.animateToPage(2,
            //               duration: Duration(milliseconds: 250),
            //               curve: Curves.bounceInOut);
            //         },
            //         child: Text(
            //           'Declined',
            //           style: kStatusChoice,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: width * .8,
                      height: 40.0,
                      child: CupertinoTextField(
                        prefix: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/icons/searchStatus.png'),
                        ),
                        placeholder: 'Search',
                        placeholderStyle: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      )),
                  Image.asset('assets/icons/calendar.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),

            Expanded(
              child: TabBarView(
                controller: controller,
                children: [
                  ListView.builder(
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, right: 18.0),
                            child: TransactionStatus(
                              transactionStatus: 'Approved',
                              style: kTransactionApproved,
                            ),
                          ),
                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/third');
                              },
                              child: const TransactionStatus(
                                transactionStatus: 'Awaiting approval',
                                style: kTransactionPending,
                              ),
                            ),
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, right: 18.0),
                            child: TransactionStatus(
                              transactionStatus: 'Declined',
                              style: kTransactionDeclined,
                            ),
                          ),
                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: PageView(
            //     controller: pageController,
            //     onPageChanged: (index) {
            //       setState(() {
            //         pageChanged = index;
            //       });
            //     },
            //     children: [
            //       ListView.builder(
            //         itemCount: 15,
            //         itemBuilder: (BuildContext context, int index) {
            //           return Column(
            //             children: [
            //               Padding(
            //                 padding: EdgeInsets.only(left: 18.0, right: 18.0),
            //                 child: TransactionStatus(
            //                   transactionStatus: 'Approved',
            //                   style: kTransactionApproved,
            //                 ),
            //               ),
            //               Divider(),
            //               SizedBox(
            //                 height: 10.0,
            //               ),
            //             ],
            //           );
            //         },
            //       ),
            //       ListView.builder(
            //         itemCount: 10,
            //         itemBuilder: (BuildContext context, int index) {
            //           return const Column(
            //             children: [
            //               Padding(
            //                 padding: EdgeInsets.only(left: 18.0, right: 18.0),
            //                 child: TransactionStatus(
            //                   transactionStatus: 'Awaiting approval',
            //                   style: kTransactionPending,
            //                 ),
            //               ),
            //               Divider(),
            //               SizedBox(
            //                 height: 10.0,
            //               ),
            //             ],
            //           );
            //         },
            //       ),
            //       ListView.builder(
            //         itemCount: 5,
            //         itemBuilder: (BuildContext context, int index) {
            //           return const Column(
            //             children: [
            //               Padding(
            //                 padding: EdgeInsets.only(left: 18.0, right: 18.0),
            //                 child: TransactionStatus(
            //                   transactionStatus: 'Declined',
            //                   style: kTransactionDeclined,
            //                 ),
            //               ),
            //               Divider(),
            //               SizedBox(
            //                 height: 10.0,
            //               ),
            //             ],
            //           );
            //         },
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  setColor(int tabIndex) {
    if (tabIndex == 0) {
      return const Color.fromRGBO(96, 223, 178, 1);
    } else if (tabIndex == 1) {
      return const Color.fromRGBO(255, 198, 51, 1);
    } else if (tabIndex == 2) {
      return const Color.fromRGBO(195, 10, 59, 1);
    }
  }
}


