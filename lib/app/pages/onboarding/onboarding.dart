import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardContent extends StatelessWidget {
  final String svg, title, description;

  OnboardContent({
    required this.svg,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          svg,
          height: 250,
        ),
        const Spacer(),
        Text(title, textAlign: TextAlign.left, style: textOnboardingMedium()),
        Text(description,
            textAlign: TextAlign.center, style: textOnboardingBold()),
        const Spacer(),
      ],
    );
  }
}

class OnboardingDemo extends StatefulWidget {
  @override
  _OnboardingDemoState createState() => _OnboardingDemoState();
}

class _OnboardingDemoState extends State<OnboardingDemo> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  children: demo_data.map((data) {
                    return OnboardContent(
                      svg: data.svg,
                      title: data.title,
                      description: data.description,
                    );
                  }).toList(),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    demo_data.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                  const Spacer(),
                  MaterialButton(
                    onPressed: _nextPage,
                    child: SvgPicture.asset("assets/Next.svg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;

  DotIndicator({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? Tcolor.secondaryText : Tcolor.button,
      ),
    );
  }
}

class Onboard {
  final String svg, title, description;

  Onboard({
    required this.svg,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    svg: "assets/svg1.svg",
    title: "Online Study is the",
    description: "Best choice for everyone.",
  ),
  Onboard(
    svg: "assets/svg2.svg",
    title: "Best platform for both",
    description: "Teachers & Learners",
  ),
  Onboard(
    svg: "assets/svg3.svg",
    title: "Learn Anytime,",
    description: "kontol",
  ),
];
