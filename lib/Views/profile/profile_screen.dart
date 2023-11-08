import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:tabbed_sliverlist/tabbed_sliverlist.dart';
import 'package:tweaxy/components/HomePage/SharedComponents/account_information.dart';
import 'package:tweaxy/components/HomePage/SharedComponents/profile_icon_button.dart';
import 'package:tweaxy/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

var listitems = [
  'item1',
  'item2',
  'item3',
  'item4',
  'item5',
  'item6',
  'item7',
  'item8',
  'item9',
  'item10',
  'item11',
  'item12',
  'item13',
  'item14',
  'item15',
  'item16',
  'item18',
  'item19',
  'item20'
];

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: ProfileScreenAppBar(),
            ),
            const SliverToBoxAdapter(
              child: AccountInformation(
                bio:
                    'If there\'s no problem then there\'s a problem\nLink 1:- http://google.com\nLink2:- http://facebook.com',
                followers: 21500,
                following: 1500,
                joinedDate: '2023-08-27',
                location: 'Egypt',
                profileName: 'Ahmed Samy',
                verified: true,
                userName: '@ahmedsamy',
              ),
            ),
            SliverTabBar(
              expandedHeight: 0,
              backgroundColor: Colors.white,
              tabBar: TabBar(
                indicatorWeight: 3,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                labelColor: Colors.black,
                onTap: (value) => setState(() {
                  _selectedTabIndex = value;
                }),
                tabs: const [
                  Tab(
                    text: 'Posts',
                  ),
                  Tab(
                    text: 'Replies',
                  ),
                  Tab(
                    text: 'Likes',
                  )
                ],
              ),
            ),
            SliverList.builder(
              itemCount: listitems.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: Text(listitems[index].toString() +
                          _selectedTabIndex.toString()),
                      tileColor: Colors.white,
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreenAppBar extends SliverPersistentHeaderDelegate {
  final bottomHeight = 60;
  final extraRadius = 5;
  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    final imageTop =
        -shrinkOffset.clamp(0.0, maxExtent - minExtent - bottomHeight);

    final double clowsingRate = (shrinkOffset == 0
            ? 0.0
            : (shrinkOffset / (maxExtent - minExtent - bottomHeight)))
        .clamp(0, 1);

    final double opacity = shrinkOffset == minExtent
        ? 0
        : 1 - (shrinkOffset.clamp(minExtent, minExtent + 30) - minExtent) / 30;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 20,
          left: 45,
          child: Row(
            children: [
              Transform.scale(
                scale: 1.9 - clowsingRate,
                alignment: Alignment.bottomCenter,
                child: const _Avatar(),
              ),
              const Spacer(),
              FollowEditButton(text: 'Edit Profile'),
            ],
          ),
        ),
        _banner(
            imageTop: imageTop,
            clowsingRate: clowsingRate,
            bottomHeight: bottomHeight,
            extraRadius: extraRadius,
            maxExtent: maxExtent,
            opacity: opacity),
        Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 10,
            right: 10,
            child: Row(
              children: [
                Row(
                  children: [
                    ProfileIconButton(
                      borderWidth: 2,
                      icon: Icons.arrow_back,
                      onPressed: () {
                        // Navigator.of(context).pop();
                      },
                      iconColor: Colors.white,
                      color: Colors.black,
                    ),
                    clowsingRate == 1
                        ? CollapsedAppBarText(
                            profileNameTextColor: Colors.white,
                            postsNumberTextColor: Colors.white,
                            postsNumberTextStyle: FontWeight.bold,
                            postsNumber: 21300,
                            postsNumberTextSize: 16,
                            profileNameTextSize: 16,
                            profileName: 'Ahmed Samy',
                          )
                        : SizedBox(),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ProfileIconButton(
                        borderWidth: 2,
                        icon: Icons.search,
                        iconColor: Colors.white,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    ProfileIconButton(
                      borderWidth: 2,
                      icon: Icons.more_vert,
                      onPressed: () {},
                      iconColor: Colors.white,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class CollapsedAppBarText extends StatelessWidget {
  const CollapsedAppBarText({
    super.key,
    required this.profileName,
    required this.postsNumber,
    required this.profileNameTextSize,
    required this.postsNumberTextSize,
    required this.profileNameTextColor,
    required this.postsNumberTextColor,
    required this.postsNumberTextStyle,
  });
  final String profileName;
  final int postsNumber;
  final double profileNameTextSize;
  final double postsNumberTextSize;
  final Color profileNameTextColor;
  final Color postsNumberTextColor;
  final FontWeight postsNumberTextStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            profileName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: profileNameTextSize,
                color: profileNameTextColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              NumberFormat.compact().format(postsNumber) + ' Posts',
              style: TextStyle(
                  fontWeight: postsNumberTextStyle,
                  fontSize: postsNumberTextSize,
                  color: postsNumberTextColor),
            ),
          ),
        ],
      ),
    );
  }
}

class FollowEditButton extends StatefulWidget {
  const FollowEditButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<FollowEditButton> createState() => _FollowEditButtonState();
}

class _FollowEditButtonState extends State<FollowEditButton> {
  String? text;
  @override
  Widget build(BuildContext context) {
    text = text ?? widget.text;
    return Row(
      children: [
        text == 'Following'
            ? Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ProfileIconButton(
                  borderWidth: 2,
                  icon: Icons.notification_add_outlined,
                  onPressed: () {
                    //TODO: Implement mute notification
                  },
                  color: Colors.white,
                  iconColor: Colors.black,
                ),
              )
            : const SizedBox(),
        ElevatedButton(
          onPressed: () {
            if (text == 'Follow') {
              //TODO :- Implement the follow logic
              setState(() {
                text = 'Following';
              });
            } else if (text == 'Following') {
              //TODO :- Implement the unfollow logic
              setState(() {
                text = 'Follow';
              });
            } else {
              Navigator.of(context).pushNamed(kEditProfileScreen);
            }
          },
          child: Text(
            text!,
            style: TextStyle(
              color: text == 'Follow' ? Colors.white : Colors.black,
              fontSize: 17,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
                text == 'Follow' ? Colors.black : Colors.white),
            minimumSize: MaterialStatePropertyAll<Size>(Size(90, 35)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _banner extends StatelessWidget {
  const _banner({
    super.key,
    required this.imageTop,
    required this.clowsingRate,
    required this.bottomHeight,
    required this.extraRadius,
    required this.maxExtent,
    required this.opacity,
  });

  final double imageTop;
  final double clowsingRate;
  final int bottomHeight;
  final int extraRadius;
  final double maxExtent;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: imageTop,
      left: 0,
      right: 0,
      child: ClipPath(
        clipper: InvertedCircleClipper(
          radius: (1.9 - clowsingRate) * bottomHeight / 2 + extraRadius,
          offset: Offset(
            bottomHeight / 2 + 45,
            (maxExtent - bottomHeight + extraRadius / 2) +
                clowsingRate * bottomHeight / 2,
          ),
        ),
        child: SizedBox(
          height: maxExtent - bottomHeight,
          child: ColoredBox(
            color: Colors.white,
            child: Blur(
              blur: 15 * clowsingRate,
              blurColor: Colors.black,
              colorOpacity: clowsingRate / 3,
              child: SizedBox(
                width: double.maxFinite,
                height: double.maxFinite,
                child: CachedNetworkImage(
                  fit: BoxFit.contain,
                  imageUrl:
                      "https://www.kasandbox.org/programming-images/avatars/mr-pants-purple.png",
                  placeholder: (context, url) => const Center(
                    child: SizedBox(
                        width: 15,
                        height: 15,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          strokeWidth: 5,
                        )),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.blueAccent, width: 2),
      ),
      child: const Text(
        'Follow',
        style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class InvertedCircleClipper extends CustomClipper<Path> {
  const InvertedCircleClipper({
    required this.offset,
    required this.radius,
  });
  final Offset offset;
  final double radius;

  @override
  Path getClip(size) {
    return Path()
      ..addOval(Rect.fromCircle(
        center: offset,
        radius: radius,
      ))
      ..addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..fillType = PathFillType.evenOdd;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class _Avatar extends StatelessWidget {
  const _Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl:
              "https://www.kasandbox.org/programming-images/avatars/spunky-sam.png",
          placeholder: (context, url) => const Center(
            child: SizedBox(
                width: 15,
                height: 15,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 5,
                )),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
