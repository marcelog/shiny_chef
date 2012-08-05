grammar Instructions;
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

  def recover(args)
    nil
  end
}

@lexer::members {
  include ::ShinyChef::Logger
}

////////////////////////////////////////////////////////////////////////////////
// Main parser.
////////////////////////////////////////////////////////////////////////////////
instruction returns [value]
  : put_ingredient_into_mixing_bowl {
    $value = $put_ingredient_into_mixing_bowl.value
  }
  | liquefy_mixing_bowl {
    $value = $liquefy_mixing_bowl.value
  }
  | pour_contents_into_baking_dish {
    $value = $pour_contents_into_baking_dish.value
  }
  | fold_ingredient_into_mixing_bowl {
    $value = $fold_ingredient_into_mixing_bowl.value
  }
  | clean_the_mixing_bowl {
    $value = $clean_the_mixing_bowl.value
  }
  | take_ingredient_from_refrigerator {
    $value = $take_ingredient_from_refrigerator.value
  }
  | remove_ingredient_from_mixing_bowl {
    $value = $remove_ingredient_from_mixing_bowl.value
  }
  | refrigerate_for_hours {
    $value = $refrigerate_for_hours.value
  }
  | add_ingredient_to_mixing_bowl {
    $value = $add_ingredient_to_mixing_bowl.value
  }
  | serve_with {
    $value = $serve_with.value
  }
  | set_aside {
    $value = $serve_with.value
  }
  | mix_the_mixing_bowl_well {
    $value = $mix_the_mixing_bowl_well.value
  }
  | combine_ingredient_into_mixing_bowl {
    $value = $combine_ingredient_into_mixing_bowl.value
  }
  | divide_ingredient_into_mixing_bowl {
    $value = $stir_ingredient_into_the_mixing_bowl.value
  }
  | stir_mixing_bowl {
    $value = $stir_mixing_bowl.value
  }
  | stir_ingredient_into_the_mixing_bowl {
    $value = $stir_ingredient_into_the_mixing_bowl.value
  }
  /*
  | verb_the_ingredient {
    $value = $verb_the_ingredient.value
  }
  | liquefy_ingredient {
    $value = $liquefy_ingredient.value
  }
  | text EOF {
    $value = {
      :cmd => :generic,
      :args => :asd
    }
  }
  | verb_the_ingredient_until_verbed {
    $value = $verb_the_ingredient_until_verbed.value
  }
  */
  ;

////////////////////////////////////////////////////////////////////////////////
// Instruction parsers.
////////////////////////////////////////////////////////////////////////////////
put_ingredient_into_mixing_bowl returns [value]
  : put WS text WS into (WS the)? (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :put_ingredient_into_mixing_bowl,
      :args => {:ingredient => $text.value, :mixing_bowl => $ordinal.value.to_i}
    }
  };

liquefy_mixing_bowl returns [value]
  : liquefy WS contents WS of (WS the)? (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :liquefy_mixing_bowl,
      :args => {:mixing_bowl => $ordinal.value.to_i}
    }
  };

pour_contents_into_baking_dish returns [value]
  : pour WS contents WS of (WS the)? (WS b=ordinal)? WS mixing WS bowl WS
    into (WS the)? (WS d=ordinal)? WS baking WS dish EOF {
    $value = {
      :cmd => :pour_contents_into_baking_dish,
      :args => {:mixing_bowl => $b.value.to_i, :baking_dish => $d.value.to_i}
    }
  };

fold_ingredient_into_mixing_bowl returns [value]
  : fold (WS the)? WS text WS into (WS the)? (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :fold_ingredient_into_mixing_bowl,
      :args => {:ingredient => $text.value, :mixing_bowl => $ordinal.value.to_i}
    }
  };

clean_the_mixing_bowl returns [value]
  : clean (WS the)? (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :clean_the_mixing_bowl,
      :args => {:mixing_bowl => $ordinal.value.to_i}
    }
  };

take_ingredient_from_refrigerator returns [value]
  : take WS text WS from WS refrigerator EOF {
    $value = {
      :cmd => :take_ingredient_from_refrigerator,
      :args => {:ingredient => $text.value}
    }
  };

