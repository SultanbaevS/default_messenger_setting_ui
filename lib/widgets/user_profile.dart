import 'package:flutter/material.dart';

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
    );
  }
}

class _ScrollableSettingsPage extends StatelessWidget {
  const _ScrollableSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(
              name: 'Saidrasul Sultanbaev',
              phoneNumber: '+998 93 777-77-77',
              nickName: '@sultanbaev_ss',
            ),
            SizedBox(
              height: 20,
            ),
            _FirstMenuWidget(),
            SizedBox(
              height: 20,
            ),
            _SecondMenuWidget(),
            SizedBox(
              height: 20,
            ),
            _SecondMenuWidget(),
            SizedBox(
              height: 20,
            ),
            _SecondMenuWidget(),
          ],
        ),
      ),
    );
  }
}

// MENU

class _FirstMenuWidget extends StatelessWidget {
  const _FirstMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const _RowMenuWidget(
            icon: Icons.bookmark,
            text: 'Избранное',
            color: Colors.blue,
          ),
          const _Divider(),
          _RowMenuWidget(
            icon: Icons.call,
            text: 'Недавние звонки',
            color: Colors.lightGreen[400],
          ),
          const _Divider(),
          const _RowMenuWidget(
            icon: Icons.devices,
            text: 'Устройства',
            color: Colors.orange,
          ),
          const _Divider(),
          const _RowMenuWidget(
            icon: Icons.folder,
            text: 'Папки с чатами',
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}

class _SecondMenuWidget extends StatelessWidget {
  const _SecondMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const _RowMenuWidget(
            icon: Icons.notifications,
            text: 'Уведомления и звуки',
            color: Colors.red,
          ),
          const _Divider(),
          const _RowMenuWidget(
            icon: Icons.lock,
            text: 'Конфеденциальность',
            color: Colors.grey,
          ),
          const _Divider(),
          _RowMenuWidget(
            icon: Icons.storage,
            text: 'Данные и память',
            color: Colors.lightGreen[400],
          ),
          const _Divider(),
          const _RowMenuWidget(
            icon: Icons.brush,
            text: 'Оформление',
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: .1,
      thickness: .8,
      indent: 60,
      endIndent: 25,
      color: Colors.grey,
    );
  }
}

class _RowMenuWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  const _RowMenuWidget(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

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
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                icon,
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
              text,
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
