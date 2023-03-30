class Customer{

  String _Name;
  String _MailAddress;
  String _Pic;

  Customer(this._Name, this._MailAddress, this._Pic);

  String get Pic => _Pic;

  set Pic(String value) {
    _Pic = value;
  }

  String get MailAddress => _MailAddress;

  set MailAddress(String value) {
    _MailAddress = value;
  }

  String get Name => _Name;

  set Name(String value) {
    _Name = value;
  }

  @override
  String toString() {
    return 'Customer{_Name: $_Name, _MailAddress: $_MailAddress, _Pic: $_Pic}';
  }
}