remove_ingredient_from_mixing_bowl returns [value]
  : remove WS text (WS from (WS the)? (WS ordinal)? WS mixing WS bowl)? EOF {
    $value = {
      :cmd => :remove_ingredient_from_mixing_bowl,
      :args => {:ingredient => $text.value, :mixing_bowl => $ordinal.value.to_i}
    }
  };

refrigerate_for_hours returns [value]
  : refrigerate (WS for_ WS num WS hours)? EOF {
    $value = {
      :cmd => :refrigerate_for_hours,
      :args => {:hours => $num.value.to_i}
    }
  };

add_ingredient_to_mixing_bowl returns [value]
  : add WS text WS into (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :add_ingredient_to_mixing_bowl,
      :args => {:ingredient => $text.text, :mixing_bowl => $ordinal.value.to_i}
    }
  }
  | add WS text WS into WS the (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :add_ingredient_to_mixing_bowl,
      :args => {:ingredient => $text.text, :mixing_bowl => $ordinal.value.to_i}
    }
  };

serve_with returns [value]
  : serve WS with WS text EOF {
    $value = {
      :cmd => :serve_with,
      :args => {:recipe => $text.text}
    }
  };

set_aside returns [value]
  : set WS aside EOF {
    $value = {
      :cmd => :set_aside,
      :args => {}
    }
  };

mix_the_mixing_bowl_well returns [value]
  : mix ((WS the)? (WS ordinal)? WS mixing WS bowl)? WS well EOF {
    $value = {
      :cmd => :mix_the_mixing_bowl_well,
      :args => {:mixing_bowl => $ordinal.value.to_i}
    }
  };

add_dry_ingredients returns [value]
  : add WS dry WS ingredients (WS the)? (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :liquefy_ingredient,
      :args => {:ingredient => $text.text}
    }
  };

combine_ingredient_into_mixing_bowl returns [value]
  : combine WS text WS into (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :combine_ingredient_into_mixing_bowl,
      :args => {:ingredient => $text.text, :mixing_bowl => $ordinal.value.to_i}
    }
  }
  | combine WS text WS into WS the (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :combine_ingredient_into_mixing_bowl,
      :args => {:ingredient => $text.text, :mixing_bowl => $ordinal.value.to_i}
    }
  };

divide_ingredient_into_mixing_bowl returns [value]
  : divide WS text WS into (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :divide_ingredient_into_mixing_bowl,
      :args => {:ingredient => $text.text, :mixing_bowl => $ordinal.value.to_i}
    }
  }
  | divide WS text WS into WS the (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :divide_ingredient_into_mixing_bowl,
      :args => {:ingredient => $text.text, :mixing_bowl => $ordinal.value.to_i}
    }
  };

stir_mixing_bowl returns [value]
  : stir ((WS the)? (WS ordinal)? WS mixing WS bowl)? WS for_ WS num WS minutes EOF {
    $value = {
      :cmd => :stir_mixing_bowl,
      :args => {
        :mixing_bowl => $ordinal.value.to_i,
        :minutes => $num.value
      }
    }
  };
stir_ingredient_into_the_mixing_bowl returns [value]  
  : stir WS text WS into (WS the)? (WS ordinal)? WS mixing WS bowl EOF {
    $value = {
      :cmd => :stir_ingredient_into_the_mixing_bowl,
      :args => {
        :mixing_bowl => $ordinal.value.to_i,
        :ingredient => $text.value
      }
    }
  };

/*
verb_the_ingredient_until_verbed returns [value]
  : v1=(LETTER+) (WS text)? WS until_ WS v2=(LETTER+) EOF {
    $value = {
      :cmd => :verb_the_ingredient_until_verbed,
      :args => {
        :ingredient => $text.text, :verb => $v1.text, :until => $v2.text
      }
    }
  };
liquefy_ingredient returns [value]
  : liquefy WS text EOF {
    $value = {
      :cmd => :liquefy_ingredient,
      :args => {:ingredient => $text.text}
    }
  };
verb_the_ingredient returns [value]
  : string WS the WS text EOF {
    $value = {
      :cmd => :verb_the_ingredient,
      :args => {:ingredient => $text.text, :verb => $string.value}
    }
  };
string returns [value]: {$value = $string.text};

*/
////////////////////////////////////////////////////////////////////////////////
// Aux grammars.
////////////////////////////////////////////////////////////////////////////////
put: ('P'|'p')('U'|'u')('T'|'t');
pour: ('P'|'p')('O'|'o')('U'|'u')('R'|'r');
liquefy
  : ('L'|'l')('I'|'i')('Q'|'q')('U'|'u')('E'|'e'|'I'|'i')('F'|'f')('Y'|'y')
  ;
