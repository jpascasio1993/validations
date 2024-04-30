part of validator;

class ClassValidator<T> {
  final String? name;
  final List<ClassConstraintValidator> validators;
  const ClassValidator({
    this.name,
    this.validators = const [],
  });
  bool checkType(Object value) {
    return value is T;
  }

  String getType() {
    return T.toString();
  }
}
