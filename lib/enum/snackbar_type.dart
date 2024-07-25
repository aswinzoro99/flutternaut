enum SnackbarType { info, success, error }

extension SnackBarTypeExtension on SnackbarType {
  bool get isInfo => this == SnackbarType.info;

  bool get isSuccess => this == SnackbarType.success;

  bool get isError => this == SnackbarType.error;
}
