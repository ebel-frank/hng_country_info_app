import 'package:country_info/presentation/widgets/placeholders.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListLoadingTile extends StatelessWidget {
  const ListLoadingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: ListView.separated(
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(top: 16),
          itemBuilder: (_, i) {
          return ContentPlaceholder(
          lineType: ContentLineType.twoLines,
          );
        }, separatorBuilder: (_, i) => SizedBox(height: 16.0),));
  }
}
