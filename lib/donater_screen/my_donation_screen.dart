import 'package:flutter/material.dart';
import 'package:multiplatform_donation_app/bottom_navigation.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String daysLeft;
  final double progress;
  final String collectedAmount;

  const CustomCard({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.daysLeft,
    required this.progress,
    required this.collectedAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.timer, size: 16),
                      const SizedBox(width: 4),
                      Text(daysLeft),
                    ],
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${(progress * 100).toStringAsFixed(0)}%',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(collectedAmount),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildGridItem(String imagePath, String count, String text) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}

class DonaterMyDonationScreen extends StatefulWidget {
  static const routeName = '/donater_my_donation';
  @override
  State<DonaterMyDonationScreen> createState() =>
      _DonaterMyDonationScreenState();
}

class _DonaterMyDonationScreenState extends State<DonaterMyDonationScreen> {
  int _selectedIndex = 0;
  String selectedCategory = 'All';
  String selectedSort = 'Ascending';
  bool isFilterApplied = false;

  List<String> categoryList = ['All', 'Category 1', 'Category 2', 'Category 3'];
  List<String> sortList = ['Ascending', 'Descending'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'My Donations',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'By Categories',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation:
                          3, // Tambahkan efek shadow dengan mengatur nilai elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Tambahkan border radius di sini
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: buildGridItem(
                        'images/detail_pic.jpg',
                        '1 x',
                        'Education Donation',
                      ),
                    ),
                  ),
                  // Tambahkan Padding dan Card dengan dekorasi yang serupa untuk grid item lainnya
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: buildGridItem(
                        'images/detail_pic.jpg',
                        '1 x',
                        'Education Donation',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: buildGridItem(
                        'images/detail_pic.jpg',
                        '1 x',
                        'Education Donation',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: buildGridItem(
                        'images/detail_pic.jpg',
                        '1 x',
                        'Education Donation',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'All Donations',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              CustomCard(
                imagePath: 'images/detail_pic.jpg',
                title: 'Many Children Need Food to Survive',
                subtitle: 'The Unity',
                daysLeft: '20 days left',
                progress: 0.2,
                collectedAmount: 'Collected Rp 150.000,00',
              ),
              const SizedBox(height: 16),
              CustomCard(
                imagePath: 'images/detail_pic.jpg',
                title: 'Build a school to study',
                subtitle: 'Another Subtitle',
                daysLeft: '10 days left',
                progress: 0.5,
                collectedAmount: 'Collected Rp 200.000,00',
              ),
              const SizedBox(height: 16),
              CustomCard(
                imagePath: 'images/detail_pic.jpg',
                title: 'Build a school to study',
                subtitle: 'Another Subtitle',
                daysLeft: '10 days left',
                progress: 0.5,
                collectedAmount: 'Collected Rp 200.000,00',
              ),
              const SizedBox(height: 16),
              CustomCard(
                imagePath: 'images/detail_pic.jpg',
                title: 'Build a school to study',
                subtitle: 'Another Subtitle',
                daysLeft: '10 days left',
                progress: 0.5,
                collectedAmount: 'Collected Rp 200.000,00',
              ),
            ],
          ),
        ),
      ),
    );
  }
}