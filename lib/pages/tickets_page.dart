import 'package:cinema_ticket/screens/ticket_screen.dart';
import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({Key? key}) : super(key: key);
  static const List<Map<String, dynamic>> tickets = [
    {
      'MovieName': 'Game of Thrones',
      'CinemaName': 'Duhok Cinema',
      'date': '05/07/2022 ',
    },
    {
      'MovieName': 'Game of Thrones',
      'CinemaName': 'Duhok Cinema',
      'date': '05/07/2022 ',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Get.to(const TicketScreen()),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 87,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: ticketWhiteOp,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          '#${index + 1}',
                          style: Themes().ticketBoday,
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                        height: 75,
                        child: null,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: ticketWhiteOp,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          height: 87,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Movie : ${tickets[index]['MovieName']}',
                                style: Themes().ticketBoday,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cinema',
                                        style: Themes().ticketTitle,
                                      ),
                                      Text(
                                        '${tickets[index]['CinemaName']}',
                                        style: Themes().ticketBoday,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date',
                                        style: Themes().ticketTitle,
                                      ),
                                      Text(
                                        '${tickets[index]['date']}',
                                        style: Themes().ticketBoday,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: tickets.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
