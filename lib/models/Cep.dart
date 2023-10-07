import 'dart:convert';

class Cep {
  String cep;
  String logradouro;
  String uf;
  String localidade;
  String bairro;

  Cep({required this.cep,required this.uf,required this.localidade,required this.bairro,required this.logradouro});

  String toJson() => jsonEncode(toMap());

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep' : cep,
      'logradouro' : logradouro,
      'uf' : uf,
      'localidade' : localidade,
      'bairro': bairro
    };

  }

  factory Cep.fromJson(String json) {
    final map = jsonDecode(json);
    return Cep.fromMap(map);
  }

  factory Cep.fromMap(Map<String,dynamic> map){
    return Cep(
      cep: map['cep'] ?? '',
      uf: map['uf'] ?? '',
      localidade: map['localidade'] ?? '',
      bairro: map['bairro'] ?? '',
      logradouro: map['logradouro'] ?? ''
    );
  }

}
