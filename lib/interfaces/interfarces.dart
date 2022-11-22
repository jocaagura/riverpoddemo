abstract class InterfaceModel {
  const InterfaceModel();
  Map<String, dynamic> toJson();

  InterfaceModel copyWith();

  InterfaceModel fromJson(Map<String, dynamic> json);
}

abstract class InterfaceController {
  const InterfaceController();
  InterfaceController copyWith();
}
