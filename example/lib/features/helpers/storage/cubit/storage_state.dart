import 'package:equatable/equatable.dart';

/// Storage State
class StorageState extends Equatable {
  final String? storedString;
  final int? storedInt;
  final bool? storedBool;
  final double? storedDouble;

  const StorageState({
    this.storedString,
    this.storedInt,
    this.storedBool,
    this.storedDouble,
  });

  const StorageState.initial()
      : storedString = null,
        storedInt = null,
        storedBool = null,
        storedDouble = null;

  StorageState copyWith({
    String? storedString,
    int? storedInt,
    bool? storedBool,
    double? storedDouble,
  }) {
    return StorageState(
      storedString: storedString ?? this.storedString,
      storedInt: storedInt ?? this.storedInt,
      storedBool: storedBool ?? this.storedBool,
      storedDouble: storedDouble ?? this.storedDouble,
    );
  }

  @override
  List<Object?> get props => [storedString, storedInt, storedBool, storedDouble];
}

