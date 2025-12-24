import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/datetime/cubit/datetime_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/datetime/cubit/datetime_state.dart';

/// DateTime Helper Demo View
class DateTimeView extends MasterViewCubit<DateTimeCubit, DateTimeState> {
  DateTimeView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('Date & Time Helper'),
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
  Future<void> initialContent(DateTimeCubit viewModel, BuildContext context) async {
    // No initialization needed
  }

  @override
  Widget viewContent(BuildContext context, DateTimeCubit viewModel, DateTimeState state) {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1));
    final lastWeek = now.subtract(const Duration(days: 7));
    final lastMonth = now.subtract(const Duration(days: 30));
    final lastYear = now.subtract(const Duration(days: 365));

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection(
            context,
            title: 'Date Formatting',
            icon: LucideIcons.calendar,
            children: [
              _buildInfoRow(context, 'Default (yyyy-MM-dd)', DateTimeHelper.formatDate(now)),
              _buildInfoRow(
                context,
                'Full Date (dd/MM/yyyy)',
                DateTimeHelper.formatDate(now, pattern: 'dd/MM/yyyy'),
              ),
              _buildInfoRow(
                context,
                'Month Name (MMMM dd, yyyy)',
                DateTimeHelper.formatDate(now, pattern: 'MMMM dd, yyyy'),
              ),
              _buildInfoRow(
                context,
                'Short (MMM dd)',
                DateTimeHelper.formatDate(now, pattern: 'MMM dd'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildSection(
            context,
            title: 'Time Formatting',
            icon: LucideIcons.clock,
            children: [
              _buildInfoRow(context, 'Default (HH:mm)', DateTimeHelper.formatTime(now)),
              _buildInfoRow(
                context,
                '12-hour (hh:mm a)',
                DateTimeHelper.formatTime(now, pattern: 'hh:mm a'),
              ),
              _buildInfoRow(
                context,
                '24-hour (HH:mm:ss)',
                DateTimeHelper.formatTime(now, pattern: 'HH:mm:ss'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildSection(
            context,
            title: 'Date & Time Formatting',
            icon: LucideIcons.calendarClock,
            children: [
              _buildInfoRow(
                context,
                'Default (yyyy-MM-dd HH:mm)',
                DateTimeHelper.formatDateTime(now),
              ),
              _buildInfoRow(
                context,
                'Full (EEEE, MMMM dd, yyyy hh:mm a)',
                DateTimeHelper.formatDateTime(now, pattern: 'EEEE, MMMM dd, yyyy hh:mm a'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildSection(
            context,
            title: 'Relative Time',
            icon: LucideIcons.clock4,
            children: [
              _buildInfoRow(
                context,
                'Just now',
                DateTimeHelper.getRelativeTime(now.subtract(const Duration(seconds: 30))),
              ),
              _buildInfoRow(context, 'Yesterday', DateTimeHelper.getRelativeTime(yesterday)),
              _buildInfoRow(context, 'Last week', DateTimeHelper.getRelativeTime(lastWeek)),
              _buildInfoRow(context, 'Last month', DateTimeHelper.getRelativeTime(lastMonth)),
              _buildInfoRow(context, 'Last year', DateTimeHelper.getRelativeTime(lastYear)),
            ],
          ),
          const SizedBox(height: 24),
          _buildSection(
            context,
            title: 'Date Parsing',
            icon: LucideIcons.fileText,
            children: [
              _buildInfoRow(
                context,
                'Parse "2024-12-23"',
                DateTimeHelper.parseDate('2024-12-23')?.toString() ?? 'Failed',
              ),
              _buildInfoRow(
                context,
                'Parse "23/12/2024"',
                DateTimeHelper.parseDate('23/12/2024', pattern: 'dd/MM/yyyy')?.toString() ?? 'Failed',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 20),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

