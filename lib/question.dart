class Question {
  final List<Map> _que = [
    {
      0: "The earth is at the largest distance from the sun (Aphelion) on ________ "
    },
    {1: "The seasonal contrasts are maximum in ________ "},
    {2: "Geostationary orbit is at a height of ________ "}
  ];
  final List<Map> _ans = [
    {
      0: ["June 21st", "January 3rd", "July 4th", "September 23rd"]
    },
    {
      1: ["Low latitudes", "Mid-latitudes", "Sub tropics", "High latitudes"]
    },
    {
      2: ["6 km", "1000 km", "3600 km", "36,000 km"]
    },
  ];
  final List<String> _corrAns = ["July 4th", "Mid-latitudes", "36,000 km"];

  String getQuestion(int n) => _que[n][n];

  int getQuesLength() => _que.length;

  List getAnsList(int n) => _ans[n][n];

  String getCorrectAns(int n) => _corrAns[n];
}

/*
  List <Map> lst= [
    {0: ["Jan", "Feb", "Mar", "Apr"] }, //Index: 0 , key: 0, values: [0][1][2][3]
    {1: ["Mar", "May", "Jun", "Jul"] }, //Index: 1 , key: 1, values: [0][1][2][3]
    {2: ["Aug", "Sep", "Nov", "Dec"] }, //Index: 2 , key: 2 , values: [0][1][2][3]
  ];
**/
