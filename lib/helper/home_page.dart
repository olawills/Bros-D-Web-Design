import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'Construction and Building',
      'Domestic Services',
      'Unskilled professions',
      'Event Planning & Management',
      'Mechanic',
      'Craftsmanship',
      'Home Services',
      'Electronics',
      'Creatives',
      'Enginerring',
      'Logistics',
      'Electrical',
    ];
    List<String> imagePath = [
      'assets/images/construction.png',
      'assets/images/domestic.png',
      'assets/images/unskilled.png',
      'assets/images/event.png',
      'assets/images/mechanic.png',
      'assets/images/craft.png',
      'assets/images/homeservice.png',
      'assets/images/electronics.png',
      'assets/images/creative.png',
      'assets/images/enginerring.png',
      'assets/images/logistic.png',
      'assets/images/electrical.png',
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;
    return Scaffold(
      // drawer: isMobile ? _buildSideDrawer(context) : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with Welcome and Navigation
            isMobile
                ? SizedBox.shrink()
                : Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.2),
                    //     blurRadius: 2,
                    //     offset: const Offset(0, 1),
                    //   ),
                    // ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              style: Theme.of(context).textTheme.labelMedium,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                fillColor: Color(0xfff1f1f1),
                                filled: true,
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Enter password",
                                hintStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                          Spacer(), // Add some spacing between the elements
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .end, // Better than using textAlign: TextAlign.right
                              children: [
                                Text(
                                  'Welcome, Amanda',
                                  style: TextStyle(
                                    color: Color(0xff3AB03A),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '1st December 2023',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Icon(Icons.notifications),
                          SizedBox(width: 30),
                          Image.asset('assets/images/16.png', height: 40),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff3AB03A),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/bros-d.png',
                                height: 40,
                              ),
                              const Spacer(),
                              // Navigation items
                              _navItem('Home'),
                              _navItem('Product', hasDropdown: true),
                              _navItem('Company', hasDropdown: true),
                              _navItem('Help', hasDropdown: true),
                              const SizedBox(width: 16),
                              // Download button
                              ElevatedButton(
                                onPressed: () {},
                                // clipBehavior: Clip.antiAliasWithSaveLayer,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor:
                                      Theme.of(context).primaryColor,
                                  side: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                child: const Text(
                                  'Download App',
                                  style: TextStyle(
                                    color: Color(0xffDC4848),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left content
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Artisans Onboarding',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Bullet points
                        _bulletPoint(
                          'Access to a network of skilled local artisans',
                        ),
                        _bulletPoint(
                          'Including electricians, plumbers, carpenters, and more',
                        ),
                        _bulletPoint(
                          'Review your artisans profiles and schedule services for home repairs, renovations, or specialized tasks.',
                        ),
                        const SizedBox(height: 16),
                        // Discover More button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          child: const Text('Discover More'),
                        ),
                        const SizedBox(height: 20),
                        Image.asset('assets/images/playstore.png', height: 40),
                      ],
                    ),
                  ),
                  // Right content - App screenshots
                  Container(
                    height: 300,
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xff3ab03a),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120),
                        bottomLeft: Radius.circular(120),
                      ),
                      // gradient: LinearGradient(
                      //   begin: Alignment.centerLeft,
                      //   end: Alignment.centerRight,
                      //   colors: [Color(0xff3ab03a), Color(0xff3ab03a)],
                      // ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none, // Prevent overflow issues
                      children: [
                        // // Background image of people
                        // Positioned(
                        //   right: 0,
                        //   top: 20,
                        //   bottom: 0,
                        //   width:
                        //       MediaQuery.of(context).size.width *
                        //       0.4, // Adjust width
                        //   child: Image.asset(
                        //     'assets/images/people_group.png',
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),

                        // Phones mockups
                        Positioned(
                          left: 20,
                          top: -5,
                          bottom: 20,
                          child: Row(
                            children: [
                              // Left phone
                              Transform.rotate(
                                angle: -0.05,
                                child: Image.asset(
                                  'assets/images/phone1.png',
                                  // height: 300, // Fixed height
                                ),
                              ),
                              // const SizedBox(width: 20),
                              // Right phone
                              Transform.rotate(
                                angle: -0.05,
                                child: Image.asset(
                                  'assets/images/phone2.png',
                                  // height: 300, // Fixed height
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Services Categories',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffDC4848),
                        ),
                      ),

                      const SizedBox(height: 16),
                      GridView.builder(
                        shrinkWrap: true,

                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 1.0,
                        ),
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          final image = imagePath[index];
                          return _categoryItem(category, image);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Top Bros-D Professionals',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                // Row of professionals
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(5, (index) {
                      return _professionalCard('Victor Alex', 'Plumber');
                    }),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Contact form
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.asset(
                                'assets/images/17.png',
                                height: 40,
                              ),
                            ),

                            const SizedBox(height: 16),
                            const Text(
                              'Speak to our Team',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            _contactField('Full Name'),
                            const SizedBox(height: 8),
                            _contactField('Email'),
                            const SizedBox(height: 8),
                            _contactField('Subject'),
                            const SizedBox(height: 8),
                            _contactField('Message', isMultiLine: true),
                            const SizedBox(height: 12),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 10,
                              ),
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      // Map and links
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            isMobile
                                ? SizedBox.shrink()
                                : Image.asset("assets/images/map.png"),
                            SizedBox(width: 40),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fast Links',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  _footerLink('Careers'),
                                  const SizedBox(height: 12),
                                  _footerLink('Contact Us'),
                                  const SizedBox(height: 12),
                                  _footerLink('WebApp '),
                                  const SizedBox(height: 12),
                                  _footerLink('FAQs'),
                                  const SizedBox(height: 12),
                                  _footerLink('About Us'),
                                  const SizedBox(height: 12),
                                  _footerLink('Download App'),
                                  const SizedBox(height: 12),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 20,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Expanded(
                      child: Row(
                        children: [
                          FittedBox(
                            child: const Text(
                              'Privacy Policy | Terms of Use | Refund Policy',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const Spacer(),
                          FittedBox(
                            child: const Text(
                              'We\'re social:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),

                          Flexible(
                            child: Image.asset(
                              'assets/images/socials.png',
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widgets
  Widget _navItem(String title, {bool hasDropdown = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (hasDropdown)
            const Icon(
              Icons.keyboard_arrow_down,
              size: 16,
              color: Colors.white,
            ),
        ],
      ),
    );
  }

  Widget _bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
        ],
      ),
    );
  }

  Widget _categoryItem(String title, String imagePath) {
    return Expanded(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  // Image
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Image.asset(imagePath, fit: BoxFit.cover),
                    ),
                  ),
                  // Add button
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 28,
                      height: 28,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Title
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _professionalCard(String name, String type) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.2),
        //     blurRadius: 4,
        //     offset: const Offset(0, 2),
        //   ),
        // ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xffeee7e7),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            // height: 80,
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/images/16.png',
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff808080),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) =>
                        const Icon(Icons.star, color: Colors.amber, size: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Drawer _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff3AB03A)),
            child: Image.asset('assets/images/bros-d.png', height: 40),
          ),
          _navItem('Home'),
          _navItem('Product'),
          _navItem('Company'),
          _navItem('Help'),
        ],
      ),
    );
  }

  Widget _contactField(String hint, {bool isMultiLine = false}) {
    return TextFormField(
      keyboardType: TextInputType.name,
      style: TextStyle(color: Colors.black, fontSize: 13),
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontFamily: "ClashDisplay",
          fontWeight: FontWeight.w500,
        ),

        fillColor: Colors.white,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.black, fontSize: 13),
      ),
    );
  }

  Widget _footerLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: FittedBox(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _socialIcon(IconData icon) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(icon, color: const Color(0xFF17a54d), size: 16),
    );
  }
}
