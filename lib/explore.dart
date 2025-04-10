import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  final List<TripPackage> tripPackages = [
    TripPackage('images/loc1.jpeg', 'Niladri Reservoir', 'Tekergat, Sunamganj', '16 July-28 July', 4.7, 24, 820),
    TripPackage('images/loc2.jpeg', 'Darma Valley', 'Darma, India', '20 Sep-29 Sep', 4.6, 24, 720),
    TripPackage('images/loc4.jpeg', 'Lake Louise', 'Banff, Canada', '14 Nov-22 Nov', 4.8, 26, 942),
    TripPackage('images/loc5.jpeg', 'Machu Picchu', 'Cuzco, Peru', '12 Dec-18 Dec', 4.9, 27, 860),
    TripPackage('images/loc6.jpeg', 'Great Barrier Reef', 'Queensland, Australia', '2 Jan-10 Jan', 4.6, 30, 780),
    TripPackage('images/loc7.jpeg', 'Santorini', 'Cyclades, Greece', '8 Feb-16 Feb', 4.7, 22, 845),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Popular Package', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All Popular Trip Package',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: tripPackages.length,
                itemBuilder: (context, index) {
                  final trip = tripPackages[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TripCard(trip: trip),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TripPackage {
  final String imagePath;
  final String title;
  final String location;
  final String date;
  final double rating;
  final int joinedPeople;
  final int price;

  TripPackage(this.imagePath, this.title, this.location, this.date, this.rating, this.joinedPeople, this.price);
}

class TripCard extends StatelessWidget {
  final TripPackage trip;

  const TripCard({required this.trip});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 10, spreadRadius: 2),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(trip.imagePath, height: 100, width: 100, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(trip.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.date_range, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(trip.date, style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text('⭐️', style: TextStyle(fontSize: 14)),
                      const SizedBox(width: 4),
                      Text('${trip.rating}', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      CircleAvatar(radius: 8, backgroundImage: AssetImage('images/loc10.jpeg')),
                      SizedBox(width: 4),
                      CircleAvatar(radius: 8, backgroundImage: AssetImage('images/loc11.jpeg')),
                      SizedBox(width: 4),
                      CircleAvatar(radius: 8, backgroundImage: AssetImage('images/loc12.jpeg')),
                      SizedBox(width: 6),
                      Text('${trip.joinedPeople} Person Joined', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text('\$${trip.price}', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
