import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Platform-aware Scaffold that enables iOS native drag back gesture
class PlatformScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;

  const PlatformScaffold({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        backgroundColor: backgroundColor ?? Colors.white,
        navigationBar: appBar != null ? _convertAppBarToCupertinoNavBar(context, appBar!) : null,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: body ?? const SizedBox.shrink()),
              if (bottomNavigationBar != null) bottomNavigationBar!,
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: appBar,
        body: body,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      );
    }
  }

  /// Convert Material AppBar to CupertinoNavigationBar for iOS
  ObstructingPreferredSizeWidget _convertAppBarToCupertinoNavBar(
    BuildContext context,
    PreferredSizeWidget appBar,
  ) {
    if (appBar is AppBar) {
      // Extract leading widget
      Widget? leadingWidget;
      if (appBar.leading != null) {
        // Wrap the leading widget to check canPop before popping
        final originalLeading = appBar.leading!;
        if (originalLeading is IconButton && originalLeading.onPressed != null) {
          leadingWidget = CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (GoRouter.of(context).canPop()) {
                GoRouter.of(context).pop();
              }
            },
            child: originalLeading.icon,
          );
        } else {
          leadingWidget = originalLeading;
        }
      } else if (GoRouter.of(context).canPop()) {
        leadingWidget = CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            if (GoRouter.of(context).canPop()) {
              GoRouter.of(context).pop();
            }
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.back,
                color: CupertinoColors.activeBlue,
              ),
            ],
          ),
        );
      }

      // Extract trailing widgets
      Widget? trailingWidget;
      if (appBar.actions != null && appBar.actions!.isNotEmpty) {
        if (appBar.actions!.length == 1) {
          trailingWidget = appBar.actions!.first;
        } else {
          trailingWidget = Row(
            mainAxisSize: MainAxisSize.min,
            children: appBar.actions!,
          );
        }
      }

      return CupertinoNavigationBar(
        backgroundColor: appBar.backgroundColor ?? Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 0.5,
          ),
        ),
        middle: appBar.title,
        leading: leadingWidget,
        trailing: trailingWidget,
      );
    }
    // Fallback for other PreferredSizeWidget types
    return CupertinoNavigationBar(
      middle: Text(
        appBar.toString(),
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}

