// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

abstract class _$TestCarValidator implements Validator<Car> {
  static String manufacturerNotNullMessage(Object validatedValue) =>
      Intl.message(
        'Manufacturer must not be null',
        name: 'manufacturerNotNullMessage',
        args: [validatedValue],
      );
  static String licensePlateSizeMessage(
    int min,
    int max,
    Object validatedValue,
  ) =>
      Intl.message(
        'The license plate $validatedValue must be between $min and $max characters long',
        name: 'licensePlateSizeMessage',
        args: [
          min,
          max,
          validatedValue,
        ],
      );
  static String seatCountMinMessage(
    dynamic value,
    Object validatedValue,
  ) =>
      Intl.message(
        'Car must at least have $value seats available',
        name: 'seatCountMinMessage',
        args: [
          value,
          validatedValue,
        ],
      );
  static String seatCountMaxMessage(
    dynamic value,
    Object validatedValue,
  ) =>
      Intl.message(
        'Car cannot have more than $value seats',
        name: 'seatCountMaxMessage',
        args: [
          value,
          validatedValue,
        ],
      );
  static String topSpeedMaxMessage(
    dynamic value,
    Object validatedValue,
  ) =>
      Intl.message(
        'The top speed $validatedValue is higher than $value',
        name: 'topSpeedMaxMessage',
        args: [
          value,
          validatedValue,
        ],
      );
  static String carFieldMatchBaseFieldMessage(
    String baseField,
    String matchField,
    Object validatedValue,
  ) =>
      Intl.message(
        'Left and Right front wheel covers should match!',
        name: 'carFieldMatchBaseFieldMessage',
        args: [
          baseField,
          matchField,
          validatedValue,
        ],
      );
  static String carFieldMatchMatchFieldMessage(
    String baseField,
    String matchField,
    Object validatedValue,
  ) =>
      Intl.message(
        'Left and Right rear wheel covers should match!',
        name: 'carFieldMatchMatchFieldMessage',
        args: [
          baseField,
          matchField,
          validatedValue,
        ],
      );
  @override
  List<FieldValidator> getFieldValidators() {
    return [
      FieldValidator<String>(
        name: 'manufacturer',
        validators: [NotNullValidator()..message = manufacturerNotNullMessage],
      ),
      FieldValidator<String>(
        name: 'licensePlate',
        validators: [
          SizeValidator(
            min: 2,
            max: 14,
          )..message = licensePlateSizeMessage,
          NotNullValidator(),
        ],
      ),
      FieldValidator<int>(
        name: 'seatCount',
        validators: [
          MinValidator(value: 1)..message = seatCountMinMessage,
          MaxValidator(value: 2)..message = seatCountMaxMessage,
        ],
      ),
      FieldValidator<int>(
        name: 'topSpeed',
        validators: [MaxValidator(value: 350)..message = topSpeedMaxMessage],
      ),
      FieldValidator<String>(
        name: 'frontWheelCoverLeft',
        validators: [NotEmptyValidator()],
        validateClass: true,
      ),
      FieldValidator<String>(
        name: 'frontWheelCoverRight',
        validators: [NotEmptyValidator()],
        validateClass: true,
      ),
      FieldValidator<String>(
        name: 'rearWheelCoverLeft',
        validators: [NotEmptyValidator()],
        validateClass: true,
      ),
      FieldValidator<String>(
        name: 'rearWheelCoverRight',
        validators: [NotEmptyValidator()],
        validateClass: true,
      ),
    ];
  }

  String? validateManufacturer(Object value) => errorCheck(
        'manufacturer',
        value,
      );
  String? validateLicensePlate(Object value) => errorCheck(
        'licensePlate',
        value,
      );
  String? validateSeatCount(Object value) => errorCheck(
        'seatCount',
        value,
      );
  String? validateTopSpeed(Object value) => errorCheck(
        'topSpeed',
        value,
      );
  String? validateFrontWheelCoverLeft(
    Object value,
    Car object,
  ) =>
      crossErrorCheck(
        object,
        'frontWheelCoverLeft',
        value,
      );
  String? validateFrontWheelCoverRight(
    Object value,
    Car object,
  ) =>
      crossErrorCheck(
        object,
        'frontWheelCoverRight',
        value,
      );
  String? validateRearWheelCoverLeft(
    Object value,
    Car object,
  ) =>
      crossErrorCheck(
        object,
        'rearWheelCoverLeft',
        value,
      );
  String? validateRearWheelCoverRight(
    Object value,
    Car object,
  ) =>
      crossErrorCheck(
        object,
        'rearWheelCoverRight',
        value,
      );
  @override
  PropertyMap<Car> props(Car instance) {
    return PropertyMap<Car>({
      'manufacturer': instance.manufacturer,
      'licensePlate': instance.licensePlate,
      'seatCount': instance.seatCount,
      'topSpeed': instance.topSpeed,
      'frontWheelCoverLeft': instance.frontWheelCoverLeft,
      'frontWheelCoverRight': instance.frontWheelCoverRight,
      'rearWheelCoverLeft': instance.rearWheelCoverLeft,
      'rearWheelCoverRight': instance.rearWheelCoverRight,
    });
  }

  @override
  ClassValidator getClassValidator() {
    return ClassValidator<Car>(validators: [
      FieldMatchValidator(
        baseField: 'frontWheelCoverLeft',
        matchField: 'frontWheelCoverRight',
      )
        ..affectedFields = [
          'frontWheelCoverLeft',
          'frontWheelCoverRight',
        ]
        ..baseFieldMessage = carFieldMatchBaseFieldMessage,
      FieldMatchValidator(
        baseField: 'rearWheelCoverLeft',
        matchField: 'rearWheelCoverRight',
      )
        ..affectedFields = [
          'rearWheelCoverLeft',
          'rearWheelCoverRight',
        ]
        ..matchFieldMessage = carFieldMatchMatchFieldMessage,
    ]);
  }
}

abstract class _$TestDriverValidator implements Validator<Driver> {
  @override
  List<FieldValidator> getFieldValidators() {
    return [
      FieldValidator<String>(
        name: 'name',
        validators: [NotNullValidator()],
      )
    ];
  }

  String? validateName(Object value) => errorCheck(
        'name',
        value,
      );
  @override
  PropertyMap<Driver> props(Driver instance) {
    return PropertyMap<Driver>({'name': instance.name});
  }
}
