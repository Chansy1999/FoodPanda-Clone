import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodpanda_clone/components/components.dart';
import 'package:foodpanda_clone/components/cruisines_item.dart';
import 'package:foodpanda_clone/models/cruisines.dart';
import 'package:foodpanda_clone/style/style.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  ScrollController _scrollController = ScrollController();
  bool showSearchBox = true;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        showSearchBox = true;
      });
    } else {
      setState(() {
        showSearchBox = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 2,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dongdok village street 2",
              style: TextStyle(
                color: whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: defaultPadding / 6),
            Text(
              "Vientiane Capital",
              style: TextStyle(
                color: whiteColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: whiteColor,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: whiteColor,
              size: 20,
            ),
          ),
        ],
        bottom: showSearchBox == true
            ? PreferredSize(
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.all(defaultPadding),
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search_rounded),
                      SizedBox(width: defaultPadding / 2),
                      Text("Search for shops & restaurants"),
                    ],
                  ),
                ),
                preferredSize: const Size.fromHeight(80),
              )
            : PreferredSize(child: Container(), preferredSize: Size.zero),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: appColor),
              child: Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: whiteColor,
                      child: Text(
                        "C",
                        style: TextStyle(
                          color: appColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      "Chansy Khuexonglue",
                      style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListItem(
              icon: Icons.favorite_border_rounded,
              title: "Favorites",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.bar_chart_rounded,
              title: "Orders",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.person_outline_rounded,
              title: "Profile",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.location_on_outlined,
              title: "Addresses",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.payment_rounded,
              title: "Payment methods",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.star_outline_rounded,
              title: "Chanlleges & rewards",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.card_giftcard_rounded,
              title: "Vouchers",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.help_outline_rounded,
              title: "Help center",
              press: () {
                Navigator.pop(context);
              },
            ),
            ListItem(
              icon: Icons.card_giftcard_rounded,
              title: "Invite friends",
              press: () {
                Navigator.pop(context);
              },
            ),
            Divider(color: greyColor.shade400, height: 4),
            ListTile(
              title: Text(
                "Settings",
              ),
            ),
            ListTile(
              title: Text(
                "Terms & Conditions / Privacy",
              ),
            ),
            ListTile(
              title: Text(
                "Log out",
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: defaultPadding),
            // Food delivery
            Container(
              height: 150,
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: const EdgeInsets.only(
                left: defaultPadding,
                top: defaultPadding,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(defaultBorderRadius / 2),
                border: Border.all(color: greyColor, width: 0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Food delivery",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Text(
                        "Order food you love",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/food.png",
                    height: 80,
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            // Shop and Pandamart
            Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      padding: const EdgeInsets.only(
                        left: defaultPadding,
                        top: defaultPadding,
                        right: defaultPadding,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.circular(defaultBorderRadius / 2),
                        border: Border.all(color: greyColor, width: 0.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shop",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: defaultPadding / 2),
                              Text(
                                "Groceries and more",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/images/shop.png",
                              height: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding / 2),
                  Expanded(
                    child: Container(
                      height: 150,
                      padding: const EdgeInsets.only(
                        left: defaultPadding,
                        top: defaultPadding,
                        right: defaultPadding,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.circular(defaultBorderRadius / 2),
                        border: Border.all(color: greyColor, width: 0.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pandamart",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: defaultPadding / 2),
                              Text(
                                "Essentials deliveresd fast",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/images/pandamart.png",
                              height: 70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            // Cuisines
            Container(
              height: 320,
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Text(
                      "Cuisines",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: defaultPadding / 2,
                      crossAxisSpacing: defaultPadding / 2,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      itemCount: cruisnse.length,
                      itemBuilder: (context, index) {
                        return CruisinesItem(
                          image: cruisnse[index].image,
                          name: cruisnse[index].name,
                          press: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Your daily deals
            Container(
              height: 250,
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Text(
                      "Your daily deals",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2),
                      itemBuilder: (context, index) => Container(
                        height: 180,
                        width: 140,
                        margin: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2),
                        decoration: BoxDecoration(
                          color: appColor,
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadius / 2),
                        ),
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
}
