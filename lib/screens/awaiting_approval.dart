import 'dart:ui';
import 'package:core_infra/screens/status.dart';
import 'package:core_infra/utilities/ci_color.dart';
import 'package:core_infra/utilities/constants.dart';
import 'package:flutter/material.dart';

class AwaitingApproval extends StatelessWidget {
  const AwaitingApproval({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text(
                            'Awaiting Approval',
                            style: kAwaiting,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          color: CIColors.transactionDeclined,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Image.asset('assets/icons/pending.png'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Pending Approval',
                    style: kPending,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    '₦25,000',
                    style: kPendingAmount,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'March 22, 2024',
                    style: kPendingDate,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Deposit Details',
                    style: kPendingDetails,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount',
                        style: kPendingGrey,
                      ),
                      Text(
                        'N 25,000',
                        style: kPendingMoney,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Withdrawal fee',
                        style: kPendingGrey,
                      ),
                      Text(
                        'N 100',
                        style: kPendingMoney,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Withdrawal name',
                        style: kPendingGrey,
                      ),
                      Text(
                        'Kolade Ololade',
                        style: kPendingName,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Narration',
                        style: kPendingGrey,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 120.0),
                          child: Text(
                            'What the money is for goes here',
                            maxLines: 3,
                            softWrap: true,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                            style: kNarration,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 43.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: const Color.fromRGBO(195, 10, 59, 1),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Decline',
                            style: kDecline,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                              child: AlertDialog(
                                scrollable: true,
                                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                content: SizedBox(
                                  height: 235.0,
                                  width: 331.0,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      Image.asset('assets/icons/info.png'),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        'Awaiting Approval',
                                        style: kDialogue1,
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        'Awaiting superior approval, notification will be sent once approved.',
                                        maxLines: 2,
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        style: kDialogue2,
                                      ),
                                      const SizedBox(
                                        height: 30.0,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.popUntil(context, ModalRoute.withName('/second'));
                                        },
                                        child: Container(
                                          width: 130,
                                          height: 43,
                                          decoration: BoxDecoration(
                                            color:
                                                const Color.fromRGBO(43, 155, 91, 1),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Continue',
                                              style: kApprove,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 43.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(43, 155, 91, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Accept',
                            style: kApprove,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
