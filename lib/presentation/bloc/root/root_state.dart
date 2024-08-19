part of 'root_bloc.dart';

class RootState extends Equatable {
  const RootState({
    this.status = RootScreenStatus.initial,
    this.selectedItem = NavbarType.works,
  });

  final RootScreenStatus status;
  final NavbarType selectedItem;

  @override
  List<Object?> get props => [status, selectedItem];

  RootState copyWith({
    RootScreenStatus? status,
    NavbarType? selectedItem,
  }) {
    return RootState(
      status: status ?? this.status,
      selectedItem: selectedItem ?? this.selectedItem,
    );
  }
}

enum RootScreenStatus { initial, success, error, loading, selected }

extension CategoryStatusX on RootScreenStatus {
  bool get isInitial => this == RootScreenStatus.initial;

  bool get isSuccess => this == RootScreenStatus.success;

  bool get isError => this == RootScreenStatus.error;

  bool get isLoading => this == RootScreenStatus.loading;

  bool get isSelected => this == RootScreenStatus.selected;
}
