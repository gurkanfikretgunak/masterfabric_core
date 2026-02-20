# masterfabric-core-flutter Cursor Plugin

A Cursor plugin that provides AI guidance for building Flutter apps with [MasterFabric Core](https://pub.dev/packages/masterfabric_core) architecture: MVVM+BLoC, Injectable, and the Master View system.

## What This Plugin Provides

### Rules

- **masterfabric-conventions** (`.cursor/rules/`) – Coding conventions for MasterFabric projects: import order, naming, state management (Equatable, copyWith), Cubit patterns, View patterns, error handling, and platform safety.
- **create-view** – Step-by-step guide to create a new view with State, Cubit, and MasterViewCubit.
- **create-base-widget** – How to create base/reusable widgets (StatelessWidget, MasterScaffoldWidget, BlocBuilder).
- **create-helper** – How to create helpers with @lazySingleton, emoji logging, and platform safety.
- **create-components-with-base** – Create components using MasterViewCubit, pre-built views (LoadingView, ErrorHandlingView), and layout types.
- **create-analyze** – Run dart analyze, format, build_runner; use MCP for analysis and fixes.
- **create-config** – Configure app via app_config.json, AssetConfigHelper, nested keys.
- **error-handling** – Try-catch, emoji logging, platform checks, FlutterError.reportError.
- **documentation-style** – Emoji docs, doc structure, @category/@subCategory.
- **platform-channels** – Native iOS/Android via MethodChannel, no Dart packages.

### Skills

- **base-pattern-documentation** – Use when documenting new base classes, view patterns, state management patterns, or architectural components. Guides consistent, emoji-rich documentation for foundational code.

### Agents

- **flutter-architecture** – Flutter architecture specialist for masterfabric_core. Use when adding views, cubits, helpers, DI, or following MVVM+BLoC patterns. Knows AGENTS.md conventions, base classes, and project structure.

### Dart/Flutter MCP Server

The plugin includes the [official Dart and Flutter MCP server](https://dart.dev/tools/mcp-server), which enables:

- Code formatting with `dart format` and analysis server
- Running tests and analyzing results
- Managing dependencies in `pubspec.yaml`
- Searching [pub.dev](https://pub.dev) for packages
- Introspecting running Flutter apps (widget tree, runtime errors)
- Resolving symbols and fetching documentation
- Analyzing and fixing errors

**Requirements**: Dart SDK 3.9+ and Flutter 3.35+.

## Installation

### From Cursor Marketplace

1. Open Cursor
2. Go to **Settings** → **Plugins** (or the marketplace)
3. Search for `masterfabric-core-flutter` and install

### From GitHub

1. Open Cursor
2. Go to **Settings** → **Plugins**
3. Add plugin from URL: `https://github.com/gurkanfikretgunak/masterfabric_core`

## Links

- **Package**: [pub.dev/packages/masterfabric_core](https://pub.dev/packages/masterfabric_core)
- **Repository**: [github.com/gurkanfikretgunak/masterfabric_core](https://github.com/gurkanfikretgunak/masterfabric_core)
- **License**: AGPL-3.0
