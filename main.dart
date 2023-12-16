enum Team { red, blue }

class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  Player.createBluePlayer({required this.name, required this.age})
      : this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(this.name, this.age)
      : this.team = 'red',
        this.xp = 0;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        age = playerJson['age'],
        team = playerJson['team'],
        xp = playerJson['xp'];

  void SayHello() {
    print('Hello my name is $name, $age years old, team is $team, xp is $xp.');
  }
}

//
//
//
//
//
class Human {
  final String name;

  Human({required this.name});

  void SayHello() {
    print("Hi I am $name.");
  }
}

class Players extends Human {
  final Team team;

  Players({
    required this.team,
    required String namee,
  }) : super(name: namee);

  @override
  void SayHello() {
    print('Hi I am $name and my team is $team!');
  }
}

//
//
//
//
//
void main() {
  var player = Player(
    name: 'nico',
    xp: 1500,
    team: 'red',
    age: 21,
  );
  var player2 = Player(
    name: 'lynn',
    xp: 4500,
    team: 'blue',
    age: 24,
  );

  var player3 = Player.createBluePlayer(name: 'Yohan', age: 31);

  var player4 = Player.createRedPlayer('Salu', 3);

  var APIdata = [
    {
      'name': 'Tae',
      'age': 20,
      'team': 'red',
      'xp': 0,
    },
    {
      'name': 'Kim',
      'age': 22,
      'team': 'red',
      'xp': 0,
    },
    {
      'name': 'Park',
      'age': 21,
      'team': 'blue',
      'xp': 0,
    },
  ];

  APIdata.forEach((onggibot) {
    var new_player = Player.fromJson(onggibot);
    new_player.SayHello();
  });

  player.SayHello();
  player2.SayHello();
  player3.SayHello();
  player4.SayHello();
}
