import 'dart:ui';
import 'package:astro_sagga/core/constants/app_assets.dart';
import 'package:astro_sagga/core/constants/app_styles.dart';
import 'package:astro_sagga/core/constants/app_texts.dart';
import 'package:astro_sagga/features/astrologer/application/providers/astrologer_provider.dart';
import 'package:astro_sagga/features/astrologer/presentation/pages/details_page.dart';
import 'package:astro_sagga/features/astrologer/presentation/widgets/astrologer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final astrologers = ref.watch(astrologerListProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black.withOpacity(0.7),
        unselectedItemColor: Colors.black.withOpacity(0.7),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(AppAssets.iconHome,), label: AppTexts.home),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppAssets.iconCourse), label: AppTexts.courses),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppAssets.iconCourse2), label: AppTexts.shop),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppAssets.iconUserProfile), label: AppTexts.profile),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.iconVector,
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.iconSearch,
                    ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                      AppAssets.iconElements,
                    ),
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppAssets.iconWallet,
                          ),
                          SizedBox(width: 4),
                          Text(AppTexts.price100, style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      _CategoryItem(icon: AppAssets.imgKundali, title: AppTexts.kundali),
                      _CategoryItem(icon: AppAssets.imgHoroscope, title: AppTexts.horoscope),
                      _CategoryItem(icon: AppAssets.imgMatchMaking, title: AppTexts.matchMaking),
                      _CategoryItem(icon: AppAssets.imgSubhMuhurat, title: AppTexts.subhMuhurat),
                      _CategoryItem(icon: AppAssets.imgKundali, title: AppTexts.kundali),
                      _CategoryItem(icon: AppAssets.imgHoroscope, title: AppTexts.horoscope),
                      _CategoryItem(icon: AppAssets.imgMatchMaking, title: AppTexts.matchMaking),
                      _CategoryItem(icon: AppAssets.imgSubhMuhurat, title: AppTexts.subhMuhurat),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0306, 0.9738],
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.4),  // transparent top
                        Color.fromRGBO(0, 0, 0, 0.1),  // 20% black bottom
                      ],
                      transform: GradientRotation(183.47 * 3.1416 / 180), // convert deg to radians
                    ),
                    backgroundBlendMode: BlendMode.darken, // Blend both layers
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2,
                        vertical: 20),
                        child: Text(
                          AppTexts.exploreZodiac,
                          style: AppStyles.white600Size14,
                        ),
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    color: Color.fromARGB(181, 180, 180, 180), // solid background
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    "https://randomuser.me/api/portraits/men/32.jpg",
                                  ),
                                  backgroundColor: Colors.grey, // optional fallback
                                ),
                                SizedBox(width: 6),
                                Text(AppTexts.profileName, style: AppStyles.white600Size12,)
                              ],
                            ),
                  ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4), // blur(4px)
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0x80AFAFAF), // semi-transparent
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.remove_red_eye_outlined, color: Colors.white),
                          const SizedBox(width: 6),
                          Text(AppTexts.price13k,
                            style: AppStyles.black500Size12.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppTexts.ourExperts, style: AppStyles.black600Size20),
                    SvgPicture.asset(
                      AppAssets.iconFilter,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: astrologers.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(astrologer: astrologers[index])));
                        },
                        child: AstrologerCard(astrologer: astrologers[index]));
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String icon;
  final String title;
  const _CategoryItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
          ),
          const SizedBox(height: 6),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.categoryTitle
          )
        ],
      ),
    );
  }
}