import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmerWidget extends StatelessWidget {
  const LoadingShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    return Shimmer.fromColors(
      loop: 0,
      enabled: true,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsetsDirectional.all(8),
        itemCount: 2,
        itemBuilder: (_, int index) {
          return Container(
            height: screenSize.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
          );
        },
        separatorBuilder: (_, __) {
          return const SizedBox(height: 10);
        },
      ),
    );
  }
}
