class CategoryModel {
  int? _status;
  String? _message;
  List<CategoryDataModel>? _data;
  String? _method;

  CategoryModel(
      {int? status, String? message, List<CategoryDataModel>? data, String? method}) {
    if (status != null) {
      this._status = status;
    }
    if (message != null) {
      this._message = message;
    }
    if (data != null) {
      this._data = data;
    }
    if (method != null) {
      this._method = method;
    }
  }

  int? get status => _status;
  set status(int? status) => _status = status;
  String? get message => _message;
  set message(String? message) => _message = message;
  List<CategoryDataModel>? get data => _data;
  set data(List<CategoryDataModel>? data) => _data = data;
  String? get method => _method;
  set method(String? method) => _method = method;

  CategoryModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = <CategoryDataModel>[];
      json['data'].forEach((v) {
        _data!.add(new CategoryDataModel.fromJson(v));
      });
    }
    _method = json['method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data!.map((v) => v.toJson()).toList();
    }
    data['method'] = this._method;
    return data;
  }
}

class CategoryDataModel {
  String? id;
  String? name;
  String? description;
  String? icon;
  String? color;
  String? status;
  String? userId;
  String? createdAt;
  String? updatedAt;

  CategoryDataModel(
      {String? id,
        String? name,
        String? description,
        String? icon,
        String? color,
        String? status,
        String? userId,
        String? createdAt,
        String? updatedAt}) {
    if (id != null) {
      this.id = id;
    }
    if (name != null) {
      this.name = name;
    }
    if (description != null) {
      this.description = description;
    }
    if (icon != null) {
      this.icon = icon;
    }
    if (color != null) {
      this.color = color;
    }
    if (status != null) {
      this.status = status;
    }
    if (userId != null) {
      this.userId = userId;
    }
    if (createdAt != null) {
      this.createdAt = createdAt;
    }
    if (updatedAt != null) {
      this.updatedAt = updatedAt;
    }
  }

  String? get _id => id;
  set _id(String? id) => id = id;
  String? get _name => name;
  set _name(String? name) => name = name;
  String? get _description => description;
  set _description(String? description) => description = description;
  String? get _icon => icon;
  set _icon(String? icon) => icon = icon;
  String? get _color => color;
  set _color(String? color) => color = color;
  String? get _status => status;
  set _status(String? status) => status = status;
  String? get _userId => userId;
  set _userId(String? userId) => userId = userId;
  String? get _createdAt => createdAt;
  set _createdAt(String? createdAt) => createdAt = createdAt;
  String? get _updatedAt => updatedAt;
  set _updatedAt(String? updatedAt) => updatedAt = updatedAt;

  CategoryDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    icon = json['icon'];
    color = json['color'];
    status = json['status'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['color'] = this.color;
    data['status'] = this.status;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
