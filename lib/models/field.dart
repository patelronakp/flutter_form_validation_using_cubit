class Field<T> {
  final T value;
  String errorMsg = "";
  bool _isValid = false;
  bool _isTouched = false;

  Field(this.value);

  set isValid(bool valid) {
    _isValid = valid;
    _isTouched = true;
    if (valid == true) errorMsg = "";
  }

  void setTouched() => _isTouched = true;

  bool get isInValid => (_isTouched ? !_isValid : _isTouched);

  bool get isValid => _isValid;
}
