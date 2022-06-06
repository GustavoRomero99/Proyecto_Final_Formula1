// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class Welcome {
  Welcome({
    required this.welcomeGet,
  required   this.parameters,
  required   this.errors,
  required   this.results,
  required   this.response,
  });

  String welcomeGet;
  Parameters parameters;
  List<dynamic> errors;
  int results;
  List<Response3> response;

  factory Welcome.fromJson(String str) => Welcome.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Welcome.fromMap(Map<String, dynamic> json) => Welcome(
    welcomeGet: json["get"],
    parameters: Parameters.fromMap(json["parameters"]),
    errors: List<dynamic>.from(json["errors"].map((x) => x)),
    results: json["results"],
    response: List<Response3>.from(json["response"].map((x) => Response3.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "get": welcomeGet,
    "parameters": parameters.toMap(),
    "errors": List<dynamic>.from(errors.map((x) => x)),
    "results": results,
    "response": List<dynamic>.from(response.map((x) => x.toMap())),
  };
}

class Parameters {
  Parameters({
    required  this.search,
  });

  String search;

  factory Parameters.fromJson(String str) => Parameters.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Parameters.fromMap(Map<String, dynamic> json) => Parameters(
    search: json["search"],
  );

  Map<String, dynamic> toMap() => {
    "search": search,
  };
}

class Response3 {
  Response3({
  required   this.id,
  required   this.name,
  required   this.abbr,
  required   this.image,
  required   this.nationality,
  required   this.country,
  required   this.birthdate,
  required   this.birthplace,
  required   this.number,
  required   this.grandsPrixEntered,
  required   this.worldChampionships,
  required   this.podiums,
  required   this.highestRaceFinish,
  required   this.highestGridPosition,
  required   this.careerPoints,
  required   this.teams,
  });

  int id;
  String name;
  String abbr;
  String image;
  String nationality;
  Country country;
  DateTime birthdate;
  String birthplace;
  int number;
  int grandsPrixEntered;
  int worldChampionships;
  int podiums;
  HighestRaceFinish highestRaceFinish;
  int highestGridPosition;
  String careerPoints;
  List<TeamElement> teams;

  factory Response3.fromJson(String str) => Response3.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Response3.fromMap(Map<String, dynamic> json) => Response3(
    id: json["id"],
    name: json["name"],
    abbr: json["abbr"],
    image: json["image"],
    nationality: json["nationality"],
    country: Country.fromMap(json["country"]),
    birthdate: DateTime.parse(json["birthdate"]),
    birthplace: json["birthplace"],
    number: json["number"],
    grandsPrixEntered: json["grands_prix_entered"],
    worldChampionships: json["world_championships"],
    podiums: json["podiums"],
    highestRaceFinish: HighestRaceFinish.fromMap(json["highest_race_finish"]),
    highestGridPosition: json["highest_grid_position"],
    careerPoints: json["career_points"],
    teams: List<TeamElement>.from(json["teams"].map((x) => TeamElement.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "abbr": abbr,
    "image": image,
    "nationality": nationality,
    "country": country.toMap(),
    "birthdate": "${birthdate.year.toString().padLeft(4, '0')}-${birthdate.month.toString().padLeft(2, '0')}-${birthdate.day.toString().padLeft(2, '0')}",
    "birthplace": birthplace,
    "number": number,
    "grands_prix_entered": grandsPrixEntered,
    "world_championships": worldChampionships,
    "podiums": podiums,
    "highest_race_finish": highestRaceFinish.toMap(),
    "highest_grid_position": highestGridPosition,
    "career_points": careerPoints,
    "teams": List<dynamic>.from(teams.map((x) => x.toMap())),
  };
}

class Country {
  Country({
  required   this.name,
  required   this.code,
  });

  String name;
  String code;

  factory Country.fromJson(String str) => Country.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Country.fromMap(Map<String, dynamic> json) => Country(
    name: json["name"],
    code: json["code"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "code": code,
  };
}

class HighestRaceFinish {
  HighestRaceFinish({
  required   this.position,
  required   this.number,
  });

  int position;
  int number;

  factory HighestRaceFinish.fromJson(String str) => HighestRaceFinish.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HighestRaceFinish.fromMap(Map<String, dynamic> json) => HighestRaceFinish(
    position: json["position"],
    number: json["number"],
  );

  Map<String, dynamic> toMap() => {
    "position": position,
    "number": number,
  };
}

class TeamElement {
  TeamElement({
  required   this.season,
  required   this.team,
  });

  int season;
  TeamTeam team;

  factory TeamElement.fromJson(String str) => TeamElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TeamElement.fromMap(Map<String, dynamic> json) => TeamElement(
    season: json["season"],
    team: TeamTeam.fromMap(json["team"]),
  );

  Map<String, dynamic> toMap() => {
    "season": season,
    "team": team.toMap(),
  };
}

class TeamTeam {
  TeamTeam({
  required   this.id,
  required   this.name,
  required   this.logo,
  });

  int id;
  String name;
  String logo;

  factory TeamTeam.fromJson(String str) => TeamTeam.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TeamTeam.fromMap(Map<String, dynamic> json) => TeamTeam(
    id: json["id"],
    name: json["name"],
    logo: json["logo"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": [name],
    "logo": logo,
  };
}





