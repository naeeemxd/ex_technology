import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final IconData companyLogo;
  final String companyName;
  final String jobTitle;
  final String experience;
  final String salary;
  final Color logoBackgroundColor;

  const JobCard({
    Key? key,
    required this.companyLogo,
    required this.companyName,
    required this.jobTitle,
    required this.experience,
    required this.salary,
    this.logoBackgroundColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: logoBackgroundColor,
                      child: Icon(
                        companyLogo,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      companyName,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text('Apply'),
                      Icon(Icons.wb_sunny_outlined, size: 16),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              jobTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoret dolore magna.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _buildTag(experience),
                const SizedBox(width: 12),
                _buildTag(salary),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 12,
        ),
      ),
    );
  }
}
