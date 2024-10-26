import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/spacing.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        padding: const EdgeInsets.all(8.0),
        itemCount: 5, // Adjust the count based on your needs
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                color: Colors.black,
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.black,
                          width: 70,
                          height: 10,
                        ),
                        const HSpace(30),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.blue.shade200),
                              width: 60,
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.blue.shade200),
                              width: 20,
                              height: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                    const VSpace(10),
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.blue.shade200),
                      height: 10,
                    ),
                    const VSpace(2),
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.blue.shade200),
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
