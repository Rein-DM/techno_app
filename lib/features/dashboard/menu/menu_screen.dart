import 'package:flutter/material.dart';
import 'package:techno_app/features/dashboard/menu/components/ilocano_menu.dart';
import '../../../constants/assets.dart';
import 'components/tagalog_menu.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: 40,
                  ),
                  Image.asset(
                    Assets.techlogo,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none_outlined),
                    iconSize: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 2.0,
              color: Colors.grey,
              width: 370,
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          MenuGridView(),
          TagalogMenuScreen(),
          IlocanoMenuScreen(),
        ],
      ),
    );
  }
}

class MenuGridView extends StatelessWidget {
  const MenuGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'Tagalog',
      'Ilocano',
      'Kapampangan',
      'Bicolano',
      'Cebuano',
      'Davaoeño',
      'Batangueño',
      'Lagueño',
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              final parentState =
                  context.findAncestorStateOfType<_MenuScreenState>();
              parentState?._onItemTapped(index + 1);
            },
            child: MenuCategoryCard(category: categories[index]),
          );
        },
      ),
    );
  }
}

class MenuCategoryCard extends StatelessWidget {
  final String category;

  const MenuCategoryCard({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 4.0,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.techcategory),
            const SizedBox(height: 8.0),
            Text(
              category,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
