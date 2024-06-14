sealed class AddNoticeFormState {
  const AddNoticeFormState();
}

class InitialAddNoticeForm implements AddNoticeFormState {
  const InitialAddNoticeForm();
}

class AddingNotice implements AddNoticeFormState {
  const AddingNotice();
}

class AddNoticeFormSuccess implements AddNoticeFormState {
  const AddNoticeFormSuccess();
}

class AddNoticeFormError implements AddNoticeFormState {
  final String message;

  const AddNoticeFormError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddNoticeFormError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;

  @override
  String toString() => 'AddNoticeFormError(message: $message)';
}
