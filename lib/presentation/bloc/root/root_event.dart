part of 'root_bloc.dart';

sealed class RootEvent extends Equatable {
  const RootEvent();

  @override
  List<Object?> get props => [];
}

class OnNavigationBarItemChanged extends RootEvent {
  final NavbarType item;

  const OnNavigationBarItemChanged(this.item);

  @override
  List<Object?> get props => [item];
}
