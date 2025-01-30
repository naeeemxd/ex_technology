import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: const Scaffold(body: JobPortalFooter()),
  ));
}

class JobPortalFooter extends StatelessWidget {
  const JobPortalFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: const Color(0xFF1A1F2B),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Inspiring Statement Section
          _buildSectionTitle('Inspiring Statement'),
          const SizedBox(height: 12),
          _buildSectionText(
            'Join us in creating a smarter, more independent generation by connecting students with real-world opportunities!',
          ),

          const SizedBox(height: 32),

          // Quick Links Section
          _buildSectionTitle('Quick Links'),
          const SizedBox(height: 16),
          _buildQuickLink('Explore Gigs'),
          _buildQuickLink('Hire Talent'),
          _buildQuickLink('Companies'),
          _buildQuickLink('Contact Us'),

          const SizedBox(height: 32),

          // Connect With Us Section
          _buildSectionTitle('Connect With Us'),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildSocialIcon(Icons.facebook),
              const SizedBox(width: 16),
              _buildSocialIcon(Icons.camera), // Instagram (Corrected)
              const SizedBox(width: 16),
              _buildSocialIcon(Icons.alternate_email), // Twitter (Corrected)
              const SizedBox(width: 16),
              _buildSocialIcon(Icons.business), // LinkedIn (Corrected)
            ],
          ),

          const SizedBox(height: 32),

          // Newsletter Section
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
                child: const Text('Subscribe'),
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
              child: const Text('Get Started'),
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
}
