sealed class AddStudentFormState {
  const AddStudentFormState();
}

class InitialAddStudentForm implements AddStudentFormState {
  const InitialAddStudentForm();
}

class AddingStudent implements AddStudentFormState {
  const AddingStudent();
}

class AddStudentFormSuccess implements AddStudentFormState {
  const AddStudentFormSuccess();
}

class AddStudentFormError implements AddStudentFormState {
  final String message;

  const AddStudentFormError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddStudentFormError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;

  @override
  String toString() => 'AddStudentFormError(message: $message)';
}
