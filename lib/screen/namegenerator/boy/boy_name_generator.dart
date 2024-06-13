import 'package:flutter/material.dart';

class BoyNameGenerator extends StatefulWidget {
  const BoyNameGenerator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BoyNameGeneratorState createState() => _BoyNameGeneratorState();
}

class _BoyNameGeneratorState extends State<BoyNameGenerator> {
  final _formKey = GlobalKey<FormState>();
  final _numLettersController = TextEditingController();
  final _initialLetterController = TextEditingController();
  List<String> _generatedNames = [];

  // Names list
  final Map<String, Map<int, List<String>>> names = {
    'A': {
      3: ['Ava', 'Ace', 'Amy'],
      4: ['Adam', 'Anna', 'Alexa', 'Aria'],
      5: ['Aaron', 'Amber', 'Alice', 'Angel', 'Aiden'],
      6: ['Andrew', 'Austin', 'Arthur', 'Archer', 'Adriana', 'Alannah']
    },
    'B': {
      3: ['Ben', 'Bob', 'Bex'],
      4: ['Bill', 'Bart', 'Beth', 'Bree'],
      5: ['Brian', 'Blake', 'Bella', 'Brody', 'Bailey'],
      6: ['Bennet', 'Bristol', 'Bridie', 'Bianca', 'Brielle', 'Brooke']
    },
    'C': {
      3: ['Cai', 'Cam', 'Cyd'],
      4: ['Carl', 'Cara', 'Cleo', 'Cory'],
      5: ['Craig', 'Chloe', 'Clara', 'Casey', 'Caleb'],
      6: ['Carter', 'Cassie', 'Carina', 'Celeste', 'Cynthia', 'Corinne']
    },
    'D': {
      3: ['Dan', 'Dee', 'Dot'],
      4: ['Dave', 'Dawn', 'Drew', 'Dove'],
      5: ['David', 'Dylan', 'Diana', 'Delia', 'Daisy'],
      6: ['Damien', 'Declan', 'Dominic', 'Delaney', 'Daphne', 'Daniela']
    },
    'E': {
      3: ['Eli', 'Eve', 'Edi'],
      4: ['Eric', 'Emma', 'Ella', 'Ezra'],
      5: ['Ethan', 'Emily', 'Eliza', 'Elise', 'Elena'],
      6: ['Edward', 'Emilia', 'Esther', 'Evelyn', 'Eleanor', 'Emmett']
    },
    'F': {
      3: ['Fox', 'Fay', 'Flo'],
      4: ['Fred', 'Fern', 'Faye', 'Finn'],
      5: ['Frank', 'Faith', 'Fiona', 'Farah', 'Finley'],
      6: ['Felix', 'Fisher', 'Fraser', 'Farley', 'Flavia', 'Farrah']
    },
    'G': {
      3: ['Gus', 'Gia', 'Gem'],
      4: ['Greg', 'Gina', 'Gwen', 'Gage'],
      5: ['George', 'Grace', 'Gemma', 'Grant', 'Gianna'],
      6: ['Gabriel', 'Gillian', 'Gracie', 'Graham', 'Gloria', 'Giselle']
    },
    'H': {
      3: ['Hal', 'Hua', 'Hue'],
      4: ['Hank', 'Hope', 'Holly', 'Hugh'],
      5: ['Henry', 'Hazel', 'Hannah', 'Harper', 'Hayden'],
      6: ['Hector', 'Harmony', 'Hudson', 'Hayley', 'Hannah', 'Heaven']
    },
    'I': {
      3: ['Ian', 'Ivy', 'Ira'],
      4: ['Ivan', 'Inez', 'Iris', 'Isla'],
      5: ['Isaac', 'Irene', 'India', 'Ivy', 'Inigo'],
      6: ['Isaiah', 'Isabel', 'Imogen', 'Isadora', 'Ireland', 'Iliana']
    },
    'J': {
      3: ['Jay', 'Jia', 'Jen'],
      4: ['Jack', 'Jill', 'Jake', 'Jane'],
      5: ['James', 'Jenna', 'Jacob', 'Julia', 'Josie'],
      6: ['Jackson', 'Jordan', 'Javier', 'Jasmine', 'Josephine', 'Jordana']
    },
    'K': {
      3: ['Kai', 'Kim', 'Kip'],
      4: ['Kyle', 'Kate', 'Kara', 'Kirk'],
      5: ['Kevin', 'Kelly', 'Kyrie', 'Kylie', 'Kaden'],
      6: ['Kenneth', 'Kelsey', 'Keegan', 'Kristen', 'Kassandra', 'Kinsley']
    },
    'L': {
      3: ['Lee', 'Lou', 'Liv'],
      4: ['Leon', 'Leah', 'Liam', 'Lily'],
      5: ['Logan', 'Lucas', 'Layla', 'Leila', 'Lacey'],
      6: ['Leonard', 'Lillian', 'Lorelei', 'Leilani', 'Lorelai', 'Leonora']
    },
    'M': {
      3: ['Max', 'Mia', 'Moe'],
      4: ['Mark', 'Mara', 'Milo', 'Mira'],
      5: ['Mason', 'Maria', 'Megan', 'Molly', 'Miles'],
      6: ['Matthew', 'Melody', 'Monica', 'Miranda', 'Margaux', 'Melissa']
    },
    'N': {
      3: ['Ned', 'Nia', 'Nel'],
      4: ['Nick', 'Nina', 'Noah', 'Nora'],
      5: ['Nathan', 'Naomi', 'Nancy', 'Nicole', 'Nolan'],
      6: ['Nathaniel', 'Natalie', 'Nicholas', 'Nicolet', 'Nerissa', 'Nayelle']
    },
    'O': {
      3: ['Oz', 'Ola', 'Ora'],
      4: ['Owen', 'Olive', 'Omar', 'Opal'],
      5: ['Oliver', 'Oscar', 'Ophel', 'Odette', 'Oksana'],
      6: ['Orlando', 'Octavia', 'Ophelia', 'Olympia', 'Ornella', 'Odelia']
    },
    'P': {
      3: ['Pax', 'Pia', 'Pip'],
      4: ['Paul', 'Paig', 'Perc', 'Port'],
      5: ['Peter', 'Penny', 'Piper', 'Poppy', 'Prest'],
      6: ['Patrick', 'Priscilla', 'Phillip', 'Percy', 'Primros', 'Pricill']
    },
    'Q': {
      3: ['Quo', 'Qia', 'Qis'],
      4: ['Quin', 'Quia', 'Quay', 'Quen'],
      5: ['Quinn', 'Queen', 'Quint', 'Quira', 'Quana'],
      6: ['Quentin', 'Quintina', 'Quinlan', 'Quintana', 'Quetzal', 'Quinley']
    },
    'R': {
      3: ['Rex', 'Ria', 'Roe'],
      4: ['Ryan', 'Rose', 'Ruth', 'Reid'],
      5: ['Robert', 'Riley', 'Rosal', 'Raven', 'River'],
      6: ['Richard', 'Rebecca', 'Rhiannon', 'Roberta', 'Romilly', 'Roxanne']
    },
    'S': {
      3: ['Sam', 'Sia', 'Sue'],
      4: ['Sean', 'Sara', 'Seth', 'Sage'],
      5: ['Simon', 'Sophi', 'Sofia', 'Stell', 'Storm'],
      6: ['Samuel', 'Sylvia', 'Scarlet', 'Shiloh', 'Soraya', 'Simone']
    },
    'T': {
      3: ['Tom', 'Tia', 'Tye'],
      4: ['Troy', 'Tess', 'Thea', 'Todd'],
      5: ['Tyler', 'Tracy', 'Tatum', 'Talul', 'Tandy'],
      6: ['Theodore', 'Tiffany', 'Tabitha', 'Theresa', 'Talitha', 'Tamsin']
    },
    'U': {
      3: ['Udo', 'Uma', 'Ura'],
      4: ['Umar', 'Ulla', 'Ursa', 'Uri'],
      5: ['Usher', 'Unity', 'Ursul', 'Ulyss', 'Urban'],
      6: ['Ulysses', 'Umbria', 'Umika', 'Ulrica', 'Ubadah', 'Udessa']
    },
    'V': {
      3: ['Van', 'Viv'],
      4: ['Vera', 'Vince', 'Vlad'],
      5: ['Vicky', 'Venus', 'Viola', 'Violet'],
      6: ['Victor', 'Vivian', 'Valery', 'Valent', 'Vienna', 'Verity']
    },
    'W': {
      3: ['Wan', 'Wen'],
      4: ['Wade', 'Wend', 'Wynn', 'West'],
      5: ['Wiley', 'Wilma', 'Wanda', 'Wyatt', 'Waldo'],
      6: ['Wilson', 'Wendy', 'Wallis', 'Wesley', 'Winter', 'Winsor']
    },
    'X': {
      3: ['Xan'],
      4: ['Xena', 'Xavi'],
      5: ['Xylon', 'Xenia', 'Xerxe'],
      6: ['Xander', 'Ximena', 'Xiomar', 'Xavien', 'Xenon', 'Xandra']
    },
    'Y': {
      3: ['Yan', 'Yue'],
      4: ['Yael', 'Yves', 'Yara', 'Yuri'],
      5: ['Yasir', 'Yvonne', 'Yulia', 'Youse', 'Yanni'],
      6: ['Yvette', 'Yasmin', 'Yvonne', 'Yasoda', 'Yulisa', 'Yessen']
    },
    'Z': {
      3: ['Zak'],
      4: ['Zane', 'Zara', 'Zion', 'Zack'],
      5: ['Zelda', 'Zaria', 'Zaire', 'Zella', 'Zetta'],
      6: ['Zander', 'Zephyr', 'Zenith', 'Zahara', 'Zamira', 'Zaynab']
    }
  };

  void _generateName() {
    int numLetters = int.tryParse(_numLettersController.text) ?? 0;
    String initialLetter = _initialLetterController.text.toUpperCase();

    List<String> filteredNames = names[initialLetter]?[numLetters] ?? [];

    setState(() {
      _generatedNames = filteredNames;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity, // Make the container take full width
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                  ), // Set border color to green
                ),
                child: TextFormField(
                  controller: _numLettersController,
                  decoration: InputDecoration(
                    labelText: 'Number of letters',
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a number';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity, // Make the container take full width
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                  ), // Set border color to green
                ),
                child: TextFormField(
                  controller: _initialLetterController,
                  decoration: InputDecoration(
                    labelText: 'Initial letter',
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a letter';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 31, 171, 137),
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _generateName();
                    }
                  },
                  child: const Text(
                    ' Generate Name ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _generatedNames.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: _generatedNames.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_generatedNames[index]),
                          );
                        },
                      ),
                    )
                  : Text(
                      'No Names Found',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
