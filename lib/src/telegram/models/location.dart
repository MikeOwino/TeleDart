/// TeleDart - Telegram Bot API for Dart
/// Copyright (C) 2019  Dino PH Leung
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU General Public License as published by
/// the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.

part of '../model.dart';

/// This object represents a point on the map.
///
/// https://core.telegram.org/bots/api#location
@JsonSerializable()
class Location {
  double longitude;
  double latitude;
  double horizontal_accuracy;
  int live_period;
  int heading;
  int proximity_alert_radius;
  Location({
    this.longitude,
    this.latitude,
    this.horizontal_accuracy,
    this.live_period,
    this.heading,
    this.proximity_alert_radius,
  });
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
