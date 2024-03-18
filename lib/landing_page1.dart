import 'package:flutter/material.dart';
import 'package:tatak_form/item_student.dart';
import 'package:tatak_form/scan_page.dart';

class LandingPage1 extends StatefulWidget {
  const LandingPage1({super.key});

  @override
  State<LandingPage1> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage1> {
  String label = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBE9EC),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3, // Set flex factor to 3 for 30% height
              child: Card(
                elevation: 3,
                color: const Color(0xFF2C2E93),
                shadowColor: Colors.black,
                margin: const EdgeInsets.only(
                    top: 15, left: 15, right: 15), // Remove any default margins
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),

                child: Column(
                  children: [
                    Expanded(
                      flex: 2, // Set flex factor to 2 for 2 rows
                      child: Container(
                        // Example color for the first section
                        height: double
                            .infinity, // Ensure the Container expands vertically
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 12),
                                color: Colors.transparent,
                                height: double.infinity,
                                child: const Text(
                                  "C.C.S",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ), // Ensure the Container expands vertically
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.only(right: 12),
                                color: Colors.transparent,
                                height: double.infinity,
                                child: const Icon(
                                  Icons.account_circle_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,

                      // Set flex factor to 5 for 85% width
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                          ),

                          // Example color for the second section
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 20),
                                          child: RichText(
                                            text: const TextSpan(
                                              text: 'Total\n',
                                              style: TextStyle(
                                                color: Color(0xFF424242),
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'Per Department',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    textBaseline: TextBaseline
                                                        .alphabetic, // Align the subtext with the alphabetic baseline
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "612",
                                          style: TextStyle(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.only(left: 6),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                padding: EdgeInsets.all(15),
                                                child: Image.asset(
                                                  'assets/ccs.png',
                                                  fit: BoxFit
                                                      .scaleDown, // Fit the image inside while maintaining aspect ratio
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Text(
                                                  "",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(22),
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              foregroundColor:
                                                  const Color(0xFF2C2E93),
                                              side: BorderSide(
                                                  color:
                                                      const Color(0xFF2C2E93)),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    0), // Set borderRadius to 0 for square shape
                                              ),
                                            ),
                                            child: Text("Export XLS")),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            DefaultTabController(
              length: 2, // Number of tabs
              child: Expanded(
                flex: 7,
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Color(0xFF2C2E93),
                      dividerColor: Colors.transparent,
                      indicatorColor: Color(0xFF2C2E93),
                      automaticIndicatorColorAdjustment: true,
                      tabs: [
                        Tab(text: 'Recorded'), // First tab with label 'Tab 1'
                        Tab(text: 'Pending'), // Second tab with label 'Tab 2'
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            child:const ItemStudent(),
                          ),
                          Container(
                            child: ListView.separated(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  splashColor: Colors.indigo[300],
                                  onTap: () {},
                                  child: ListTile(
                                    textColor: Colors.grey[700],
                                    title: Text('Ryan James Macawili'),
                                    leading: const Icon(
                                      Icons.pending_actions_sharp,
                                      color: Color(0xFF2C2E93),
                                    ),
                                    isThreeLine: false,
                                    subtitle: Text("20229464"),
                                    trailing: Text("3:00 pm"),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const Divider(
                                  color: Colors.grey,
                                  thickness: 0.5,
                                  height: 0.4,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Icon(
          Icons.qr_code_scanner_outlined,
          color: Color(0xFFFFFFFF),
        ),
        backgroundColor: const Color(0xFF2C2E93),
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const ScanPage();
              },
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
