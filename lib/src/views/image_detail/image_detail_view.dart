import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/views/image_detail/cubit/image_detail_cubit.dart';
import 'package:masterfabric_core/src/views/image_detail/cubit/image_detail_state.dart';

/// 🖼️ **Image Detail View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Image detail view for displaying images
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory ImageDetailView}

class ImageDetailView extends MasterViewCubit<ImageDetailCubit, ImageDetailState> {
  final String imageUrl;
  final String? title;

  ImageDetailView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
    required this.imageUrl,
    this.title,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🖼️ Image Detail View Start!');
    // Initialize image detail if needed
  }

  @override
  Widget viewContent(BuildContext context, ImageDetailCubit viewModel, ImageDetailState state) {
    return Center(
      child: InteractiveViewer(
        child: Image.network(state.imageUrl),
      ),
    );
  }
}
