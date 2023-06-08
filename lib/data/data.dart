import 'package:flutter/material.dart';

class MenuRowData {
  final Color? color;
  final IconData icon;
  final String text;

  MenuRowData({required this.color, required this.icon, required this.text});
}

final List<MenuRowData> firstMenuRow = [
  MenuRowData(
    color: Colors.blue,
    icon: Icons.bookmark,
    text: 'Избранное',
  ),
  MenuRowData(
      color: Colors.lightGreen[400], icon: Icons.call, text: 'Недавние звонки'),
  MenuRowData(
    color: Colors.orange,
    icon: Icons.devices,
    text: 'Устройства',
  ),
  MenuRowData(
    color: Colors.lightBlue,
    icon: Icons.folder,
    text: 'Папки с чатами',
  ),
];

final List<MenuRowData> secondMenuRow = [
  MenuRowData(
    color: Colors.red,
    icon: Icons.notifications,
    text: 'Уведомления и звуки',
  ),
  MenuRowData(
    color: Colors.grey,
    icon: Icons.lock,
    text: 'Конфеденциальность',
  ),
  MenuRowData(
      color: Colors.lightGreen[400],
      icon: Icons.storage,
      text: 'Данные и память'),
  MenuRowData(
    color: Colors.lightBlue,
    icon: Icons.brush,
    text: 'Оформление',
  ),
  MenuRowData(
    color: Colors.purple,
    icon: Icons.language,
    text: 'Язык',
  ),
];
