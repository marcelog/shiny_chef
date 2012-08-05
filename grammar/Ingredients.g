grammar Ingredients;
options { language = Ruby; backtrack=true; memoize=true; }

@header {
  module ::ShinyChef::Parsers
}
@lexer::header{
  module ::ShinyChef::Parsers
}

@lexer::footer{
  end
}

@footer {
  end
}

@members {
  include ::ShinyChef::Logger
}
@lexer::members {
  include ::ShinyChef::Logger
}

ingredient returns [value]
  : dryingredient {
    $value = ::ShinyChef::Ingredient.new( \
      $dryingredient.value[:name], \
      $dryingredient.value[:unit], \
      $dryingredient.value[:value], \
      false \
    )
    logger.debug "Ingredient: #{$value.inspect}"
  }
  | liquidingredient {
    $value = ::ShinyChef::Ingredient.new( \
      $liquidingredient.value[:name], \
      $liquidingredient.value[:unit], \
      $liquidingredient.value[:value], \
      true \
    )
    logger.debug "Ingredient: #{$value.inspect}"
  }
  | ingvalue WS ingname {
    $value = ::ShinyChef::Ingredient.new( \
      $ingname.value, nil, $ingvalue.value, false \
    )
    logger.debug "Ingredient: #{$value.inspect}"
  }
  | ingname {
    $value = ::ShinyChef::Ingredient.new( \
      $ingname.value, nil, 0, false \
    )
    logger.debug "Ingredient: #{$value.inspect}"
  }
  ;

liquidingredient returns [value]
  : ingvalue WS u=liquidmeasure WS ingname {
    $value = {
      :unit => $u.value,
      :value => $ingvalue.value,
      :name => $ingname.value
    }
  }
  ;

dryingredient returns [value]
  : ingvalue WS u=drymeasure WS ingname {
    $value = {
      :unit => $u.value,
      :value => $ingvalue.value,
      :name => $ingname.value
    }
  }
  ;

drymeasure returns [value]
  : g { $value = :grams}
  | kg { $value = :kilograms}
  | pinches { $value = :pinches}
  | drytype WS teaspoons { $value = :teaspoons}
  | drytype WS tablespoons { $value = :tablespoons}
  | drytype WS cups { $value = :cups}
  | drytype WS teaspoon { $value = :teaspoons}
  | drytype WS tablespoon { $value = :tablespoons}
  | drytype WS cup { $value = :cups}
  ;

liquidmeasure returns [value]
  : ml { $value = :milliliters}
  | l { $value = :liters}
  | dashes { $value = :dashes}
  | teaspoons { $value = :teaspoons}
  | tablespoons { $value = :tablespoons}
  | cups { $value = :cups}
  | teaspoon { $value = :teaspoons}
  | tablespoon { $value = :tablespoons}
  | cup { $value = :cups}
  ;

drytype
  : ('H'|'h')('E'|'e')('A'|'a')('P'|'p')('E'|'e')('D'|'d')
  | ('L'|'l')('E'|'e')('V'|'v')('E'|'e')('L'|'l')
  ;

l: ('l'|'L');
ml: ('M'|'m') l;
dashes: dash ('E'|'e')('S'|'s');
dash: ('D'|'d')('A'|'a')('S'|'s')('H'|'h');
g: ('g'|'G');
kg: ('k'|'K') g;
pinch: ('P'|'p')('I'|'i')('N'|'n')('C'|'c')('H'|'h');
pinches: pinch ('E'|'e')('S'|'s');
teaspoon
  : ('T'|'t')
  ('E'|'e')
  ('A'|'a')
  ('S'|'s')
  ('P'|'p')
  ('O'|'o')
  ('O'|'o')
  ('N'|'n')
  ;
teaspoons: teaspoon ('S'|'s');
tablespoon
  : ('T'|'t')
  ('A'|'a')
  ('B'|'b')
  ('L'|'l')
  ('E'|'e')
  ('S'|'s')
  ('P'|'p')
  ('O'|'o')
  ('O'|'o')
  ('N'|'n')
  ;

tablespoons: tablespoon ('S'|'s');
cup: ('C'|'c')('U'|'u')('P'|'p');
cups: cup ('S'|'s');

ingvalue returns [value]: num {$value = $num.value};
ingname returns [value]: text {$value = $text.value};

text returns [value]: (~EOL)+ {$value = $text.text};
num returns [value]: DIGIT+ {$value = $num.text.to_i};

DIGIT: '0'..'9';
WS: (' '|'\t')+;
EOL: '\r'? '\n';
LETTER: ('a'..'z' | 'A'..'Z');

