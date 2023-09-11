class DollarModel {

  int? id;
  String? Code;
  String? Ccy;
  String? CcyNm_RU;
  String? CcyNm_UZ;
  String? CcyNm_UZC;
  String? CcyNm_EN;
  String? Nominal;
  String? Rate;
  String? Diff;
  String? Date;

  DollarModel(
      {this.id,
        this.Code,
        this.Ccy,
        this.CcyNm_RU,
        this.CcyNm_UZ,
        this.CcyNm_UZC,
        this.CcyNm_EN,
        this.Nominal,
        this.Rate,
        this.Diff,
        this.Date});

  DollarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    Code = json['Code'];
    Ccy = json['Ccy'];
  CcyNm_RU = json['CcyNm_RU'];
    CcyNm_UZ = json['CcyNm_UZ'];
    CcyNm_UZC = json['CcyNm_UZC'];
    CcyNm_EN = json['CcyNm_EN'];
    Nominal = json['Nominal'];
    Rate = json['Rate'];
    Diff = json['Diff'];
    Date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Code'] = this.Code;
    data['Ccy'] = this.Ccy;
    data['CcyNm_RU'] = this.CcyNm_RU;
    data['CcyNm_UZ'] = this.CcyNm_UZ;
    data['CcyNm_UZC'] = this.CcyNm_UZC;
    data['CcyNm_EN'] = this.CcyNm_EN;
    data['Nominal'] = this.Nominal;
    data['Rate'] = this.Rate;
    data['Diff'] = this.Diff;
    data['Date'] = this.Date;
    return data;
  }
}