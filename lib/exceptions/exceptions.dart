class UnProcessedEntity implements Exception{


  @override
  String toString() {
    return "missing fields";
  }
}


class LoginFailed implements Exception{


  @override
  String toString() {
    return "credentials rejected";
  }
}


class RedirectionFound implements Exception{


  @override
  String toString() {
    return "too many redirection";
  }
}


class ResourceNotFound implements Exception{

  String message;

  ResourceNotFound(this.message);

  @override
  String toString() {
    return "resourse ${this.message} not found";
  }
}


class PropertyIsRequired implements Exception{

  String field;

  PropertyIsRequired(this.field);

  @override
  String toString() {
    return "property ${this.field} is required";
  }
}


class NoInternetConnection implements Exception{


  @override
  String toString() {
    return "no internet";
  }
}
