
import 'package:flutter/material.dart';

void main() {
  runApp(const TrendingJobsApp());
}

class TrendingJobsApp extends StatelessWidget {
  const TrendingJobsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const TrendingJobsScreen(),
    );
  }
}

class TrendingJobsScreen extends StatelessWidget {
  const TrendingJobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Trending Jobs Header
              Row(
                children: [
                  const Text(
                    'Trending Jobs',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.trending_up,
                    color: Colors.green[600],
                    size: 24,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Description Text
              Text(
                'Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 30000+ companies worldwide.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              // Job Cards
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildJobCard(
                      'Wordpress Development',
                      'assets/wordpress.jpg',
                    ),
                    _buildJobCard(
                      'Audio & Video Editing',
                      'assets/audio_video.jpg',
                    ),
                    _buildJobCard(
                      'Admin & Customer Support',
                      'assets/customer_support.jpg',
                    ),
                    _buildJobCard(
                      'UX/UI Designer',
                      'assets/uxui.jpg',
                    ),
                    _buildJobCard(
                      'Digital Marketing',
                      'assets/digital_marketing.jpg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Navigation Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0 ? Colors.blue : Colors.grey[300],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJobCard(String title, String imagePath) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Job Image
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            // Gradient Overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
            // Job Title
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
