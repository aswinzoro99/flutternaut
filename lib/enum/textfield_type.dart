enum TextfieldType { name, email, message }

extension TextfieldTypeExtension on TextfieldType {
  bool get isName => this == TextfieldType.name;

  bool get isEmail => this == TextfieldType.email;

  bool get isMessage => this == TextfieldType.message;

  String getPlaceHolderText() {
    switch (this) {
      case TextfieldType.name:
        return 'NAME';
      case TextfieldType.email:
        return 'EMAIL';
      case TextfieldType.message:
        return 'MESSAGE';
    }
  }
}
