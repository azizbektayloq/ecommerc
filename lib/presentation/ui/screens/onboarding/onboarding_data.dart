import '../../resources/app_images.dart';

class OnBoardingData {
  final String title;
  final String subtitle;
  final String image;

  const OnBoardingData({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnBoardingData> onboardingData = [
  OnBoardingData(
    title: 'Discover New Products',
    subtitle:
        'Many new products are discovered by people simply happening upon them while being out and about in the world',
    image: AppImages.onBoarding1,
  ),
  OnBoardingData(
    title: 'Earn Points For Shopping',
    subtitle:
        'The purpose of reward points is to provide an incentive for customers to make repeat purchases.',
    image: AppImages.onBoarding2,
  ),
  OnBoardingData(
    title: 'Get Fast Local Delivery',
    subtitle:
        'Wow Express offers cash on delivery services and fast delivery services so that your customers.',
    image: AppImages.onBoarding3,
  ),
];
