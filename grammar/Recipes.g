grammar Recipes;
options { language = Ruby; k=512; backtrack=true; memoize=true; }

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
  def recipes_found
    @recipes_found
  end
  def main_recipe
    @main_recipe
  end
}

@lexer::members {
  include ::ShinyChef::Logger
}

@init {
  @main_recipe = nil
}

recipes returns [value]
  @init {
    $value = {}
  }
  : recipe EOL+ EOF {
    $value[$recipe.value[:title]] = $recipe.value
    @main_recipe = $recipe.value[:title]
  }
  | r1=recipe {
    $value[$r1.value[:title]] = $r1.value
    @main_recipe = $r1.value[:title]
  } (EOL+ r2=recipe)+ EOF {
    $value[$r2.value[:title]] = $r2.value
  };

recipe returns [value]
  @init {
    $value = {
      :title => nil,
      :description => nil,
      :ingredients => [],
      :method => [],
      :serves => 0,
      :cooktime => nil,
      :oventemp => nil
    }
  }
  @after {
    logger.debug "Recipe read: #{$value.inspect}"
  }
  : title EOL { $value[:title] = $title.value.downcase; }
  (description EOL)? { $value[:description] = $description.value }
  ingredientlist { $value[:ingredients] = $ingredientlist.value } EOL
  (cooktime EOL)? { $value[:cooktime] = $cooktime.value}
  (oventemp EOL)? { $value[:oventemp] = $oventemp.value}
  method { $value[:method] = $method.value}
  (EOL+ serves { $value[:serves] = $serves.value} EOL?)?
  ;

method returns [value]
  : methodheader
  EOL
  instructions { $value = $instructions.value }
  ;

serves returns [value]
  : ('S'|'s')
  ('E'|'e')
  ('R'|'r')
  ('V'|'v')
  ('E'|'e')
  ('S'|'s') WS+ v=DIGIT+ STOP? { $value = $v.text.to_i }
  ;

cooktime returns [value]
  : ('C'|'c')
  ('O'|'o')
  ('O'|'o')
  ('K'|'k')
  ('I'|'i')
  ('N'|'n')
  ('G'|'g') WS+
  ('T'|'t')
  ('I'|'i')
  ('M'|'m')
  ('E'|'e') ':' WS+ lineorstop STOP EOL { $value = $lineorstop.text}
  ;

oventemp returns [value]
  : ('P'|'p')
  ('R'|'r')
  ('E'|'e')
  '-'
  ('H'|'h')
  ('E'|'e')
  ('A'|'a')
  ('T'|'t')
  WS+
  ('O'|'o')
  ('V'|'v')
  ('E'|'e')
  ('N'|'n')
  WS+
  ('T'|'t')
  ('O'|'o')
  WS+
  lineorstop STOP EOL { $value = $lineorstop.text}
  ;

methodheader
  : ('M'|'m')
  ('E'|'e')
  ('T'|'t')
  ('H'|'h')
  ('O'|'o')
  ('D'|'d')
  STOP
  ;

instructions returns [value]
  @init {
      ilist = []
  }
  : (WS* instruction { ilist.push $instruction.value } STOP WS* EOL?)+
  { $value = ilist }
  ;

instruction returns [value]
  : (~(STOP|EOL))+ { $value = $instruction.text; }
  ;

ingredientheader
  : ('I'|'i')
  ('N'|'n')
  ('G'|'g')
  ('R'|'r')
  ('E'|'e')
  ('D'|'d')
  ('I'|'i')
  ('E'|'e')
  ('N'|'n')
  ('T'|'t')
  ('S'|'s')
  STOP
  ;

ingredientlist returns [value]
  @init {
      ilist = []
  }
  :
  ingredientheader
  EOL
  (ingredient { ilist.push $ingredient.value })+
  { $value = ilist }
  ;

ingredient returns [value]: line EOL { $value = $line.value };

title returns [value]
  : lineorstop STOP EOL { $value = $lineorstop.text }
  ;

description returns [value]
  : line EOL { $value = $line.value }
  ;

lineorstop returns [value]
  : (~(STOP|EOL))+ { $value = $lineorstop.text }
  ;

line returns [value]
  : (~EOL)+ { $value = $line.text }
  ;

LETTER: 'A'..'Z'|'a'..'z';
PUNCT
  : '`'
  |'~'
  |'!'
  |'@'
  |'#'
  |'$'
  |'%'
  |'^'
  |'&'
  |'*'
  |'('
  |')'
  |'-'
  |'_'
  |'='
  |'+'
  |'['
  |'{'
  |']'
  |'}'
  |'\''
  |'"'
  |'\\'
  |','
  |'<'
  |'>'
  |'/'
  |'?'
  |':'
  ;

STOP: '.';
DIGIT: '0'..'9';
EOL: '\r'? '\n';
WS: ' '|'\t';
