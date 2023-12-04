import 'package:flutter/material.dart';
import 'package:tweaxy/components/HomePage/Tweet/tweet.dart';
import 'package:tweaxy/components/HomePage/WebComponents/posts_profile.dart';
import 'package:tweaxy/models/tweet.dart';
import 'package:tweaxy/services/tweets_services.dart';
import 'package:tweaxy/utilities/tweets_utilities.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key, required this.tabController});
  final TabController tabController;
  // final List<Map<String, String>> temp = const [
  //   {
  //     'likesCount': '1',
  //     'viewsCount': '2',
  //     'retweetsCount': '3',
  //     'commentsCount': '4',
  //     'id': '1',
  //     'userid': '1',
  //     'userImage': 'uploads/default.png',
  //     'image': 'http://16.171.65.142:3000/uploads/default.png',

  //     'userName': 'Menna Ahmed',
  //     'userHandle': 'Meed71',
  //     'time': '4h',
  //     'tweetText':
  //         'Nature is the reason behind all lives dwelling on the earth. It is the blessing of invisible power for all living organisms. '
  //   },
  //   {
  //     'likesCount': '1',
  //     'viewsCount': '2',
  //     'retweetsCount': '3',
  //     'commentsCount': '4',
  //     'id': '2',
  //     'userid': '2',
  //     'userImage': 'uploads/default.png',
  //     'image': 'http://16.171.65.142:3000/uploads/default.png',

  //     'userName': 'Menna Ahmed',
  //     'userHandle': 'MennaAhmed71',
  //     'time': '4h',
  //     'tweetText':
  //         'Nature is the reason behind all lives dwelling on the earth. It is the blessing of invisible power for all living organisms. '
  //   },
  //   {
  //     'likesCount': '1',
  //     'viewsCount': '2',
  //     'retweetsCount': '3',
  //     'commentsCount': '4',
  //     'id': '3',
  //     'userid': '3',
  //     'userImage': 'uploads/default.png',
  //     'image': 'http://16.171.65.142:3000/uploads/default.png',
  //     'userName': 'Menna Ahmed',
  //     'userHandle': 'MennaAhmed71',
  //     'time': '4h',
  //     'tweetText':
  //         'Nature is the reason behind all lives dwelling on the earth. It is the blessing of invisible power for all living organisms. '
  //   },
  //   {
  //     'likesCount': '1',
  //     'viewsCount': '2',
  //     'retweetsCount': '3',
  //     'commentsCount': '4',
  //     'id': '4',
  //     'userid': '4',
  //     'userImage': 'uploads/default.png',
  //     'image': 'http://16.171.65.142:3000/uploads/default.png',

  //     'userName': 'Menna Ahmed',
  //     'userHandle': 'MennaAhmed71',
  //     'time': '4h',
  //     'tweetText':
  //         'Nature is the reason behind all lives dwelling on the earth. It is the blessing of invisible power for all living organisms. '
  //   },
  //   {
  //     'likesCount': '1',
  //     'viewsCount': '2',
  //     'retweetsCount': '3',
  //     'commentsCount': '4',
  //     'id': '5',
  //     'userid': '5',
  //     'userImage': 'uploads/default.png',
  //     'image': 'http://16.171.65.142:3000/uploads/default.png',

  //     'userName': 'Menna Ahmed',
  //     'userHandle': 'MennaAhmed71',
  //     'time': '4h',
  //     'tweetText':
  //         'Nature is the reason behind all lives dwelling on the earth. It is the blessing of invisible power for all living organisms. '
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    // List<Tweet> tweets = initializeTweets(temp);
    return TabBarView(
      controller: tabController,
      children: <Widget>[
        CustomScrollView(slivers: [ProfilePosts()]),
        Placeholder(),
        Placeholder()
      ],
    );
  }
}
