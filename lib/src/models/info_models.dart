import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Info bottom sheet configuration model
class InfoModel extends Equatable {
  final String title;
  final String? description;
  final String? imagePath;
  final Widget? imageWidget;
  final List<InfoAction>? actions;
  final bool isDismissible;
  final bool enableDrag;

  const InfoModel({
    required this.title,
    this.description,
    this.imagePath,
    this.imageWidget,
    this.actions,
    this.isDismissible = true,
    this.enableDrag = true,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        imagePath,
        imageWidget,
        actions,
        isDismissible,
        enableDrag,
      ];
}

/// Info action type enum
enum InfoActionType {
  primary,
  secondary,
  destructive,
}

/// Info action model
class InfoAction extends Equatable {
  final String label;
  final void Function() onPressed;
  final InfoActionType type;

  const InfoAction({
    required this.label,
    required this.onPressed,
    this.type = InfoActionType.primary,
  });

  @override
  List<Object?> get props => [label, type];
}
