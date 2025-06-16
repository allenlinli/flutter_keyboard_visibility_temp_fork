# Flutter Keyboard Visibility Web AllenLinli

A fork of [flutter_keyboard_visibility_web](https://pub.dev/packages/flutter_keyboard_visibility_web) that's compatible with Flutter/WASM and [flutter_keyboard_visibility](https://pub.dev/packages/flutter_keyboard_visibility). This package provides web support for [flutter_keyboard_visibility_allenlinli](https://pub.dev/packages/flutter_keyboard_visibility_allenlinli).

This is a renamed fork of flutter_keyboard_visibility_web with updated dependencies and modern linting support.

## Usage

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  flutter_keyboard_visibility_web_allenlinli: ^2.0.1
```

## Flutter/WASM Compatibility

This package is compatible with Flutter WebAssembly (WASM) compilation. If you're using dependencies that rely on the original `flutter_keyboard_visibility_web` and experiencing WASM build issues, you can override it:

```yaml
dependency_overrides:
  # Override with WASM-compatible version
  flutter_keyboard_visibility_web:
    git:
      url: https://github.com/allenlinli/flutter_keyboard_visibility_temp_fork.git
      ref: main
      path: flutter_keyboard_visibility_web
```

## Features

- ✅ Flutter/WASM compatible
- ✅ Updated dependencies (lints 5.0.0)
- ✅ Modern Dart SDK support (>=3.0.0)
- ✅ Zero static analysis issues

## Related Packages

- [flutter_keyboard_visibility_allenlinli](https://pub.dev/packages/flutter_keyboard_visibility_allenlinli) - Main plugin with comprehensive platform support
- [flutter_keyboard_visibility](https://pub.dev/packages/flutter_keyboard_visibility) - Original plugin

See the [GitHub repository](https://github.com/allenlinli/flutter_keyboard_visibility_temp_fork) for more details.
