// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'caff_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CaffDto extends CaffDto {
  @override
  final int caffId;
  @override
  final String caffName;
  @override
  final String gifUrl;
  @override
  final String caffUrl;
  @override
  final DateTime uploadedDate;
  @override
  final String uploadedBy;

  factory _$CaffDto([void Function(CaffDtoBuilder) updates]) =>
      (new CaffDtoBuilder()..update(updates)).build();

  _$CaffDto._(
      {this.caffId,
      this.caffName,
      this.gifUrl,
      this.caffUrl,
      this.uploadedDate,
      this.uploadedBy})
      : super._();

  @override
  CaffDto rebuild(void Function(CaffDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaffDtoBuilder toBuilder() => new CaffDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaffDto &&
        caffId == other.caffId &&
        caffName == other.caffName &&
        gifUrl == other.gifUrl &&
        caffUrl == other.caffUrl &&
        uploadedDate == other.uploadedDate &&
        uploadedBy == other.uploadedBy;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, caffId.hashCode), caffName.hashCode),
                    gifUrl.hashCode),
                caffUrl.hashCode),
            uploadedDate.hashCode),
        uploadedBy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaffDto')
          ..add('caffId', caffId)
          ..add('caffName', caffName)
          ..add('gifUrl', gifUrl)
          ..add('caffUrl', caffUrl)
          ..add('uploadedDate', uploadedDate)
          ..add('uploadedBy', uploadedBy))
        .toString();
  }
}

class CaffDtoBuilder implements Builder<CaffDto, CaffDtoBuilder> {
  _$CaffDto _$v;

  int _caffId;
  int get caffId => _$this._caffId;
  set caffId(int caffId) => _$this._caffId = caffId;

  String _caffName;
  String get caffName => _$this._caffName;
  set caffName(String caffName) => _$this._caffName = caffName;

  String _gifUrl;
  String get gifUrl => _$this._gifUrl;
  set gifUrl(String gifUrl) => _$this._gifUrl = gifUrl;

  String _caffUrl;
  String get caffUrl => _$this._caffUrl;
  set caffUrl(String caffUrl) => _$this._caffUrl = caffUrl;

  DateTime _uploadedDate;
  DateTime get uploadedDate => _$this._uploadedDate;
  set uploadedDate(DateTime uploadedDate) =>
      _$this._uploadedDate = uploadedDate;

  String _uploadedBy;
  String get uploadedBy => _$this._uploadedBy;
  set uploadedBy(String uploadedBy) => _$this._uploadedBy = uploadedBy;

  CaffDtoBuilder() {
    CaffDto._initializeBuilder(this);
  }

  CaffDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _caffId = $v.caffId;
      _caffName = $v.caffName;
      _gifUrl = $v.gifUrl;
      _caffUrl = $v.caffUrl;
      _uploadedDate = $v.uploadedDate;
      _uploadedBy = $v.uploadedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaffDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaffDto;
  }

  @override
  void update(void Function(CaffDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CaffDto build() {
    final _$result = _$v ??
        new _$CaffDto._(
            caffId: caffId,
            caffName: caffName,
            gifUrl: gifUrl,
            caffUrl: caffUrl,
            uploadedDate: uploadedDate,
            uploadedBy: uploadedBy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
