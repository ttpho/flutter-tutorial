import 'package:flutter_test/flutter_test.dart';
import 'package:timeunit/time_unit.dart';

void main() {
  test("test TimeUnit with toMillis method", () {
    expect(TimeUnit.MILLISECONDS.toMillis(1), 1);
    expect(TimeUnit.SECONDS.toMillis(5), 5000);
    expect(TimeUnit.MINUTES.toMillis(7), 420000);
    expect(TimeUnit.HOURS.toMillis(8), 28800000);
    expect(TimeUnit.DAYS.toMillis(14), 1209600000);
  });

  test("test TimeUnit with toSeconds method", () {
    expect(TimeUnit.MILLISECONDS.toSeconds(200), 0.2);
    expect(TimeUnit.SECONDS.toSeconds(5), 5);
    expect(TimeUnit.MINUTES.toSeconds(7), 420);
    expect(TimeUnit.HOURS.toSeconds(8), 28800);
    expect(TimeUnit.DAYS.toSeconds(14), 1209600);
  });

  test("test TimeUnit with toMinutes method", () {
    expect(TimeUnit.MILLISECONDS.toMinutes(1209600), 20.16);
    expect(TimeUnit.SECONDS.toMinutes(120), 2);
    expect(TimeUnit.MINUTES.toMinutes(7), 7);
    expect(TimeUnit.HOURS.toMinutes(8), 480);
    expect(TimeUnit.DAYS.toMinutes(14), 20160);
  });

  test("test TimeUnit with toHours method", () {
    expect(TimeUnit.MILLISECONDS.toHours(1209600), 0.336);
    expect(TimeUnit.SECONDS.toHours(72000), 20);
    expect(TimeUnit.MINUTES.toHours(420), 7);
    expect(TimeUnit.HOURS.toHours(8), 8);
    expect(TimeUnit.DAYS.toHours(14), 336);
  });

  test("test TimeUnit with toDays method", () {
    expect(TimeUnit.MILLISECONDS.toDays(1209600000), 14);
    expect(TimeUnit.SECONDS.toDays(1209600), 14);
    expect(TimeUnit.MINUTES.toDays(20160), 14);
    expect(TimeUnit.HOURS.toDays(480), 20);
    expect(TimeUnit.DAYS.toDays(14), 14);
  });
}
