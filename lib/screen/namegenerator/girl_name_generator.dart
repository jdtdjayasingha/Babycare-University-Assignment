import 'package:flutter/material.dart';

class GirlNameGenerator extends StatefulWidget {
  const GirlNameGenerator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GirlNameGeneratorState createState() => _GirlNameGeneratorState();
}

class _GirlNameGeneratorState extends State<GirlNameGenerator> {
  final _formKey = GlobalKey<FormState>();
  final _numLettersController = TextEditingController();
  final _initialLetterController = TextEditingController();
  List<String> _generatedNames = [];

  // Names list
  final Map<String, Map<int, List<String>>> names = {
    'A': {
      3: ['Ava', 'Amy', 'Ada'],
      4: ['Anna', 'Aria', 'Ayla', 'Alma'],
      5: ['Amber', 'Alice', 'Angel', 'Athena', 'Aurora'],
      6: ['Adriana', 'Alannah', 'Ariana', 'Angela', 'Ananya', 'Aubrey']
    },
    'B': {
      3: ['Bex', 'Bry', 'Bea'],
      4: ['Beth', 'Bree', 'Bella', 'Blair'],
      5: ['Bailey', 'Brook', 'Briar', 'Bianca', 'Blake'],
      6: ['Brielle', 'Bridie', 'Bristol', 'Bronte', 'Brenda', 'Brianna']
    },
    'C': {
      3: ['Cyd', 'Cai', 'Cam'],
      4: ['Cleo', 'Cara', 'Cora', 'Cate'],
      5: ['Chloe', 'Clara', 'Celia', 'Carly', 'Casey'],
      6: ['Cassie', 'Carina', 'Celeste', 'Crystal', 'Cynthia', 'Clarissa']
    },
    'D': {
      3: ['Dot', 'Doe', 'Dru'],
      4: ['Dawn', 'Dove', 'Dara', 'Demi'],
      5: ['Daisy', 'Delia', 'Diana', 'Donna', 'Darcy'],
      6: ['Daphne', 'Daniela', 'Dakota', 'Delaney', 'Destiny', 'Desiree']
    },
    'E': {
      3: ['Edi', 'Eve', 'Ela'],
      4: ['Emma', 'Ella', 'Erin', 'Eden'],
      5: ['Emily', 'Eliza', 'Ellie', 'Elena', 'Esmé'],
      6: ['Emilia', 'Esther', 'Evelyn', 'Eleanor', 'Elaine', 'Emmeline']
    },
    'F': {
      3: ['Flo', 'Fay', 'Fia'],
      4: ['Fern', 'Faye', 'Fawn', 'Flor'],
      5: ['Faith', 'Fiona', 'Farah', 'Flora', 'Frank'],
      6: ['Farrah', 'Flavia', 'Frida', 'Freya', 'Felicity', 'Frances']
    },
    'G': {
      3: ['Gem', 'Gia', 'Gin'],
      4: ['Gwen', 'Gina', 'Gail', 'Gaby'],
      5: ['Grace', 'Gemma', 'Gloria', 'Greta', 'Giana'],
      6: ['Giselle', 'Gianna', 'Gabriela', 'Georgia', 'Gwendolyn', 'Genevieve']
    },
    'H': {
      3: ['Hue', 'Hua', 'Hai'],
      4: ['Hope', 'Holly', 'Hana', 'Hera'],
      5: ['Hazel', 'Hannah', 'Heidi', 'Harri', 'Hilda'],
      6: ['Hayley', 'Heaven', 'Harmony', 'Hermione', 'Helena', 'Hannelore']
    },
    'I': {
      3: ['Ira', 'Ivy', 'Ina'],
      4: ['Isla', 'Inez', 'Iris', 'Ione'],
      5: ['India', 'Irene', 'Idina', 'Ilana', 'Ivory'],
      6: ['Isabel', 'Imogen', 'Isolde', 'Iliana', 'Ireland', 'Indigo']
    },
    'J': {
      3: ['Jen', 'Jia', 'Joi'],
      4: ['Jane', 'Jill', 'Jade', 'Juno'],
      5: ['Jenna', 'Julia', 'Josie', 'Jovie', 'Judith'],
      6: ['Josephine', 'Jasmine', 'Jocelyn', 'Jacinta', 'Jordana', 'Jemima']
    },
    'K': {
      3: ['Kim', 'Kai', 'Kit'],
      4: ['Kate', 'Kira', 'Katy', 'Kara'],
      5: ['Kylie', 'Kyra', 'Keira', 'Kiana', 'Karen'],
      6: ['Kristen', 'Kelsey', 'Kendra', 'Kinsley', 'Katherine', 'Kaitlyn']
    },
    'L': {
      3: ['Liv', 'Lee', 'Lux'],
      4: ['Lily', 'Lola', 'Luna', 'Leah'],
      5: ['Lucy', 'Layla', 'Lydia', 'Lacey', 'Leila'],
      6: ['Lillian', 'Lorelai', 'Louisa', 'Lyric', 'Larissa', 'Leilani']
    },
    'M': {
      3: ['Moe', 'Mia', 'May'],
      4: ['Mara', 'Mila', 'Mira', 'Macy'],
      5: ['Molly', 'Megan', 'Mabel', 'Mavis', 'Misty'],
      6: ['Melody', 'Mallory', 'Monica', 'Miranda', 'Marissa', 'Millicent']
    },
    'N': {
      3: ['Nel', 'Nia', 'Noa'],
      4: ['Nina', 'Nora', 'Nola', 'Neva'],
      5: ['Nancy', 'Naomi', 'Nadia', 'Nelly', 'Nikki'],
      6: ['Natalie', 'Natalia', 'Nicole', 'Noelle', 'Natasha', 'Nicolette']
    },
    'O': {
      3: ['Ora', 'Ola', 'Oda'],
      4: ['Opal', 'Oona', 'Olive', 'Odet'],
      5: ['Olivia', 'Ophel', 'Orla', 'Odile', 'Odessa'],
      6: ['Ophelia', 'Octavia', 'Olympia', 'Ornella', 'Odelia', 'Odyssey']
    },
    'P': {
      3: ['Pip', 'Pia', 'Pax'],
      4: ['Paig', 'Port', 'Peta', 'Pats'],
      5: ['Piper', 'Poppy', 'Penny', 'Petra', 'Polly'],
      6: ['Priscilla', 'Paulina', 'Pearla', 'Primro', 'Padric', 'Pricill']
    },
    'Q': {
      3: ['Qis', 'Qia', 'Que'],
      4: ['Quin', 'Quay', 'Quin', 'Qara'],
      5: ['Quinn', 'Queen', 'Quana', 'Queta', 'Quora'],
      6: ['Quintina', 'Quinlan', 'Quintan', 'Quetza', 'Quilla', 'Quintan']
    },
    'R': {
      3: ['Roe', 'Ria', 'Ray'],
      4: ['Rose', 'Reid', 'Ruth', 'Rain'],
      5: ['Riley', 'Raven', 'Rosal', 'Raine', 'Roxy'],
      6: ['Rhiannon', 'Romilly', 'Roslyn', 'Rowena', 'Roxana', 'Rebecca']
    },
    'S': {
      3: ['Sue', 'Sia', 'Sai'],
      4: ['Sara', 'Sage', 'Star', 'Siri'],
      5: ['Sophi', 'Sofia', 'Sarah', 'Stell', 'Sunny'],
      6: ['Scarlet', 'Sierra', 'Selena', 'Simone', 'Serena', 'Shirley']
    },
    'T': {
      3: ['Tye', 'Tia', 'Tam'],
      4: ['Tess', 'Tina', 'Tara', 'Tori'],
      5: ['Tatum', 'Talul', 'Tilly', 'Tracy', 'Tessa'],
      6: ['Tabitha', 'Thalia', 'Tamara', 'Talith', 'Tamsin', 'Theresa']
    },
    'U': {
      3: ['Ura', 'Uma', 'Ula'],
      4: ['Ulla', 'Una', 'Ursa', 'Unity'],
      5: ['Ursul', 'Ulric', 'Ulyss', 'Umbri', 'Udell'],
      6: ['Ulrica', 'Udessa', 'Umbria', 'Uzuri', 'Ulrika', 'Ursula']
    },
    'V': {
      3: ['Val', 'Viv', 'Van'],
      4: ['Vera', 'Viva', 'Vada', 'Vana'],
      5: ['Venus', 'Vince', 'Vikki', 'Vania', 'Vandy'],
      6: ['Violet', 'Vienna', 'Valery', 'Vanita', 'Verity', 'Vivian']
    },
    'W': {
      3: ['Wyn', 'Wes', 'Wil'],
      4: ['Wren', 'Wynn', 'Wila', 'Wina'],
      5: ['Wendy', 'Willa', 'Waver', 'Winny', 'Wylie'],
      6: ['Willow', 'Winter', 'Winnie', 'Whitle', 'Wendie', 'Whitni']
    },
    'X': {
      3: ['Xia', 'Xue', 'Xin'],
      4: ['Xena', 'Xara', 'Xyla', 'Xian'],
      5: ['Xavia', 'Xylia', 'Xoana', 'Xylia', 'Xynia'],
      6: ['Xantha', 'Xandra', 'Xanthe', 'Xylina', 'Xiomar', 'Xylona']
    },
    'Y': {
      3: ['Yas', 'Yui', 'Yen'],
      4: ['Yara', 'Yuna', 'Yoko', 'Yani'],
      5: ['Yasmi', 'Yolys', 'Yolga', 'Ysela', 'Yvone'],
      6: ['Yvette', 'Yvonne', 'Yolanda', 'Yesica', 'Yasmin', 'Yalini']
    },
    'Z': {
      3: ['Zoe', 'Zia', 'Zed'],
      4: ['Zara', 'Ziva', 'Zola', 'Zena'],
      5: ['Zelda', 'Zorah', 'Zaina', 'Zonia', 'Zandy'],
      6: ['Zarina', 'Zulema', 'Zanita', 'Zaylee', 'Zendra', 'Zahara']
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
