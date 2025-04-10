import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen height
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/avatar.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(fontSize: 28, color: Colors.black),
                children: [
                  TextSpan(text: "Explore the\n"),
                  TextSpan(
                    text: "Beautiful ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "world!",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Destination",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "View all",
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: screenHeight * 0.5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DestinationCard(
                    imagePath: 'images/loc1.jpeg',
                    title: 'Niladri Reservoir',
                    location: 'Tekergat, Sunamganj',
                    rating: 4.7,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc2.jpeg',
                    title: 'Darma Valley',
                    location: 'Darma, India',
                    rating: 4.6,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc2.jpeg',
                    title: 'Niladri Reservoir',
                    location: 'Tekergat, Sunamganj',
                    rating: 4.7,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc3.jpg',
                    title: 'Darma Valley',
                    location: 'Darma, India',
                    rating: 4.6,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc4.jpeg',
                    title: 'Lake Louise',
                    location: 'Banff, Canada',
                    rating: 4.8,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc5.jpeg',
                    title: 'Machu Picchu',
                    location: 'Cuzco, Peru',
                    rating: 4.9,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc6.jpeg',
                    title: 'Great Barrier Reef',
                    location: 'Queensland, Australia',
                    rating: 4.6,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc7.jpeg',
                    title: 'Santorini',
                    location: 'Cyclades, Greece',
                    rating: 4.7,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc8.jpeg',
                    title: 'Tokyo',
                    location: 'Japan',
                    rating: 4.8,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc9.jpeg',
                    title: 'Paris',
                    location: 'France',
                    rating: 4.9,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc10.jpeg',
                    title: 'New York City',
                    location: 'USA',
                    rating: 4.5,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc11.jpeg',
                    title: 'Rome',
                    location: 'Italy',
                    rating: 4.7,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc12.jpeg',
                    title: 'Cairo',
                    location: 'Egypt',
                    rating: 4.6,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc13.jpeg',
                    title: 'Rio de Janeiro',
                    location: 'Brazil',
                    rating: 4.9,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc14.jpeg',
                    title: 'Cape Town',
                    location: 'South Africa',
                    rating: 4.7,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc15.jpeg',
                    title: 'Dubai',
                    location: 'UAE',
                    rating: 4.8,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc16.jpeg',
                    title: 'Amsterdam',
                    location: 'Netherlands',
                    rating: 4.6,
                  ),
                  SizedBox(width: 16),
                  DestinationCard(
                    imagePath: 'images/loc17.jpeg',
                    title: 'Prague',
                    location: 'Czech Republic',
                    rating: 4.8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final double rating;

  const DestinationCard({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  location,
                  style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Text(
                      "$rating",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
