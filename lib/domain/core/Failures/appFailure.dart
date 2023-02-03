import 'package:freezed_annotation/freezed_annotation.dart';
part 'appFailure.freezed.dart';
@freezed
abstract class AppFailure with _$AppFailure {
  const factory AppFailure.unexpected() = Unexpected;
  const factory AppFailure.insufficientPermissions() = InsufficientPermissions;
  const factory AppFailure.unableToUpdate() = UnableToUpdate;
    const factory AppFailure.userCancelled() = UserCancelled;
}