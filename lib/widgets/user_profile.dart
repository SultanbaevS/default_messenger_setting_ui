import 'package:flutter/material.dart';
import '../data/data.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Настройки',
            ),
          ],
        ),
      ),
      body: const _ScrollableSettingsPage(),
      bottomNavigationBar: const _BottomNavigationBar(),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Контакты',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Чаты',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Настройки',
        ),
      ],
      currentIndex: 2,
      selectedItemColor: Colors.blueAccent,
    );
  }
}

class _ScrollableSettingsPage extends StatelessWidget {
  const _ScrollableSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _UserInfo(
              name: 'Saidrasul Sultanbaev',
              phoneNumber: '+998 93 777-77-77',
              nickName: '@sultanbaev_ss',
            ),
            const SizedBox(
              height: 20,
            ),
            _MenuWidget(
              menuRow: firstMenuRow,
            ),
            const SizedBox(
              height: 20,
            ),
            _MenuWidget(
              menuRow: secondMenuRow,
            ),
            const SizedBox(
              height: 20,
            ),
            _MenuWidget(
              menuRow: firstMenuRow,
            ),
          ],
        ),
      ),
    );
  }
}

// MENU

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;

  const _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: menuRow.map((e) => _RowMenuWidget(data: e)).toList(),
      ),
    );
  }
}

class _RowMenuWidget extends StatelessWidget {
  final MenuRowData data;
  const _RowMenuWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 30,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: data.color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                data.icon,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 2,
            child: Text(
              data.text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

// TOP

class _UserInfo extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String nickName;

  const _UserInfo({
    Key? key,
    required this.name,
    required this.phoneNumber,
    required this.nickName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const _AvatarWidget(),
          const SizedBox(
            height: 30,
          ),
          _UserFullNameWidget(
            fullName: name,
          ),
          const SizedBox(
            height: 10,
          ),
          _UserNumber(
            phoneNumber: phoneNumber,
          ),
          const SizedBox(
            height: 10,
          ),
          _UserNickName(
            nickName: nickName,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.account_circle_outlined,
        size: 100,
      ),
    );
  }
}

class _UserFullNameWidget extends StatelessWidget {
  final String fullName;

  const _UserFullNameWidget({
    Key? key,
    required this.fullName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      fullName,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _UserNumber extends StatelessWidget {
  final String phoneNumber;

  const _UserNumber({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      phoneNumber,
      style: TextStyle(
        fontSize: 15,
        color: Colors.grey[600],
      ),
    );
  }
}

class _UserNickName extends StatelessWidget {
  final String nickName;

  const _UserNickName({
    Key? key,
    required this.nickName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      nickName,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[600],
      ),
    );
  }
}
