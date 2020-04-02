class TimeUnit {
  static const int _C_MILLISECONDS = 1;
  static const int _C_SECONDS = _C_MILLISECONDS * 1000;
  static const int _C_MINUTES = _C_SECONDS * 60;
  static const int _C_HOURS = _C_MINUTES * 60;
  static const int _C_DAYS = _C_HOURS * 24;

  static const MILLISECONDS = const TimeUnit._internal(_C_MILLISECONDS);
  static const SECONDS = const TimeUnit._internal(_C_SECONDS);
  static const MINUTES = const TimeUnit._internal(_C_MINUTES);
  static const HOURS = const TimeUnit._internal(_C_HOURS);
  static const DAYS = const TimeUnit._internal(_C_DAYS);

  final int _value;

  const TimeUnit._internal(this._value);

  double convert(int d, TimeUnit u) {
    return d / u._value;
  }

  int toMillis(int d) => d * _value;

  double toSeconds(int d) => toMillis(d) / _C_SECONDS;

  double toMinutes(int d) => toMillis(d) / _C_MINUTES;

  double toHours(int d) => toMillis(d) / _C_HOURS;

  double toDays(int d) => toMillis(d) / _C_DAYS;
}
