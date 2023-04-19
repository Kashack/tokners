import 'package:flutter/material.dart';
import 'package:tokners/components/small_tag.dart';

class QList extends StatelessWidget {
  const QList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SmallTags(
              color: Color(0xFF22A75D),
              tagNumber: 'Q1',
              tagTextList: [
                'Team set-up',
                'Launch of informational website',
              ],
            ),
          ),
          Expanded(
            child: SmallTags(
              color: Color(0xFF2278D4),
              tagNumber: 'Q2',
              tagTextList: [
                'Presale and exchange listings',
                'Blockchain development and launch',
                'Launch of our MVP',
                'Influencer agency partnerships',
                'Marketing and promotion',
              ],
            ),
          ),
          Expanded(
            child: SmallTags(
              color: Color(0xFFFFD100),
              tagNumber: 'Q3',
              tagTextList: [
                'Celebrity, Creator and Influencer partnerships',
                'Expansion of creator communities on our platform',
                'More Marketing and promotion',
              ],
            ),
          ),
          Expanded(
            child: SmallTags(
              color: Color(0xFFE20613),
              tagNumber: 'Q4',
              tagTextList: [
                'Mainstream partnerships',
                '500 active creator communities',
                '2Million active community members',
                'More Marketing and promotion',
              ],
            ),
          ),
        ],
      ),
    );
  }
}
