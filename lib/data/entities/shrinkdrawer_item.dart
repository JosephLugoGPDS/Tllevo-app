import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class ShrinkDraweerItem extends Equatable {
  const ShrinkDraweerItem(this.icon, this.title);
  final IconData icon;
  final String title;

  @override
  List<Object?> get props => [
    icon,
    title,
  ];

}