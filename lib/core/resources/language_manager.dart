enum LanguageType { english, nepali }

const english = 'en';
const nepali = 'nep';

extension LanguagTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return english;
      case LanguageType.nepali:
        return nepali;
    }
  }
}
