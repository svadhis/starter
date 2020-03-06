extension Ext_String on String {

  /// Parses the string at radix-10 by default. If it fails, returns `0`
  int toInt({radix: 10}) => int.tryParse(this, radix: radix) ?? 0;

  bool toBool() => (this == '0' || this == 'false') ? false : true;

}