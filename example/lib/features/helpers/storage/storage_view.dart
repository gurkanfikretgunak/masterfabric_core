import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/storage/cubit/storage_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/storage/cubit/storage_state.dart';

/// Local Storage Helper Demo View
class StorageView extends MasterViewCubit<StorageCubit, StorageState> {
  StorageView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('Local Storage Helper'),
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
              actions: [
                IconButton(
                  icon: const Icon(LucideIcons.trash2),
                  onPressed: () => viewModel.clearStorage(),
                  tooltip: 'Clear Storage',
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(StorageCubit viewModel, BuildContext context) async {
    // State is loaded in constructor
  }

  @override
  Widget viewContent(BuildContext context, StorageCubit viewModel, StorageState state) {
    return BlocBuilder<StorageCubit, StorageState>(
      bloc: viewModel,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _StorageSection(
                title: 'String Storage',
                icon: LucideIcons.type,
                keyHint: 'demo_string',
                onSave: (key, value) => viewModel.saveString(key, value),
                storedValue: state.storedString,
              ),
              const SizedBox(height: 24),
              _StorageSection(
                title: 'Integer Storage',
                icon: LucideIcons.hash,
                keyHint: 'demo_int',
                onSave: (key, value) {
                  final intValue = int.tryParse(value);
                  if (intValue != null) {
                    viewModel.saveInt(key, intValue);
                  }
                },
                storedValue: state.storedInt?.toString(),
                isInt: true,
              ),
              const SizedBox(height: 24),
              _BooleanSection(
                keyHint: 'demo_bool',
                onSave: (key, value) => viewModel.saveBool(key, value),
                storedValue: state.storedBool,
              ),
              const SizedBox(height: 24),
              _StorageSection(
                title: 'Double Storage',
                icon: LucideIcons.hash,
                keyHint: 'demo_double',
                onSave: (key, value) {
                  final doubleValue = double.tryParse(value);
                  if (doubleValue != null) {
                    viewModel.saveDouble(key, doubleValue);
                  }
                },
                storedValue: state.storedDouble?.toString(),
                isDouble: true,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _StorageSection extends StatefulWidget {
  final String title;
  final IconData icon;
  final String keyHint;
  final Function(String key, String value) onSave;
  final String? storedValue;
  final bool isInt;
  final bool isDouble;

  const _StorageSection({
    required this.title,
    required this.icon,
    required this.keyHint,
    required this.onSave,
    this.storedValue,
    this.isInt = false,
    this.isDouble = false,
  });

  @override
  State<_StorageSection> createState() => _StorageSectionState();
}

class _StorageSectionState extends State<_StorageSection> {
  final TextEditingController _keyController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  @override
  void dispose() {
    _keyController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void _handleSave() {
    if (_keyController.text.isEmpty || _valueController.text.isEmpty) {
      return;
    }
    widget.onSave(_keyController.text, _valueController.text);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${widget.title} saved')),
    );
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
              controller: _keyController,
              decoration: InputDecoration(
                labelText: 'Key',
                hintText: widget.keyHint,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _valueController,
              decoration: const InputDecoration(
                labelText: 'Value',
              ),
              keyboardType: widget.isInt || widget.isDouble
                  ? TextInputType.number
                  : TextInputType.text,
            ),
            const SizedBox(height: 12),
            if (widget.storedValue != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey[300]!, width: 0.5),
                ),
                child: Row(
                  children: [
                    const Icon(LucideIcons.database, size: 16),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Stored: ${widget.storedValue}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _handleSave,
                icon: const Icon(LucideIcons.save, size: 18),
                label: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BooleanSection extends StatefulWidget {
  final String keyHint;
  final Function(String key, bool value) onSave;
  final bool? storedValue;

  const _BooleanSection({
    required this.keyHint,
    required this.onSave,
    this.storedValue,
  });

  @override
  State<_BooleanSection> createState() => _BooleanSectionState();
}

class _BooleanSectionState extends State<_BooleanSection> {
  final TextEditingController _keyController = TextEditingController();

  @override
  void dispose() {
    _keyController.dispose();
    super.dispose();
  }

  void _handleSave(bool value) {
    if (_keyController.text.isEmpty) {
      return;
    }
    widget.onSave(_keyController.text, value);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Boolean saved: $value')),
    );
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
                const Icon(LucideIcons.toggleLeft, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Boolean Storage',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _keyController,
              decoration: InputDecoration(
                labelText: 'Key',
                hintText: widget.keyHint,
              ),
            ),
            const SizedBox(height: 12),
            if (widget.storedValue != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey[300]!, width: 0.5),
                ),
                child: Row(
                  children: [
                    const Icon(LucideIcons.database, size: 16),
                    const SizedBox(width: 8),
                    Text(
                      'Stored: ${widget.storedValue}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _handleSave(true),
                    icon: const Icon(LucideIcons.check, size: 18),
                    label: const Text('Save True'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _handleSave(false),
                    icon: const Icon(LucideIcons.x, size: 18),
                    label: const Text('Save False'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

