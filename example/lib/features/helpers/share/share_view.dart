import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/share/cubit/share_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/share/cubit/share_state.dart';

/// Share Helper Demo View
class ShareView extends MasterViewCubit<ShareCubit, ShareState> {
  ShareView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('Share Helper'),
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
  Future<void> initialContent(ShareCubit viewModel, BuildContext context) async {
    // No initialization needed
  }

  @override
  Widget viewContent(BuildContext context, ShareCubit viewModel, ShareState state) {
    return BlocBuilder<ShareCubit, ShareState>(
      bloc: viewModel,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ShareTextSection(
                onShare: (text) => viewModel.shareText(text, subject: 'MasterFabric Core'),
              ),
              const SizedBox(height: 24),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(LucideIcons.file, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Share File',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'To share files, use ApplicationShareHelper.shareFile() or shareFiles() methods. Provide the file path(s) and optional text/subject.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.grey[300]!, width: 0.5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Example:',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "ApplicationShareHelper.shareFile('/path/to/file.pdf');",
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontFamily: 'monospace',
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ShareTextSection extends StatefulWidget {
  final Function(String) onShare;

  const _ShareTextSection({required this.onShare});

  @override
  State<_ShareTextSection> createState() => _ShareTextSectionState();
}

class _ShareTextSectionState extends State<_ShareTextSection> {
  final TextEditingController _textController = TextEditingController(
    text: 'Check out MasterFabric Core - A comprehensive Flutter package!',
  );

  @override
  void dispose() {
    _textController.dispose();
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
                const Icon(LucideIcons.share2, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Share Text',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _textController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Enter text to share',
                labelText: 'Text',
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  if (_textController.text.isNotEmpty) {
                    widget.onShare(_textController.text);
                  }
                },
                icon: const Icon(LucideIcons.share2, size: 18),
                label: const Text('Share Text'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

