import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Onboarding page model
class OnboardingPageModel extends Equatable {
  final String title;
  final String description;
  final String? imagePath;
  final Widget? imageWidget;
  final Color? backgroundColor;
  final Color? textColor;

  const OnboardingPageModel({
    required this.title,
    required this.description,
    this.imagePath,
    this.imageWidget,
    this.backgroundColor,
    this.textColor,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        imagePath,
        imageWidget,
        backgroundColor,
        textColor,
      ];
}

/// Onboarding configuration
class OnboardingConfig extends Equatable {
  final List<OnboardingPageModel> pages;
  final String skipButtonText;
  final String nextButtonText;
  final String getStartedButtonText;
  final bool showSkipButton;
  final bool showPageIndicator;

  const OnboardingConfig({
    required this.pages,
    this.skipButtonText = 'Skip',
    this.nextButtonText = 'Next',
    this.getStartedButtonText = 'Get Started',
    this.showSkipButton = true,
    this.showPageIndicator = true,
  });

  @override
  List<Object?> get props => [
        pages,
        skipButtonText,
        nextButtonText,
        getStartedButtonText,
        showSkipButton,
        showPageIndicator,
      ];
}
