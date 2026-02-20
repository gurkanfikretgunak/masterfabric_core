import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import '../../theme/theme_helper.dart';
import '../../src/resources/resources.g.dart' as example_resources;
import 'cubit/theme_cubit.dart';
import 'cubit/theme_state.dart';
import '_widgets/section_title_widget.dart';
import '_widgets/theme_mode_section.dart';
import '_widgets/font_size_section.dart';
import '_widgets/colors_section.dart';
import '_widgets/view_visibility_section.dart';
import '_widgets/icon_visibility_section.dart';
import '_widgets/permissions_section.dart';
import '_widgets/language_section.dart';
import '_widgets/reset_section.dart';

/// Settings View - Theme and app configuration
class SettingView extends MasterViewHydratedCubit<ThemeCubit, ThemeState> {
  SettingView({
    super.key,
    required Function(String) goRoute,
    Map<String, dynamic>? arguments,
  }) : super(
          currentView: MasterViewHydratedCubitTypes.content,
          goRoute: goRoute,
          arguments: arguments ?? {'view': 'settings'},
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: Text(example_resources.resources.settings.title),
              leading: GoRouter.of(context).canPop()
                  ? IconButton(
                      icon: ConditionalIcon(
                        context: context,
                        icon: LucideIcons.arrowLeft,
                        size: 18,
                      ),
                      onPressed: () => GoRouter.of(context).pop(),
                    )
                  : null,
            );
          },
        );

  @override
  Future<void> initialContent(
      ThemeCubit viewModel, BuildContext context) async {
    // No initial data loading needed
  }

  @override
  Widget viewContent(
      BuildContext context, ThemeCubit viewModel, ThemeState state) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Theme Mode Section
        SectionTitleWidget(title: example_resources.resources.settings.theme_mode),
        const SizedBox(height: 8),
        ThemeModeSection(viewModel: viewModel, state: state),
        const SizedBox(height: 20),

        // Font Size Section
        SectionTitleWidget(title: example_resources.resources.settings.font_size),
        const SizedBox(height: 8),
        FontSizeSection(viewModel: viewModel, state: state),
        const SizedBox(height: 20),

        // Colors Section
        SectionTitleWidget(title: example_resources.resources.settings.colors),
        const SizedBox(height: 8),
        ColorsSection(viewModel: viewModel, state: state),
        const SizedBox(height: 20),

        // View Visibility Section
        SectionTitleWidget(title: example_resources.resources.settings.view_visibility),
        const SizedBox(height: 8),
        ViewVisibilitySection(viewModel: viewModel, state: state),
        const SizedBox(height: 20),

        // Icon Visibility Section
        SectionTitleWidget(title: example_resources.resources.settings.icons),
        const SizedBox(height: 8),
        IconVisibilitySection(viewModel: viewModel, state: state),
        const SizedBox(height: 20),

        // Permissions Section
        SectionTitleWidget(title: example_resources.resources.settings.permissions),
        const SizedBox(height: 8),
        PermissionsSection(goRoute: goRoute),
        const SizedBox(height: 20),

        // Language Selection Section
        SectionTitleWidget(title: example_resources.resources.settings.language),
        const SizedBox(height: 8),
        const LanguageSection(),
        const SizedBox(height: 20),

        // Reset Section
        ResetSection(viewModel: viewModel),
        const SizedBox(height: 16),
      ],
    );
  }
}
