import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 420,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 90,
                        left: MediaQuery.of(context).size.width / 2 - 120,
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF7EBE8),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Image.asset(
                            'assets/image/image_15.png',
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 48,
                        left: 16,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Icon(Icons.arrow_back_ios_new, size: 16, color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 48,
                        right: 16,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Icon(Icons.favorite, size: 25, color: Colors.red),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildDot(true),
                            const SizedBox(width: 6),
                            _buildDot(false),
                            const SizedBox(width: 6),
                            _buildDot(false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 16,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Sportwear Set', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),
                          Text('\$ 80.00', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Row(
                            children: List.generate(5, (index) => const Icon(Icons.star, color: Color(0xFF508A7B), size: 26)),
                          ),
                          const SizedBox(width: 8),
                          const Text('(83)', style: TextStyle(color: Colors.grey, fontSize: 13)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Divider(color: Color(0xFFE5E5EA), thickness: 1),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Color', style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.08),
                                          blurRadius: 8,
                                          offset: const Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Container(
                                        width: 22,
                                        height: 22,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFE3C5B5),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE26D5C),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Size', style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  _buildSizeBox('S', false),
                                  const SizedBox(width: 8),
                                  _buildSizeBox('M', false),
                                  const SizedBox(width: 8),
                                  _buildSizeBox('L', true),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Divider(color: Color(0xFFE5E5EA), thickness: 1),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Description',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 24,
                          ),
                        ],
                      ),
                      const Divider(color: Color(0xFFE5E5EA), thickness: 1),
                      const SizedBox(height: 12),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              height: 1.4,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
                              ),

                              WidgetSpan(
                                child: SizedBox(width: 6),
                              ),

                              TextSpan(
                                text: 'Read more',
                                style: TextStyle(
                                  color: Color(0xFF10B981),
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Reviews', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
                          Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 24),
                        ],
                      ),
                      const Divider(color: Color(0xFFE5E5EA), thickness: 1),
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: const [
                              Text('4.9', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black)),
                              SizedBox(width: 6),
                              Text('OUT OF 5', style: TextStyle(fontSize: 11, color: Colors.grey, letterSpacing: 0.5)),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: List.generate(
                                    5,
                                        (i) => const Icon(Icons.star, color: Color(0xFF508A7B), size: 23),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text('83 ratings', style: TextStyle(fontSize: 12, color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildRatingBar('5', 0.80),
                      _buildRatingBar('4', 0.12),
                      _buildRatingBar('3', 0.05),
                      _buildRatingBar('2', 0.03),
                      _buildRatingBar('1', 0.00),

                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('47 Reviews', style: TextStyle(fontSize: 13, color: Colors.grey)),
                          Row(
                            children: const [
                              Text(
                                'WRITE A REVIEW',
                                style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w600, letterSpacing: 0.3),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.edit, size: 14, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),

                      _buildReviewItem(
                        name: 'Jennifer Rose',
                        time: '5m ago',
                        text: 'I love it. Awesome customer service! Helped me out with adding an additional item to my order. Thanks again!',
                        avatarUrl: 'assets/image/image_16.png',
                      ),
                      const SizedBox(height: 25),
                      _buildReviewItem(
                        name: 'Kelly Rihana',
                        time: '9m ago',
                        text: "I'm very happy with order, it was delivered on and good quality. Recommended!",
                        avatarUrl: 'assets/image/image_17.png',
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Similar Product', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
                          Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 24),
                        ],
                      ),
                      const Divider(color: Color(0xFFE5E5EA), thickness: 1),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 270,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ProductCard(
                              imagePath: 'assets/image/image_18.png',
                              title: 'Rise Crop Hoodie',
                              price: '\$ 43.00',
                              onTap: () {},
                            ),
                            const SizedBox(width: 16),
                            ProductCard(
                              imagePath: 'assets/image/image_19.png',
                              title: 'Gym Crop Top',
                              price: '\$ 39.99',
                              onTap: () {},
                            ),
                            const SizedBox(width: 16),
                            ProductCard(
                              imagePath: 'assets/image/image_20.png',
                              title: 'Sport Sweatshirt',
                              price: '\$ 47.99',
                              onTap: () {},
                            ),
                            const SizedBox(width: 16),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildAddToCartBar(),
    );
  }

  Widget _buildSizeBox(String size, bool isSelected) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF4A4A4A) : const Color(0xFFF7F7F9),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey.shade600,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
  Widget _buildDot(bool isActive) {
    if (isActive) {
      return Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Center(
          child: Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
      );
    }
    return Container(
      width: 6,
      height: 6,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
    );
  }
  Widget _buildRatingBar(String label, double percent) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
            width: 10,
            child: Text(label, style: const TextStyle(fontSize: 13, color: Colors.grey)),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.star, color: Color(0xFF508A7B), size: 12),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: percent,
                minHeight: 6,
                backgroundColor: const Color(0xFFE5E5EA),
                valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF508A7B)),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 32,
            child: Text('${(percent * 100).toInt()}%', style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ),
        ],
      ),
    );
  }
  Widget _buildAddToCartBar() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20, bottom: 32),
        decoration: const BoxDecoration(
          color: Color(0xFF2D2D2D),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 20),
            SizedBox(width: 10),
            Text(
              'Add To Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildReviewItem({
    required String name,
    required String time,
    required String text,
    required String avatarUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color(0xFFEFEFEF),
                backgroundImage: AssetImage(avatarUrl),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)),
                        Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: List.generate(
                        5,
                            (i) => const Icon(Icons.star, color: Color(0xFF508A7B), size: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(text, style: const TextStyle(fontSize: 13, color: Colors.grey, height: 1.4)),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: imagePath.startsWith('assets/')
                    ? Image.asset(imagePath, width: double.infinity, fit: BoxFit.cover)
                    : Image.network(imagePath, width: double.infinity, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}