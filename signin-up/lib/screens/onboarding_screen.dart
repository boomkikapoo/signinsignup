import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0; // Track the current page index

  // Define a list of background colors corresponding to each page
  final List<Color> pageColors = [Colors.blue, Colors.red, Colors.green, Colors.orange];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    // Go to the next page if not on the last page
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      setState(() {
        _currentPage++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container( // Use a Container for background color
          color: pageColors[_currentPage], // Set background color based on current page
          child: PageView.builder(
            controller: _pageController,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: onboardingData.length,
            itemBuilder: (context, index) {
              return OnboardPage(
                text: onboardingData[index]['text']!,
                imageAssetPath: onboardingData[index]['image']!,
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          // Handle taps on the bottom navigation items
          if (index == _currentPage + 1) {
            _goToNextPage();
          } else if (index == _currentPage - 1) {
            // Handle going to the previous page if needed
            _pageController.previousPage(
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
            );
            setState(() {
              _currentPage--;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before),
            label: 'Previous',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next),
            label: 'Next',
          ),
        ],
      ),
    );
  }
}

class OnboardPage extends StatelessWidget {
  final String text;
  final String imageAssetPath;

  OnboardPage({required this.text, required this.imageAssetPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageAssetPath,
          height: 200, // Adjust the height as needed
        ),
        SizedBox(height: 16),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}

final List<Map<String, String>> onboardingData = [
  {
    'text': 'KITH x Clarks x adidas Samba\nA three-way collaboration between Kith, Clarks, and adidas, the sneaker has the upper of a Samba, offered in the models classic white and green colorway, with the chunky crepe sole of a Clarks shoe.',
    'image': 'Asset/Images/adi.png',    
  },
  {
    'text': 'Moncler x Salehe Bembury Trailgrip Grain Sneakers\nArriving in three colorways, the outdoor-focused sneakers are crafted from embroidered ballistic nylon, which has been made waterproof through a GORE-TEX membrane and sits on top of a special Vibram MEGAGRIP rubber compound.',
    'image': 'Asset/Images/bem.png',
  },
  {
    'text': 'Corteiz x Nike Air Max 95 SP\nIt all started in London with a crossbar challenge where those with good aim got a pair of sneakers and ended with the streets of Paris packed with people chasing a bus that promised to provide fans with access to exclusive sneakers.',
    'image': 'Asset/Images/air95.png',
  },
  {
    'text': 'Puma x Pleasures Velophasis Overdyed\nThis pair of sneakers was luckily not affected by the shortage of pink paint and comes with an “overdyed” finish courtesy of Los Angeles-based streetwear label PLEASURES.',
    'image': 'Asset/Images/puma.png',
  },
  {
    'text': 'adidas x Wales Bonner Samba Metallic\nThe pair continued their strong collaborative run in 2023 with new retro running sneakers, full tracksuits, and neutral-colored nubuck Sambas. Trying to pick a highlight from the newest adidas x Wales Bonner collection isn't easy, but we've done just that.
',
    'image': 'Asset/Images/sam.png',
  },
];

