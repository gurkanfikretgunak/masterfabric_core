import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/url_launcher/cubit/url_launcher_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/url_launcher/cubit/url_launcher_state.dart';

/// URL Launcher Helper Demo View
class UrlLauncherView extends MasterViewCubit<UrlLauncherCubit, UrlLauncherState> {
  UrlLauncherView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('URL Launcher Helper'),
              leading: GoRouter.of(context).canPop()
                  ? IconButton(
                      icon: const Icon(LucideIcons.arrowLeft),
                      onPressed: () {
                        if (GoRouter.of(context).canPop()) {
                          GoRouter.of(context).pop();
                        }
                      },
                      tooltip: 'Back',
                    )
                  : null,
            );
          },
        );

  @override
  Future<void> initialContent(UrlLauncherCubit viewModel, BuildContext context) async {
    // No initialization needed
  }

  @override
  Widget viewContent(BuildContext context, UrlLauncherCubit viewModel, UrlLauncherState state) {
    return BlocBuilder<UrlLauncherCubit, UrlLauncherState>(
      bloc: viewModel,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _LaunchSection(
                title: 'Launch URL',
                icon: LucideIcons.externalLink,
                hint: 'https://example.com',
                defaultValue: 'https://pub.dev',
                onLaunch: (value) async {
                  final launched = await viewModel.launchUrl(value);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(launched ? 'URL launched' : 'Failed to launch URL'),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(height: 24),
              _LaunchSection(
                title: 'Launch Phone',
                icon: LucideIcons.phone,
                hint: '+1234567890',
                defaultValue: '+1234567890',
                onLaunch: (value) async {
                  final launched = await viewModel.launchPhone(value);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(launched ? 'Phone launched' : 'Failed to launch phone'),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(height: 24),
              _LaunchSection(
                title: 'Launch Email',
                icon: LucideIcons.mail,
                hint: 'example@email.com',
                defaultValue: 'example@email.com',
                onLaunch: (value) async {
                  final launched = await viewModel.launchEmail(
                    value,
                    subject: 'Test Email',
                    body: 'This is a test email from MasterFabric Core example app.',
                  );
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(launched ? 'Email launched' : 'Failed to launch email'),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(height: 24),
              _LaunchSection(
                title: 'Launch SMS',
                icon: LucideIcons.messageSquare,
                hint: '+1234567890',
                defaultValue: '+1234567890',
                onLaunch: (value) async {
                  final launched = await viewModel.launchSms(
                    value,
                    body: 'Hello from MasterFabric Core!',
                  );
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(launched ? 'SMS launched' : 'Failed to launch SMS'),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _LaunchSection extends StatefulWidget {
  final String title;
  final IconData icon;
  final String hint;
  final String defaultValue;
  final Function(String) onLaunch;

  const _LaunchSection({
    required this.title,
    required this.icon,
    required this.hint,
    required this.defaultValue,
    required this.onLaunch,
  });

  @override
  State<_LaunchSection> createState() => _LaunchSectionState();
}

class _LaunchSectionState extends State<_LaunchSection> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.defaultValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(widget.icon, size: 20),
                const SizedBox(width: 8),
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.hint,
                prefixIcon: Icon(widget.icon),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    widget.onLaunch(_controller.text);
                  }
                },
                icon: const Icon(LucideIcons.send, size: 18),
                label: Text('Launch ${widget.title}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

