import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/download/cubit/download_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/download/cubit/download_state.dart';

/// File Download Helper Demo View
class DownloadView extends MasterViewCubit<DownloadCubit, DownloadState> {
  DownloadView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('File Download Helper'),
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
  Future<void> initialContent(DownloadCubit viewModel, BuildContext context) async {
    // No initialization needed
  }

  @override
  Widget viewContent(BuildContext context, DownloadCubit viewModel, DownloadState state) {
    return BlocBuilder<DownloadCubit, DownloadState>(
      bloc: viewModel,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: _DownloadSection(
            onDownload: (url, fileName) {
              viewModel.downloadFile(url, fileName);
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Download started')),
                );
              }
            },
            isDownloading: state.isDownloading,
            downloadProgress: state.downloadProgress,
            downloadStatus: state.downloadStatus,
            downloadedFilePath: state.downloadedFilePath,
          ),
        );
      },
    );
  }
}

class _DownloadSection extends StatefulWidget {
  final Function(String url, String fileName) onDownload;
  final bool isDownloading;
  final double downloadProgress;
  final String? downloadStatus;
  final String? downloadedFilePath;

  const _DownloadSection({
    required this.onDownload,
    required this.isDownloading,
    required this.downloadProgress,
    this.downloadStatus,
    this.downloadedFilePath,
  });

  @override
  State<_DownloadSection> createState() => _DownloadSectionState();
}

class _DownloadSectionState extends State<_DownloadSection> {
  final TextEditingController _urlController = TextEditingController(
    text: 'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
  );
  final TextEditingController _fileNameController = TextEditingController(
    text: 'dummy.pdf',
  );

  @override
  void dispose() {
    _urlController.dispose();
    _fileNameController.dispose();
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
                const Icon(LucideIcons.download, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Download File',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: 'File URL',
                hintText: 'https://example.com/file.pdf',
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _fileNameController,
              decoration: const InputDecoration(
                labelText: 'File Name',
                hintText: 'file.pdf',
              ),
            ),
            const SizedBox(height: 16),
            if (widget.isDownloading)
              Column(
                children: [
                  LinearProgressIndicator(value: widget.downloadProgress),
                  const SizedBox(height: 8),
                  Text(
                    widget.downloadStatus ?? '',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              )
            else if (widget.downloadStatus != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: widget.downloadedFilePath != null
                      ? Colors.green[50]
                      : Colors.red[50],
                  border: Border.all(
                    color: widget.downloadedFilePath != null
                        ? Colors.green[300]!
                        : Colors.red[300]!,
                    width: 0.5,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      widget.downloadedFilePath != null
                          ? LucideIcons.check
                          : LucideIcons.x,
                      color: widget.downloadedFilePath != null
                          ? Colors.green
                          : Colors.red,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.downloadStatus ?? '',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          if (widget.downloadedFilePath != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              widget.downloadedFilePath!,
                              style: Theme.of(context).textTheme.bodySmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: widget.isDownloading
                    ? null
                    : () {
                        if (_urlController.text.isNotEmpty &&
                            _fileNameController.text.isNotEmpty) {
                          widget.onDownload(_urlController.text, _fileNameController.text);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please enter URL and file name')),
                          );
                        }
                      },
                icon: const Icon(LucideIcons.download, size: 18),
                label: const Text('Download File'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

