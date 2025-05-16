import 'package:astro_sagga/core/constants/app_assets.dart';
import 'package:astro_sagga/core/constants/app_styles.dart';
import 'package:astro_sagga/core/constants/app_texts.dart';
import 'package:astro_sagga/features/astrologer/data/models/astrologer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AstrologerCard extends StatelessWidget {
  final AstrologerModel astrologer;

  const AstrologerCard({super.key, required this.astrologer});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Padding(
           padding: const EdgeInsets.only(top: 22.0,left: 22, right: 22),
           child: Column(
             children: [
               const Align(
                 alignment: Alignment.topRight,
                 child: CircleAvatar(radius: 5, backgroundColor: Colors.green),
               ),
               const SizedBox(height: 8),
               CircleAvatar(radius: 24, backgroundColor: Colors.grey,
               child: Image.network(
                 "https://randomuser.me/api/portraits/men/32.jpg"
               ),),
               const SizedBox(height: 12),

               Text(astrologer.name, style: AppStyles.black600Size14),
               const SizedBox(height: 8),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(AppTexts.rating, style: AppStyles.grey400Size12),
                   Row(
                     children: [
                       SvgPicture.asset(
                         AppAssets.imgStar,
                       ),
                       Text(' ${astrologer.rating}', style: AppStyles.black500Size12),
                     ],
                   ),
                 ],
               ),
               const SizedBox(height: 8),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(AppTexts.exp, style: AppStyles.grey400Size12),
                   Text('${astrologer.experience} ${AppTexts.years}', style: AppStyles.black500Size12),
                 ],
               ),
             ],
           ),
         ),

          Spacer(),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFE9F1FF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.price10,
                  style: AppStyles.black700Size14,
                ),
                const SizedBox(width: 8),
                Text(
                  AppTexts.price20,
                  style: AppStyles.strikeThroughPrice,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
