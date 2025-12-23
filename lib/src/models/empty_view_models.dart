import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Empty view type enum
enum EmptyViewType {
  noData,
  noConnection,
  noResults,
  error,
  custom,
}

/// Empty state configuration model
class EmptyViewModel extends Equatable {
  final String title;
  final String? description;
  final String? imagePath;
  final Widget? imageWidget;
  final String? actionLabel;
  final void Function()? onAction;
  final Color? backgroundColor;

  const EmptyViewModel({
    required this.title,
    this.description,
    this.imagePath,
    this.imageWidget,
    this.actionLabel,
    this.onAction,
    this.backgroundColor,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        imagePath,
        imageWidget,
        actionLabel,
        backgroundColor,
      ];
}