into: ('I'|'i')('N'|'n')('T'|'t')('O'|'o');
the: ('T'|'t')('H'|'h')('E'|'e');
hours: ('H'|'h')('O'|'o')('U'|'u')('R'|'r')('S'|'s');
minutes: ('M'|'m')('I'|'i')('N'|'n')('U'|'u')('T'|'t')('E'|'e')('S'|'s');
fold: ('F'|'f')('O'|'o')('L'|'l')('D'|'d');
from: ('F'|'f')('R'|'r')('O'|'o')('M'|'m');
remove: ('R'|'r')('E'|'e')('M'|'m')('O'|'o')('V'|'v')('E'|'e');
clean: ('C'|'c')('L'|'l')('E'|'e')('A'|'a')('N'|'n');
take: ('T'|'t')('A'|'a')('K'|'k')('E'|'e');
combine: ('C'|'c')('O'|'o')('M'|'m')('B'|'b')('I'|'i')('N'|'n')('E'|'e');
divide: ('D'|'d')('I'|'i')('V'|'v')('I'|'i')('D'|'d')('E'|'e');
serve: ('S'|'s')('E'|'e')('R'|'r')('V'|'v')('E'|'e');
with: ('W'|'w')('I'|'i')('T'|'t')('H'|'h');
refrigerator
  : ('R'|'r')('E'|'e')('F'|'f')('R'|'r')('I'|'i')
  ('G'|'g')('E'|'e')('R'|'r')('A'|'a')('T'|'t')('O'|'o')('R'|'r')
  ;
refrigerate
  : ('R'|'r')('E'|'e')('F'|'f')('R'|'r')('I'|'i')
  ('G'|'g')('E'|'e')('R'|'r')('A'|'a')('T'|'t')('E'|'e')
  ;
mixing: ('M'|'m')('I'|'i')('X'|'x')('I'|'i')('N'|'n')('G'|'g');
baking: ('B'|'b')('A'|'a')('K'|'k')('I'|'i')('N'|'n')('G'|'g');
dish: ('D'|'d')('I'|'i')('S'|'s')('H'|'h');
bowl: ('B'|'b')('O'|'o')('W'|'w')('L'|'l');
until_: ('U'|'u')('N'|'n')('T'|'t')('I'|'i')('L'|'l');
contents
  : ('C'|'c')('O'|'o')('N'|'n')('T'|'t')('E'|'e')('N'|'n')('T'|'t')('S'|'s')
  ;
of: ('O'|'o')('F'|'f');
for_: ('F'|'f')('O'|'o')('R'|'r');
to: ('T'|'t')('O'|'o');
aside: ('A'|'a')('S'|'s')('I'|'i')('D'|'d')('E'|'e');
add: ('A'|'a')('D'|'d')('D'|'d');
stir: ('S'|'s')('T'|'t')('I'|'i')('R'|'r');
set: ('S'|'s')('E'|'e')('T'|'t');
mix: ('M'|'m')('I'|'i')('X'|'x');
well: ('W'|'w')('E'|'e')('L'|'l')('L'|'l');
dry: ('D'|'d')('R'|'r')('Y'|'y');
ingredients
: ('I'|'i')('N'|'n')('G'|'g')('R'|'r')('E'|'e')
  ('D'|'d')('I'|'i')('E'|'e')('N'|'n')('T'|'t')('S'|'s')
;
text returns [value]: (~EOL)+ {$value = $text.text};
num returns [value]: DIGIT+ {$value = $num.text.to_i};
ordinal returns [value]: t=(ST|ND|RD|TH) {$value = $t.text[/^\d+/].to_i};

ST: d=(DIGIT*) '1' ('S'|'s')('T'|'t');
ND: d=(DIGIT*) '2' ('N'|'n')('D'|'d');
RD: d=(DIGIT*) '3' ('R'|'r')('D'|'d');
TH: d=(DIGIT*) DIGIT ('T'|'t')('H'|'h');
DIGIT: '0'..'9';
WS: (' '|'\t')+;
EOL: '\r'? '\n';
LETTER: ('a'..'z' | 'A'..'Z');
