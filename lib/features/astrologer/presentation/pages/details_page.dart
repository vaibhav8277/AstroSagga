import 'package:astro_sagga/core/constants/app_assets.dart';
import 'package:astro_sagga/core/constants/app_colors.dart';
import 'package:astro_sagga/core/constants/app_styles.dart';
import 'package:astro_sagga/core/constants/app_texts.dart';
import 'package:astro_sagga/features/astrologer/data/models/astrologer_model.dart';
import 'package:astro_sagga/features/astrologer/presentation/widgets/expanded_text.dart';
import 'package:astro_sagga/features/astrologer/presentation/widgets/floating_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  final AstrologerModel astrologer;

  const DetailsPage({super.key, required this.astrologer});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.detailsPageAppBarColor,
          leading: BackButton(color: Colors.white,),
          title: Row(
            children: [
              Text(astrologer.name, style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 6),
              const CircleAvatar(radius: 4, backgroundColor: Colors.green),
            ],
          ),
          actions: [
            SvgPicture.asset(
                AppAssets.iconShare
            ),
            SizedBox(width: 26),
            SvgPicture.asset(
                AppAssets.iconThreeDot
            ),
            SizedBox(width: 32),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      height: 130,
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://randomuser.me/api/portraits/men/32.jpg',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(astrologer.name, style: AppStyles.black600Size20),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                decoration: BoxDecoration(
                  color: const Color(0xFFE9F1FF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                            AppAssets.imgStar
                        ),
                        const SizedBox(width: 4),
                        Row(
                          children: [
                            Text('${astrologer.rating} ', style: AppStyles.black600Size14.copyWith(fontSize: 16)),
                            Text(AppTexts.ratingLabel, style: AppStyles.black500Size12),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${astrologer.experience} ', style: AppStyles.black600Size14.copyWith(fontSize: 16)),
                        Text(AppTexts.experienceLabel, style: AppStyles.black500Size12),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${astrologer.followers ~/ 1000}K ', style: AppStyles.black600Size14.copyWith(fontSize: 16)),
                        Text(AppTexts.followersLabel, style: AppStyles.black500Size12),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                            AppAssets.iconCall
                        ),
                        const SizedBox(width: 4),
                        Row(
                          children: [
                            Text(AppTexts.minutes9k, style: AppStyles.black600Size14),
                            Text(AppTexts.mins, style: AppStyles.black500Size12),
                          ],
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                            AppAssets.iconChat
                        ),
                        const SizedBox(width: 4),
                        Row(
                          children: [
                            Text(AppTexts.minutes22k, style: AppStyles.black600Size14),
                            Text(AppTexts.mins, style: AppStyles.black500Size12),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.detailsPageAppBarColor,
                        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      onPressed: () {},
                      child: Text(AppTexts.followButton, style: AppStyles.white600Size14.copyWith(fontWeight: FontWeight.w500, shadows: [])),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Text(AppTexts.imagesLabel, style: AppStyles.black500Size12.copyWith(fontSize: 16)),
              const SizedBox(height: 12),
              SizedBox(
                height: 122,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) => Container(
                    width: 122,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  separatorBuilder: (_, __) => SizedBox(width: 6),
                  itemCount: 4,
                ),
              ),
              const SizedBox(height: 24),

              Text(AppTexts.sendGifts, style: AppStyles.black500Size12.copyWith(fontSize: 16)),
              const SizedBox(height: 12),
              SizedBox(
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) => _GiftItem(
                    title: AppTexts.pooja,
                    price: AppTexts.price47),
                  separatorBuilder: (_, __) => SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                  itemCount: 4,
                ),
              ),
              const SizedBox(height: 24),

              Text(AppTexts.profileSummary, style: AppStyles.black500Size12.copyWith(fontSize: 16)),
              const SizedBox(height: 8),
              ExpandableText(
                text: AppTexts.profileSummaryDesc),
              const SizedBox(height: 16),

              Text(AppTexts.specialization, style: AppStyles.black500Size12.copyWith(fontSize: 16)),
              const SizedBox(height: 8),
              Text(AppTexts.specializationDesc, style: AppStyles.grey400Size14,),
              const SizedBox(height: 16),

              Text(AppTexts.languages, style: AppStyles.black500Size12.copyWith(fontSize: 16)),
              const SizedBox(height: 8),
              Text(AppTexts.languageDesc, style: AppStyles.grey400Size14,),
              const SizedBox(height: 24),

              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          AppAssets.iconSupport
                      ),
                      SizedBox(width: 12),
                      Expanded(child: Text(AppTexts.chatWithAssistant, style: AppStyles.black500Size12.copyWith(fontSize: 16),)),
                      Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
        Positioned(
          bottom: 32,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              FloatingContactButton(
                iconPath: AppAssets.iconChat,
                label: AppTexts.price10,
                color: Colors.green,
              ),
              FloatingContactButton(
                iconPath: AppAssets.iconCall,
                label: AppTexts.price10,
                color: Colors.green,
              ),
              FloatingContactButton(
                iconPath: AppAssets.iconVideo,
                label: AppTexts.price10,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _GiftItem extends StatelessWidget {
  final String title;
  final String price;

  const _GiftItem({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=800&q=80',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(title),
        Text(price),
      ],
    );
  }
}