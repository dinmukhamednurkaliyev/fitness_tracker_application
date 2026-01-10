import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    const avatarUrl =
        'https://img.goodfon.ru/wallpaper/big/3/f4/poza-kostium-kianu-rivz-keanu-reeves-john-wick-dzhon-uik-por.webp';
    const userName = 'John';
    return Scaffold(
      backgroundColor: color.backgroundPrimary,
      appBar: const _HomeHeader(
        userName: userName,
        avatarUrl: avatarUrl,
      ),
      body: const _HomeBody(),
    );
  }
}

class _HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const _HomeHeader({
    this.userName,
    this.avatarUrl,
  });

  final String? avatarUrl;
  final String? userName;

  static const double _headerHeight = 100;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final spacing = context.spacing;
    return AppBar(
      titleSpacing: spacing.sm,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: color.backgroundPrimary,
      toolbarHeight: _headerHeight,
      title: Row(
        spacing: spacing.sm,
        children: [
          UserAvatar(url: avatarUrl),
          Expanded(
            child: UserGreeting(
              name: userName,
            ),
          ),
          const SearchButton(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_headerHeight);
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    return Padding(
      padding: EdgeInsets.all(spacing.sm),
      child: SingleChildScrollView(
        child: Column(
          spacing: spacing.sm,
          children: const [
            DailyChallengeCard(),
            WeeklyListComponent(),
          ],
        ),
      ),
    );
  }
}
