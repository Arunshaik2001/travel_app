


extension StringUtils on String?{
  bool isNotNullNorEmpty() {
    if (this == null || this!.isEmpty) return false;
    return true;
  }

  bool isNullOrEmpty() {
    if (this == null || this!.isEmpty) return true;
    return false;
  }
}
