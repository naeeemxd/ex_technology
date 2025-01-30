import 'package:ex_technology/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StudentGigsApp());
}

class StudentGigsApp extends StatelessWidget {
  const StudentGigsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Students Gigs',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Students',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Gigs',
              style: TextStyle(
                color: Colors.orange[700],
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            child: const Text('Find Student Talents'),
          ),
          const SizedBox(width: 16),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Stack(
                children: [
                  // Background Image
                  Positioned.fill(
                    child: Image.asset(
                      'assets/StudentsGigs_files/teenager-holding-textbooks_23-2147669090.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  // Content
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Explore Gigs',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Find part-time opportunities\ndesigned for students',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                          ),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/StudentsGigs_files/architects-making-thumbs-up-gesture_23-2147702466.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),

                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Hire Student Talent',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Connect with skilled students ready to contribute',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Text(
                    'Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 30000+ companies worldwide.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildJobCard(
                          'Wordpress Development',
                          'assets/StudentsGigs_files/03.c538ca3b9bc8f2a5378d.jpg',
                        ),
                        _buildJobCard(
                          'Audio & Video Editing',
                          'assets/StudentsGigs_files/01.505f19f275234d37ae32.jpg',
                        ),
                        _buildJobCard(
                          'Admin & Customer Support',
                          'assets/StudentsGigs_files/02.b483e9502d81d8a68583.jpg',
                        ),
                        _buildJobCard(
                          'UX/UI Designer',
                          'assets/StudentsGigs_files/03.c538ca3b9bc8f2a5378d.jpg',
                        ),
                        _buildJobCard(
                          'Digital Marketing',
                          'assets/StudentsGigs_files/06.296e0ddb4aa6faa9d579.jpg',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
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
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    'Popular Jobs',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Search all the open positions on the web. Get your own personalized salary\nestimate. Read reviews on over 30000+ companies worldwide.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  JobCard(
                    companyLogo: Icons.facebook,
                    companyName: 'FaceBook',
                    jobTitle: 'Sr. Frontend Engineer',
                    experience: '2 Years',
                    salary: '180-250k',
                  ),
                  const SizedBox(height: 16),
                  JobCard(
                    companyLogo: Icons.computer,
                    companyName: 'Lenovo',
                    jobTitle: 'Sr. Frontend Engineer',
                    experience: '2 Years',
                    salary: '180-250k',
                    logoBackgroundColor: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  JobCard(
                    companyLogo: Icons.search,
                    companyName: 'Google',
                    jobTitle: 'Sr. Frontend Engineer',
                    experience: '2 Years',
                    salary: '180-250k',
                    logoBackgroundColor: Colors.white,
                  ),

                  const SizedBox(height: 24),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'More Jobs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: LayoutBuilder(builder: (context, constraints) {
                  final width = constraints.maxWidth;
                  final height = constraints.maxHeight;

                  return Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        width: width * 0.45,
                        height: height * 0.45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/StudentsGigs_files/ab03.2b6e24b09b3690407ec5.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        width: width * 0.45,
                        height: height * 0.45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/StudentsGigs_files/ab02.f851a3dde08585493f97.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        right: 0,
                        top: 0,
                        width: width * 0.5,
                        height: height,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/StudentsGigs_files/ab01.016884c7bf778010e79c.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Get The Job of your Dreams\nQuick & Easy.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '"Our mission is to make students independent"',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Responsible, and equipped with practical exposure while learning. '
                        'By connecting them with meaningful gigs, we aim to reduce the gap '
                        'between academic knowledge and real-world skills, preparing them for a smarter future.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'CONTACT US',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Explore Your job now!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Search all the open positions on the web. Get your own personalized salary '
                        'estimate. Read reviews on over 30000+ companies worldwide.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Apply Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 16),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Learn more',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(32.0),
              color: const Color(0xFF1A1F2B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Inspiring Statement'),
                  const SizedBox(height: 12),
                  _buildSectionText(
                    'Join us in creating a smarter, more independent generation by connecting students with real-world opportunities!',
                  ),

                  const SizedBox(height: 32),
                  _buildSectionTitle('Quick Links'),
                  const SizedBox(height: 16),
                  _buildQuickLink('Explore Gigs'),
                  _buildQuickLink('Hire Talent'),
                  _buildQuickLink('Companies'),
                  _buildQuickLink('Contact Us'),

                  const SizedBox(height: 32),
                  _buildSectionTitle('Connect With Us'),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _buildSocialIcon(Icons.facebook),
                      const SizedBox(width: 16),
                      _buildSocialIcon(Icons.camera), 
                      const SizedBox(width: 16),
                      _buildSocialIcon(
                          Icons.alternate_email), 
                      const SizedBox(width: 16),
                      _buildSocialIcon(Icons.business), 
                    ],
                  ),

                  const SizedBox(height: 32),
                  _buildSectionTitle('Subscribe to our Newsletter'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Your email',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            filled: true,
                            fillColor: Colors.grey[900],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                        ),
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // Get Started Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Copyright Section
                  const Center(
                    child: Text(
                      '© 2025 Job Portal. All Rights Reserved.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      'powered by exmedia',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Additional sections can be added here
          ],
        ),
      ),
    );
  }
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

Widget _buildSectionTitle(String title) {
  return Text(
    title,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _buildSectionText(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.white70,
      fontSize: 16,
    ),
  );
}

Widget _buildQuickLink(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: InkWell(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
      ),
    ),
  );
}

Widget _buildSocialIcon(IconData icon) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 24,
      ),
    ),
  );
}
