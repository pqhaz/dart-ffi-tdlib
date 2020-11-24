part of '../tdapi.dart';

class InputFile extends TdObject {
  /// Points to a file
  InputFile();

  /// a InputFile return type can be :
  /// * InputFileId
  /// * InputFileRemote
  /// * InputFileLocal
  /// * InputFileGenerated
  factory InputFile.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputFileId.CONSTRUCTOR:
        return InputFileId.fromJson(json);
      case InputFileRemote.CONSTRUCTOR:
        return InputFileRemote.fromJson(json);
      case InputFileLocal.CONSTRUCTOR:
        return InputFileLocal.fromJson(json);
      case InputFileGenerated.CONSTRUCTOR:
        return InputFileGenerated.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileId extends InputFile {
  /// A file defined by its unique inputFileId
  InputFileId({this.id});

  /// [id] Unique file identifier
  int id;

  /// Parse from a json
  InputFileId.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
    };
  }

  static const CONSTRUCTOR = 'inputFileId';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileRemote extends InputFile {
  /// A file defined by its remote inputFileRemote. The remote inputFileRemote is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib.. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
  InputFileRemote({this.id});

  /// [id] Remote file identifier
  String id;

  /// Parse from a json
  InputFileRemote.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
    };
  }

  static const CONSTRUCTOR = 'inputFileRemote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileLocal extends InputFile {
  /// A file defined by a local path
  InputFileLocal({this.path});

  /// [path] Local path to the file
  String path;

  /// Parse from a json
  InputFileLocal.fromJson(Map<String, dynamic> json) {
    this.path = json['path'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "path": this.path,
    };
  }

  static const CONSTRUCTOR = 'inputFileLocal';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileGenerated extends InputFile {
  /// A file generated by the application
  InputFileGenerated({this.originalPath, this.conversion, this.expectedSize});

  /// [originalPath] Local path to a file from which the file is generated; may be empty if there is no such file
  String originalPath;

  /// [conversion] String specifying the conversion applied to the original file; should be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage
  String conversion;

  /// [expectedSize] Expected size of the generated file; 0 if unknown
  int expectedSize;

  /// Parse from a json
  InputFileGenerated.fromJson(Map<String, dynamic> json) {
    this.originalPath = json['original_path'];
    this.conversion = json['conversion'];
    this.expectedSize = json['expected_size'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "original_path": this.originalPath,
      "conversion": this.conversion,
      "expected_size": this.expectedSize,
    };
  }

  static const CONSTRUCTOR = 'inputFileGenerated';

  @override
  String getConstructor() => CONSTRUCTOR;
}
