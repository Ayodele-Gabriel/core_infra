import 'package:core_infra/utilities/constants.dart';
import 'package:core_infra/screens/status.dart';
import 'package:core_infra/models/transaction_list.dart';
import 'package:flutter/material.dart';

import '../utilities/ci_color.dart';
import '../models/select_service.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Field Agent',
              style: kFieldAgent,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 2.5),
                  child: CircleAvatar(
                    backgroundColor: CIColors.appBar,
                    child: Image.asset('assets/icons/bell.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.5),
                  child: CircleAvatar(
                    backgroundColor: CIColors.appBar,
                    child: Image.asset('assets/icons/search.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SelectService(
                          color: CIColors.selectService1,
                          string: 'assets/icons/cashDeposit.png',
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Cash',
                          style: kSelectService,
                        ),
                        Text(
                          'Deposit',
                          style: kSelectService,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SelectService(
                          color: CIColors.selectService2,
                          string: 'assets/icons/cashWithdrawal.png',
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Cash',
                          style: kSelectService,
                        ),
                        Text(
                          'Withdrawal',
                          style: kSelectService,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SelectService(
                          color: CIColors.selectService3,
                          string: 'assets/icons/createNewCustomer.png',
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Create new',
                          style: kSelectService,
                        ),
                        Text(
                          'Customer',
                          style: kSelectService,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SelectService(
                          color: CIColors.selectService4,
                          string: 'assets/icons/userProfile.png',
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'User',
                          style: kSelectService,
                        ),
                        Text(
                          'Profile',
                          style: kSelectService,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: const SelectService(
                        color: CIColors.selectService4,
                        string: 'assets/icons/approvalStatus.png',
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Approval',
                      style: kSelectService,
                    ),
                    const Text(
                      'Status',
                      style: kSelectService,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Transactions',
                      style: kTransaction,
                    ),
                    Container(
                      height: 30.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          color: const Color.fromRGBO(135, 130, 130, 1),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'see all',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.0, right: 18.0),
                      child: TransactionList(),
                    ),
                    Divider(),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
