#!/usr/bin/env ruby
#
# Ingredients.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Ingredients.g
# Generated at: 2012-08-05 19:34:44
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.11):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '~> 1.8.11' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup

# - - - - - - begin action @parser::header - - - - - -
# Ingredients.g


  module ::ShinyChef::Parsers

# - - - - - - end action @parser::header - - - - - - -


module Ingredients
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :T__25 => 25, :T__24 => 24, :T__23 => 23, :LETTER => 7, 
                   :T__22 => 22, :T__21 => 21, :T__20 => 20, :EOF => -1, 
                   :T__9 => 9, :T__8 => 8, :T__19 => 19, :T__16 => 16, :EOL => 5, 
                   :T__15 => 15, :T__18 => 18, :T__17 => 17, :T__12 => 12, 
                   :T__11 => 11, :T__14 => 14, :T__13 => 13, :T__10 => 10, 
                   :DIGIT => 6, :T__42 => 42, :T__43 => 43, :T__40 => 40, 
                   :T__41 => 41, :T__30 => 30, :T__31 => 31, :T__32 => 32, 
                   :T__33 => 33, :WS => 4, :T__34 => 34, :T__35 => 35, :T__36 => 36, 
                   :T__37 => 37, :T__38 => 38, :T__39 => 39 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "WS", "EOL", "DIGIT", "LETTER", "'H'", "'h'", "'E'", 
                    "'e'", "'A'", "'a'", "'P'", "'p'", "'D'", "'d'", "'L'", 
                    "'l'", "'V'", "'v'", "'M'", "'m'", "'S'", "'s'", "'g'", 
                    "'G'", "'k'", "'K'", "'I'", "'i'", "'N'", "'n'", "'C'", 
                    "'c'", "'T'", "'t'", "'O'", "'o'", "'B'", "'b'", "'U'", 
                    "'u'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Ingredients

    RULE_METHODS = [ :ingredient, :liquidingredient, :dryingredient, :drymeasure, 
                     :liquidmeasure, :drytype, :l, :ml, :dashes, :dash, 
                     :g, :kg, :pinch, :pinches, :teaspoon, :teaspoons, :tablespoon, 
                     :tablespoons, :cup, :cups, :ingvalue, :ingname, :text, 
                     :num, :synpred3_Ingredients ].freeze


    include TokenData

    begin
      generated_using( "Ingredients.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
      @state.rule_memory = {}


    end

      include ::ShinyChef::Logger

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule ingredient
    # 
    # (in Ingredients.g)
    # 26:1: ingredient returns [value] : ( dryingredient | liquidingredient | ingvalue WS ingname | ingname );
    # 
    def ingredient
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      value = nil
      ingredient_start_index = @input.index
      dryingredient1 = nil
      liquidingredient2 = nil
      ingname3 = nil
      ingvalue4 = nil
      ingname5 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 27:3: ( dryingredient | liquidingredient | ingvalue WS ingname | ingname )
        alt_1 = 4
        alt_1 = @dfa1.predict( @input )
        case alt_1
        when 1
          # at line 27:5: dryingredient
          @state.following.push( TOKENS_FOLLOWING_dryingredient_IN_ingredient_78 )
          dryingredient1 = dryingredient
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = ::ShinyChef::Ingredient.new( \
                  dryingredient1[:name], \
                  dryingredient1[:unit], \
                  dryingredient1[:value], \
                  false \
                )
                logger.debug "Ingredient: #{value.inspect}"
              
            # <-- action
          end

        when 2
          # at line 31:5: liquidingredient
          @state.following.push( TOKENS_FOLLOWING_liquidingredient_IN_ingredient_86 )
          liquidingredient2 = liquidingredient
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = ::ShinyChef::Ingredient.new( \
                  liquidingredient2[:name], \
                  liquidingredient2[:unit], \
                  liquidingredient2[:value], \
                  true \
                )
                logger.debug "Ingredient: #{value.inspect}"
              
            # <-- action
          end

        when 3
          # at line 35:5: ingvalue WS ingname
          @state.following.push( TOKENS_FOLLOWING_ingvalue_IN_ingredient_94 )
          ingvalue4 = ingvalue
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_ingredient_96 )
          @state.following.push( TOKENS_FOLLOWING_ingname_IN_ingredient_98 )
          ingname3 = ingname
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = ::ShinyChef::Ingredient.new( \
                  ingname3, nil, ingvalue4, false \
                )
                logger.debug "Ingredient: #{value.inspect}"
              
            # <-- action
          end

        when 4
          # at line 39:5: ingname
          @state.following.push( TOKENS_FOLLOWING_ingname_IN_ingredient_106 )
          ingname5 = ingname
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = ::ShinyChef::Ingredient.new( \
                  ingname5, nil, 0, false \
                )
                logger.debug "Ingredient: #{value.inspect}"
              
            # <-- action
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )
        memoize( __method__, ingredient_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule liquidingredient
    # 
    # (in Ingredients.g)
    # 45:1: liquidingredient returns [value] : ingvalue WS u= liquidmeasure WS ingname ;
    # 
    def liquidingredient
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      value = nil
      liquidingredient_start_index = @input.index
      u = nil
      ingvalue6 = nil
      ingname7 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 46:5: ingvalue WS u= liquidmeasure WS ingname
        @state.following.push( TOKENS_FOLLOWING_ingvalue_IN_liquidingredient_125 )
        ingvalue6 = ingvalue
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_liquidingredient_127 )
        @state.following.push( TOKENS_FOLLOWING_liquidmeasure_IN_liquidingredient_131 )
        u = liquidmeasure
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_liquidingredient_133 )
        @state.following.push( TOKENS_FOLLOWING_ingname_IN_liquidingredient_135 )
        ingname7 = ingname
        @state.following.pop
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :unit => u,
                :value => ingvalue6,
                :name => ingname7
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )
        memoize( __method__, liquidingredient_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule dryingredient
    # 
    # (in Ingredients.g)
    # 55:1: dryingredient returns [value] : ingvalue WS u= drymeasure WS ingname ;
    # 
    def dryingredient
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      value = nil
      dryingredient_start_index = @input.index
      u = nil
      ingvalue8 = nil
      ingname9 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 56:5: ingvalue WS u= drymeasure WS ingname
        @state.following.push( TOKENS_FOLLOWING_ingvalue_IN_dryingredient_154 )
        ingvalue8 = ingvalue
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_dryingredient_156 )
        @state.following.push( TOKENS_FOLLOWING_drymeasure_IN_dryingredient_160 )
        u = drymeasure
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_dryingredient_162 )
        @state.following.push( TOKENS_FOLLOWING_ingname_IN_dryingredient_164 )
        ingname9 = ingname
        @state.following.pop
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :unit => u,
                :value => ingvalue8,
                :name => ingname9
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )
        memoize( __method__, dryingredient_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule drymeasure
    # 
    # (in Ingredients.g)
    # 65:1: drymeasure returns [value] : ( g | kg | pinches | drytype WS teaspoons | drytype WS tablespoons | drytype WS cups | drytype WS teaspoon | drytype WS tablespoon | drytype WS cup );
    # 
    def drymeasure
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      value = nil
      drymeasure_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 66:3: ( g | kg | pinches | drytype WS teaspoons | drytype WS tablespoons | drytype WS cups | drytype WS teaspoon | drytype WS tablespoon | drytype WS cup )
        alt_2 = 9
        alt_2 = @dfa2.predict( @input )
        case alt_2
        when 1
          # at line 66:5: g
          @state.following.push( TOKENS_FOLLOWING_g_IN_drymeasure_183 )
          g
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :grams
            # <-- action
          end

        when 2
          # at line 67:5: kg
          @state.following.push( TOKENS_FOLLOWING_kg_IN_drymeasure_191 )
          kg
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :kilograms
            # <-- action
          end

        when 3
          # at line 68:5: pinches
          @state.following.push( TOKENS_FOLLOWING_pinches_IN_drymeasure_199 )
          pinches
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :pinches
            # <-- action
          end

        when 4
          # at line 69:5: drytype WS teaspoons
          @state.following.push( TOKENS_FOLLOWING_drytype_IN_drymeasure_207 )
          drytype
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_drymeasure_209 )
          @state.following.push( TOKENS_FOLLOWING_teaspoons_IN_drymeasure_211 )
          teaspoons
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :teaspoons
            # <-- action
          end

        when 5
          # at line 70:5: drytype WS tablespoons
          @state.following.push( TOKENS_FOLLOWING_drytype_IN_drymeasure_219 )
          drytype
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_drymeasure_221 )
          @state.following.push( TOKENS_FOLLOWING_tablespoons_IN_drymeasure_223 )
          tablespoons
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :tablespoons
            # <-- action
          end

        when 6
          # at line 71:5: drytype WS cups
          @state.following.push( TOKENS_FOLLOWING_drytype_IN_drymeasure_231 )
          drytype
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_drymeasure_233 )
          @state.following.push( TOKENS_FOLLOWING_cups_IN_drymeasure_235 )
          cups
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :cups
            # <-- action
          end

        when 7
          # at line 72:5: drytype WS teaspoon
          @state.following.push( TOKENS_FOLLOWING_drytype_IN_drymeasure_243 )
          drytype
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_drymeasure_245 )
          @state.following.push( TOKENS_FOLLOWING_teaspoon_IN_drymeasure_247 )
          teaspoon
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :teaspoons
            # <-- action
          end

        when 8
          # at line 73:5: drytype WS tablespoon
          @state.following.push( TOKENS_FOLLOWING_drytype_IN_drymeasure_255 )
          drytype
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_drymeasure_257 )
          @state.following.push( TOKENS_FOLLOWING_tablespoon_IN_drymeasure_259 )
          tablespoon
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :tablespoons
            # <-- action
          end

        when 9
          # at line 74:5: drytype WS cup
          @state.following.push( TOKENS_FOLLOWING_drytype_IN_drymeasure_267 )
          drytype
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_drymeasure_269 )
          @state.following.push( TOKENS_FOLLOWING_cup_IN_drymeasure_271 )
          cup
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :cups
            # <-- action
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )
        memoize( __method__, drymeasure_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule liquidmeasure
    # 
    # (in Ingredients.g)
    # 77:1: liquidmeasure returns [value] : ( ml | l | dashes | teaspoons | tablespoons | cups | teaspoon | tablespoon | cup );
    # 
    def liquidmeasure
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      value = nil
      liquidmeasure_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 78:3: ( ml | l | dashes | teaspoons | tablespoons | cups | teaspoon | tablespoon | cup )
        alt_3 = 9
        alt_3 = @dfa3.predict( @input )
        case alt_3
        when 1
          # at line 78:5: ml
          @state.following.push( TOKENS_FOLLOWING_ml_IN_liquidmeasure_290 )
          ml
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :milliliters
            # <-- action
          end

        when 2
          # at line 79:5: l
          @state.following.push( TOKENS_FOLLOWING_l_IN_liquidmeasure_298 )
          l
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :liters
            # <-- action
          end

        when 3
          # at line 80:5: dashes
          @state.following.push( TOKENS_FOLLOWING_dashes_IN_liquidmeasure_306 )
          dashes
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :dashes
            # <-- action
          end

        when 4
          # at line 81:5: teaspoons
          @state.following.push( TOKENS_FOLLOWING_teaspoons_IN_liquidmeasure_314 )
          teaspoons
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :teaspoons
            # <-- action
          end

        when 5
          # at line 82:5: tablespoons
          @state.following.push( TOKENS_FOLLOWING_tablespoons_IN_liquidmeasure_322 )
          tablespoons
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :tablespoons
            # <-- action
          end

        when 6
          # at line 83:5: cups
          @state.following.push( TOKENS_FOLLOWING_cups_IN_liquidmeasure_330 )
          cups
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :cups
            # <-- action
          end

        when 7
          # at line 84:5: teaspoon
          @state.following.push( TOKENS_FOLLOWING_teaspoon_IN_liquidmeasure_338 )
          teaspoon
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :teaspoons
            # <-- action
          end

        when 8
          # at line 85:5: tablespoon
          @state.following.push( TOKENS_FOLLOWING_tablespoon_IN_liquidmeasure_346 )
          tablespoon
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :tablespoons
            # <-- action
          end

        when 9
          # at line 86:5: cup
          @state.following.push( TOKENS_FOLLOWING_cup_IN_liquidmeasure_354 )
          cup
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value = :cups
            # <-- action
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )
        memoize( __method__, liquidmeasure_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule drytype
    # 
    # (in Ingredients.g)
    # 89:1: drytype : ( ( 'H' | 'h' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'P' | 'p' ) ( 'E' | 'e' ) ( 'D' | 'd' ) | ( 'L' | 'l' ) ( 'E' | 'e' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ( 'L' | 'l' ) );
    # 
    def drytype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      drytype_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 90:3: ( ( 'H' | 'h' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'P' | 'p' ) ( 'E' | 'e' ) ( 'D' | 'd' ) | ( 'L' | 'l' ) ( 'E' | 'e' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ( 'L' | 'l' ) )
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0.between?( T__8, T__9 ) )
          alt_4 = 1
        elsif ( look_4_0.between?( T__18, T__19 ) )
          alt_4 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 4, 0 )
        end
        case alt_4
        when 1
          # at line 90:5: ( 'H' | 'h' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'P' | 'p' ) ( 'E' | 'e' ) ( 'D' | 'd' )
          if @input.peek( 1 ).between?( T__8, T__9 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__10, T__11 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__12, T__13 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__14, T__15 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__10, T__11 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__16, T__17 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end



        when 2
          # at line 91:5: ( 'L' | 'l' ) ( 'E' | 'e' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ( 'L' | 'l' )
          if @input.peek( 1 ).between?( T__18, T__19 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__10, T__11 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__20, T__21 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__10, T__11 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end


          if @input.peek( 1 ).between?( T__18, T__19 )
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            mse = MismatchedSet( nil )
            raise mse
          end



        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )
        memoize( __method__, drytype_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule l
    # 
    # (in Ingredients.g)
    # 94:1: l : ( 'l' | 'L' ) ;
    # 
    def l
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      l_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 94:4: ( 'l' | 'L' )
        if @input.peek( 1 ).between?( T__18, T__19 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )
        memoize( __method__, l_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule ml
    # 
    # (in Ingredients.g)
    # 95:1: ml : ( 'M' | 'm' ) l ;
    # 
    def ml
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      ml_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 95:5: ( 'M' | 'm' ) l
        if @input.peek( 1 ).between?( T__22, T__23 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        @state.following.push( TOKENS_FOLLOWING_l_IN_ml_454 )
        l
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )
        memoize( __method__, ml_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule dashes
    # 
    # (in Ingredients.g)
    # 96:1: dashes : dash ( 'E' | 'e' ) ( 'S' | 's' ) ;
    # 
    def dashes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      dashes_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 96:9: dash ( 'E' | 'e' ) ( 'S' | 's' )
        @state.following.push( TOKENS_FOLLOWING_dash_IN_dashes_460 )
        dash
        @state.following.pop
        if @input.peek( 1 ).between?( T__10, T__11 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )
        memoize( __method__, dashes_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule dash
    # 
    # (in Ingredients.g)
    # 97:1: dash : ( 'D' | 'd' ) ( 'A' | 'a' ) ( 'S' | 's' ) ( 'H' | 'h' ) ;
    # 
    def dash
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      dash_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 97:7: ( 'D' | 'd' ) ( 'A' | 'a' ) ( 'S' | 's' ) ( 'H' | 'h' )
        if @input.peek( 1 ).between?( T__16, T__17 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__12, T__13 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__8, T__9 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )
        memoize( __method__, dash_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule g
    # 
    # (in Ingredients.g)
    # 98:1: g : ( 'g' | 'G' ) ;
    # 
    def g
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      g_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 98:4: ( 'g' | 'G' )
        if @input.peek( 1 ).between?( T__26, T__27 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )
        memoize( __method__, g_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule kg
    # 
    # (in Ingredients.g)
    # 99:1: kg : ( 'k' | 'K' ) g ;
    # 
    def kg
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      kg_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 99:5: ( 'k' | 'K' ) g
        if @input.peek( 1 ).between?( T__28, T__29 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        @state.following.push( TOKENS_FOLLOWING_g_IN_kg_518 )
        g
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )
        memoize( __method__, kg_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule pinch
    # 
    # (in Ingredients.g)
    # 100:1: pinch : ( 'P' | 'p' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'C' | 'c' ) ( 'H' | 'h' ) ;
    # 
    def pinch
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )
      pinch_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 100:8: ( 'P' | 'p' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'C' | 'c' ) ( 'H' | 'h' )
        if @input.peek( 1 ).between?( T__14, T__15 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__30, T__31 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__32, T__33 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__34, T__35 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__8, T__9 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )
        memoize( __method__, pinch_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule pinches
    # 
    # (in Ingredients.g)
    # 101:1: pinches : pinch ( 'E' | 'e' ) ( 'S' | 's' ) ;
    # 
    def pinches
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )
      pinches_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 101:10: pinch ( 'E' | 'e' ) ( 'S' | 's' )
        @state.following.push( TOKENS_FOLLOWING_pinch_IN_pinches_554 )
        pinch
        @state.following.pop
        if @input.peek( 1 ).between?( T__10, T__11 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )
        memoize( __method__, pinches_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule teaspoon
    # 
    # (in Ingredients.g)
    # 102:1: teaspoon : ( 'T' | 't' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'S' | 's' ) ( 'P' | 'p' ) ( 'O' | 'o' ) ( 'O' | 'o' ) ( 'N' | 'n' ) ;
    # 
    def teaspoon
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      teaspoon_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 103:5: ( 'T' | 't' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'S' | 's' ) ( 'P' | 'p' ) ( 'O' | 'o' ) ( 'O' | 'o' ) ( 'N' | 'n' )
        if @input.peek( 1 ).between?( T__36, T__37 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__10, T__11 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__12, T__13 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__14, T__15 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__38, T__39 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__38, T__39 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__32, T__33 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )
        memoize( __method__, teaspoon_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule teaspoons
    # 
    # (in Ingredients.g)
    # 112:1: teaspoons : teaspoon ( 'S' | 's' ) ;
    # 
    def teaspoons
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      teaspoons_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 112:12: teaspoon ( 'S' | 's' )
        @state.following.push( TOKENS_FOLLOWING_teaspoon_IN_teaspoons_643 )
        teaspoon
        @state.following.pop
        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )
        memoize( __method__, teaspoons_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule tablespoon
    # 
    # (in Ingredients.g)
    # 113:1: tablespoon : ( 'T' | 't' ) ( 'A' | 'a' ) ( 'B' | 'b' ) ( 'L' | 'l' ) ( 'E' | 'e' ) ( 'S' | 's' ) ( 'P' | 'p' ) ( 'O' | 'o' ) ( 'O' | 'o' ) ( 'N' | 'n' ) ;
    # 
    def tablespoon
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )
      tablespoon_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 114:5: ( 'T' | 't' ) ( 'A' | 'a' ) ( 'B' | 'b' ) ( 'L' | 'l' ) ( 'E' | 'e' ) ( 'S' | 's' ) ( 'P' | 'p' ) ( 'O' | 'o' ) ( 'O' | 'o' ) ( 'N' | 'n' )
        if @input.peek( 1 ).between?( T__36, T__37 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__12, T__13 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__40, T__41 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__18, T__19 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__10, T__11 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__14, T__15 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__38, T__39 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__38, T__39 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__32, T__33 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )
        memoize( __method__, tablespoon_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule tablespoons
    # 
    # (in Ingredients.g)
    # 126:1: tablespoons : tablespoon ( 'S' | 's' ) ;
    # 
    def tablespoons
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )
      tablespoons_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 126:14: tablespoon ( 'S' | 's' )
        @state.following.push( TOKENS_FOLLOWING_tablespoon_IN_tablespoons_744 )
        tablespoon
        @state.following.pop
        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )
        memoize( __method__, tablespoons_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule cup
    # 
    # (in Ingredients.g)
    # 127:1: cup : ( 'C' | 'c' ) ( 'U' | 'u' ) ( 'P' | 'p' ) ;
    # 
    def cup
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )
      cup_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 127:6: ( 'C' | 'c' ) ( 'U' | 'u' ) ( 'P' | 'p' )
        if @input.peek( 1 ).between?( T__34, T__35 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__42, T__43 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__14, T__15 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )
        memoize( __method__, cup_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule cups
    # 
    # (in Ingredients.g)
    # 128:1: cups : cup ( 'S' | 's' ) ;
    # 
    def cups
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )
      cups_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 128:7: cup ( 'S' | 's' )
        @state.following.push( TOKENS_FOLLOWING_cup_IN_cups_776 )
        cup
        @state.following.pop
        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )
        memoize( __method__, cups_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule ingvalue
    # 
    # (in Ingredients.g)
    # 130:1: ingvalue returns [value] : num ;
    # 
    def ingvalue
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )
      value = nil
      ingvalue_start_index = @input.index
      num10 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 130:27: num
        @state.following.push( TOKENS_FOLLOWING_num_IN_ingvalue_793 )
        num10 = num
        @state.following.pop
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
          value = ( num10.nil? ? nil : num10.value )
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )
        memoize( __method__, ingvalue_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule ingname
    # 
    # (in Ingredients.g)
    # 131:1: ingname returns [value] : text ;
    # 
    def ingname
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )
      value = nil
      ingname_start_index = @input.index
      text11 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 131:26: text
        @state.following.push( TOKENS_FOLLOWING_text_IN_ingname_805 )
        text11 = text
        @state.following.pop
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
          value = ( text11.nil? ? nil : text11.value )
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )
        memoize( __method__, ingname_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end

    TextReturnValue = define_return_scope :value

    # 
    # parser rule text
    # 
    # (in Ingredients.g)
    # 133:1: text returns [value] : (~ EOL )+ ;
    # 
    def text
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      return_value = TextReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      text_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return return_value
        end
        # at line 133:23: (~ EOL )+
        # at file 133:23: (~ EOL )+
        match_count_5 = 0
        while true
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == WS || look_5_0.between?( DIGIT, T__43 ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 133:24: ~ EOL
            if @input.peek(1) == WS || @input.peek( 1 ).between?( DIGIT, T__43 )
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              mse = MismatchedSet( nil )
              raise mse
            end



          else
            match_count_5 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(5)


            raise eee
          end
          match_count_5 += 1
        end

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
          return_value.value = @input.to_s( return_value.start, @input.look( -1 ) )
          # <-- action
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )
        memoize( __method__, text_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end

    NumReturnValue = define_return_scope :value

    # 
    # parser rule num
    # 
    # (in Ingredients.g)
    # 134:1: num returns [value] : ( DIGIT )+ ;
    # 
    def num
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      return_value = NumReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      num_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return return_value
        end
        # at line 134:22: ( DIGIT )+
        # at file 134:22: ( DIGIT )+
        match_count_6 = 0
        while true
          alt_6 = 2
          look_6_0 = @input.peek( 1 )

          if ( look_6_0 == DIGIT )
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 0:0: DIGIT
            match( DIGIT, TOKENS_FOLLOWING_DIGIT_IN_num_834 )

          else
            match_count_6 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(6)


            raise eee
          end
          match_count_6 += 1
        end

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
          return_value.value = @input.to_s( return_value.start, @input.look( -1 ) ).to_i
          # <-- action
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )
        memoize( __method__, num_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end

    # 
    # syntactic predicate synpred3_Ingredients
    # 
    # (in Ingredients.g)
    # 35:5: synpred3_Ingredients : ingvalue WS ingname ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred3_Ingredients
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      # at line 35:5: ingvalue WS ingname
      @state.following.push( TOKENS_FOLLOWING_ingvalue_IN_synpred3_Ingredients_94 )
      ingvalue
      @state.following.pop
      match( WS, TOKENS_FOLLOWING_WS_IN_synpred3_Ingredients_96 )
      @state.following.push( TOKENS_FOLLOWING_ingname_IN_synpred3_Ingredients_98 )
      ingname
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA1 < ANTLR3::DFA
      EOT = unpack( 17, -1 )
      EOF = unpack( 1, -1, 1, 2, 1, -1, 1, 2, 13, -1 )
      MIN = unpack( 2, 4, 1, -1, 2, 4, 1, 26, 1, 30, 1, 10, 1, 4, 1, 18, 
                    1, 12, 1, 10, 1, 42, 1, 0, 3, -1 )
      MAX = unpack( 2, 43, 1, -1, 1, 43, 1, 4, 1, 27, 1, 31, 2, 11, 1, 19, 
                    2, 13, 1, 43, 1, 0, 3, -1 )
      ACCEPT = unpack( 2, -1, 1, 4, 11, -1, 1, 1, 1, 3, 1, 2 )
      SPECIAL = unpack( 4, -1, 1, 9, 1, 4, 1, 1, 1, 5, 1, 0, 1, 7, 1, 6, 
                        1, 8, 1, 3, 1, 2, 3, -1 )
      TRANSITION = [
        unpack( 1, 2, 1, -1, 1, 1, 37, 2 ),
        unpack( 1, 3, 1, -1, 1, 1, 37, 2 ),
        unpack(  ),
        unpack( 1, 13, 1, -1, 2, 13, 2, 7, 4, 13, 2, 6, 2, 10, 2, 8, 2, 
                 13, 2, 9, 2, 13, 2, 4, 2, 5, 4, 13, 2, 12, 2, 11, 6, 13 ),
        unpack( 1, 14 ),
        unpack( 2, 14 ),
        unpack( 2, 14 ),
        unpack( 2, 14 ),
        unpack( 1, 16, 5, -1, 2, 14 ),
        unpack( 2, 16 ),
        unpack( 2, 16 ),
        unpack( 4, 16 ),
        unpack( 2, 16 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 1
      

      def description
        <<-'__dfa_description__'.strip!
          26:1: ingredient returns [value] : ( dryingredient | liquidingredient | ingvalue WS ingname | ingname );
        __dfa_description__
      end
    end
    class DFA2 < ANTLR3::DFA
      EOT = unpack( 42, -1 )
      EOF = unpack( 42, -1 )
      MIN = unpack( 1, 8, 3, -1, 2, 10, 1, 12, 1, 20, 1, 14, 2, 10, 1, 18, 
                    1, 16, 2, 4, 1, 34, 1, 10, 1, 42, 1, 12, 1, 40, 1, 14, 
                    1, 24, 1, 18, 1, 4, 1, 14, 1, 10, 2, -1, 1, 38, 1, 24, 
                    1, 38, 1, 14, 1, 32, 1, 38, 1, 4, 1, 38, 2, -1, 1, 32, 
                    1, 4, 2, -1 )
      MAX = unpack( 1, 29, 3, -1, 2, 11, 1, 13, 1, 21, 1, 15, 2, 11, 1, 
                    19, 1, 17, 2, 4, 1, 37, 1, 13, 1, 43, 1, 13, 1, 41, 
                    1, 15, 1, 25, 1, 19, 1, 25, 1, 15, 1, 11, 2, -1, 1, 
                    39, 1, 25, 1, 39, 1, 15, 1, 33, 1, 39, 1, 25, 1, 39, 
                    2, -1, 1, 33, 1, 25, 2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 22, -1, 1, 6, 1, 9, 8, -1, 
                       1, 4, 1, 7, 2, -1, 1, 5, 1, 8 )
      SPECIAL = unpack( 42, -1 )
      TRANSITION = [
        unpack( 2, 4, 4, -1, 2, 3, 2, -1, 2, 5, 6, -1, 2, 1, 2, 2 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 6 ),
        unpack( 2, 7 ),
        unpack( 2, 8 ),
        unpack( 2, 9 ),
        unpack( 2, 10 ),
        unpack( 2, 11 ),
        unpack( 2, 12 ),
        unpack( 2, 13 ),
        unpack( 2, 14 ),
        unpack( 1, 15 ),
        unpack( 1, 15 ),
        unpack( 2, 17, 2, 16 ),
        unpack( 2, 18, 2, 19 ),
        unpack( 2, 20 ),
        unpack( 2, 21 ),
        unpack( 2, 22 ),
        unpack( 2, 23 ),
        unpack( 2, 24 ),
        unpack( 2, 25 ),
        unpack( 1, 27, 19, -1, 2, 26 ),
        unpack( 2, 28 ),
        unpack( 2, 29 ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 30 ),
        unpack( 2, 31 ),
        unpack( 2, 32 ),
        unpack( 2, 33 ),
        unpack( 2, 34 ),
        unpack( 2, 35 ),
        unpack( 1, 37, 19, -1, 2, 36 ),
        unpack( 2, 38 ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 39 ),
        unpack( 1, 41, 19, -1, 2, 40 ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 2
      

      def description
        <<-'__dfa_description__'.strip!
          65:1: drymeasure returns [value] : ( g | kg | pinches | drytype WS teaspoons | drytype WS tablespoons | drytype WS cups | drytype WS teaspoon | drytype WS tablespoon | drytype WS cup );
        __dfa_description__
      end
    end
    class DFA3 < ANTLR3::DFA
      EOT = unpack( 30, -1 )
      EOF = unpack( 30, -1 )
      MIN = unpack( 1, 16, 3, -1, 1, 10, 1, 42, 1, 12, 1, 40, 1, 14, 1, 
                    24, 1, 18, 1, 4, 1, 14, 1, 10, 2, -1, 1, 38, 1, 24, 
                    1, 38, 1, 14, 1, 32, 1, 38, 1, 4, 1, 38, 2, -1, 1, 32, 
                    1, 4, 2, -1 )
      MAX = unpack( 1, 37, 3, -1, 1, 13, 1, 43, 1, 13, 1, 41, 1, 15, 1, 
                    25, 1, 19, 1, 25, 1, 15, 1, 11, 2, -1, 1, 39, 1, 25, 
                    1, 39, 1, 15, 1, 33, 1, 39, 1, 25, 1, 39, 2, -1, 1, 
                    33, 1, 25, 2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 10, -1, 1, 6, 1, 9, 8, -1, 
                       1, 4, 1, 7, 2, -1, 1, 5, 1, 8 )
      SPECIAL = unpack( 30, -1 )
      TRANSITION = [
        unpack( 2, 3, 2, 2, 2, -1, 2, 1, 10, -1, 2, 5, 2, 4 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 6, 2, 7 ),
        unpack( 2, 8 ),
        unpack( 2, 9 ),
        unpack( 2, 10 ),
        unpack( 2, 11 ),
        unpack( 2, 12 ),
        unpack( 2, 13 ),
        unpack( 1, 15, 19, -1, 2, 14 ),
        unpack( 2, 16 ),
        unpack( 2, 17 ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 18 ),
        unpack( 2, 19 ),
        unpack( 2, 20 ),
        unpack( 2, 21 ),
        unpack( 2, 22 ),
        unpack( 2, 23 ),
        unpack( 1, 25, 19, -1, 2, 24 ),
        unpack( 2, 26 ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 27 ),
        unpack( 1, 29, 19, -1, 2, 28 ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 3
      

      def description
        <<-'__dfa_description__'.strip!
          77:1: liquidmeasure returns [value] : ( ml | l | dashes | teaspoons | tablespoons | cups | teaspoon | tablespoon | cup );
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa1 = DFA1.new( self, 1 ) do |s|
        case s
        when 0
          look_1_8 = @input.peek
          index_1_8 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_8.between?( T__10, T__11 ) )
            s = 14
          elsif ( look_1_8 == WS )
            s = 16
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_8 )

        when 1
          look_1_6 = @input.peek
          index_1_6 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_6.between?( T__30, T__31 ) )
            s = 14
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_6 )

        when 2
          look_1_13 = @input.peek
          index_1_13 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_13 )

        when 3
          look_1_12 = @input.peek
          index_1_12 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_12.between?( T__42, T__43 ) )
            s = 16
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_12 )

        when 4
          look_1_5 = @input.peek
          index_1_5 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_5.between?( T__26, T__27 ) )
            s = 14
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_5 )

        when 5
          look_1_7 = @input.peek
          index_1_7 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_7.between?( T__10, T__11 ) )
            s = 14
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_7 )

        when 6
          look_1_10 = @input.peek
          index_1_10 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_10.between?( T__12, T__13 ) )
            s = 16
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_10 )

        when 7
          look_1_9 = @input.peek
          index_1_9 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_9.between?( T__18, T__19 ) )
            s = 16
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_9 )

        when 8
          look_1_11 = @input.peek
          index_1_11 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_11.between?( T__10, T__13 ) )
            s = 16
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_11 )

        when 9
          look_1_4 = @input.peek
          index_1_4 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_1_4 == WS )
            s = 14
          elsif ( syntactic_predicate?( :synpred3_Ingredients ) )
            s = 15
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_1_4 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa1.description, 1, s, input )
          @dfa1.error( nva )
          raise nva
        end
        
        s
      end
      @dfa2 = DFA2.new( self, 2 )
      @dfa3 = DFA3.new( self, 3 )

    end
    TOKENS_FOLLOWING_dryingredient_IN_ingredient_78 = Set[ 1 ]
    TOKENS_FOLLOWING_liquidingredient_IN_ingredient_86 = Set[ 1 ]
    TOKENS_FOLLOWING_ingvalue_IN_ingredient_94 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_ingredient_96 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_ingname_IN_ingredient_98 = Set[ 1 ]
    TOKENS_FOLLOWING_ingname_IN_ingredient_106 = Set[ 1 ]
    TOKENS_FOLLOWING_ingvalue_IN_liquidingredient_125 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquidingredient_127 = Set[ 16, 17, 18, 19, 22, 23, 34, 35, 36, 37 ]
    TOKENS_FOLLOWING_liquidmeasure_IN_liquidingredient_131 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquidingredient_133 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_ingname_IN_liquidingredient_135 = Set[ 1 ]
    TOKENS_FOLLOWING_ingvalue_IN_dryingredient_154 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_dryingredient_156 = Set[ 8, 9, 14, 15, 18, 19, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_drymeasure_IN_dryingredient_160 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_dryingredient_162 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_ingname_IN_dryingredient_164 = Set[ 1 ]
    TOKENS_FOLLOWING_g_IN_drymeasure_183 = Set[ 1 ]
    TOKENS_FOLLOWING_kg_IN_drymeasure_191 = Set[ 1 ]
    TOKENS_FOLLOWING_pinches_IN_drymeasure_199 = Set[ 1 ]
    TOKENS_FOLLOWING_drytype_IN_drymeasure_207 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_drymeasure_209 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_teaspoons_IN_drymeasure_211 = Set[ 1 ]
    TOKENS_FOLLOWING_drytype_IN_drymeasure_219 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_drymeasure_221 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_tablespoons_IN_drymeasure_223 = Set[ 1 ]
    TOKENS_FOLLOWING_drytype_IN_drymeasure_231 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_drymeasure_233 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_cups_IN_drymeasure_235 = Set[ 1 ]
    TOKENS_FOLLOWING_drytype_IN_drymeasure_243 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_drymeasure_245 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_teaspoon_IN_drymeasure_247 = Set[ 1 ]
    TOKENS_FOLLOWING_drytype_IN_drymeasure_255 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_drymeasure_257 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_tablespoon_IN_drymeasure_259 = Set[ 1 ]
    TOKENS_FOLLOWING_drytype_IN_drymeasure_267 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_drymeasure_269 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_cup_IN_drymeasure_271 = Set[ 1 ]
    TOKENS_FOLLOWING_ml_IN_liquidmeasure_290 = Set[ 1 ]
    TOKENS_FOLLOWING_l_IN_liquidmeasure_298 = Set[ 1 ]
    TOKENS_FOLLOWING_dashes_IN_liquidmeasure_306 = Set[ 1 ]
    TOKENS_FOLLOWING_teaspoons_IN_liquidmeasure_314 = Set[ 1 ]
    TOKENS_FOLLOWING_tablespoons_IN_liquidmeasure_322 = Set[ 1 ]
    TOKENS_FOLLOWING_cups_IN_liquidmeasure_330 = Set[ 1 ]
    TOKENS_FOLLOWING_teaspoon_IN_liquidmeasure_338 = Set[ 1 ]
    TOKENS_FOLLOWING_tablespoon_IN_liquidmeasure_346 = Set[ 1 ]
    TOKENS_FOLLOWING_cup_IN_liquidmeasure_354 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_drytype_369 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_drytype_374 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_drytype_379 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_drytype_384 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_drytype_389 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_drytype_394 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_drytype_404 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_drytype_409 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_drytype_414 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_drytype_419 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_drytype_424 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_l_438 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_ml_448 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_l_IN_ml_454 = Set[ 1 ]
    TOKENS_FOLLOWING_dash_IN_dashes_460 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_dashes_462 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_dashes_467 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_dash_477 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_dash_482 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_dash_487 = Set[ 8, 9 ]
    TOKENS_FOLLOWING_set_IN_dash_492 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_g_502 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_kg_512 = Set[ 26, 27 ]
    TOKENS_FOLLOWING_g_IN_kg_518 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_pinch_524 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_pinch_529 = Set[ 32, 33 ]
    TOKENS_FOLLOWING_set_IN_pinch_534 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_pinch_539 = Set[ 8, 9 ]
    TOKENS_FOLLOWING_set_IN_pinch_544 = Set[ 1 ]
    TOKENS_FOLLOWING_pinch_IN_pinches_554 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_pinches_556 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_pinches_561 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_574 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_582 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_590 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_598 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_606 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_614 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_622 = Set[ 32, 33 ]
    TOKENS_FOLLOWING_set_IN_teaspoon_630 = Set[ 1 ]
    TOKENS_FOLLOWING_teaspoon_IN_teaspoons_643 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_teaspoons_645 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_658 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_666 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_674 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_682 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_690 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_698 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_706 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_714 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_722 = Set[ 32, 33 ]
    TOKENS_FOLLOWING_set_IN_tablespoon_730 = Set[ 1 ]
    TOKENS_FOLLOWING_tablespoon_IN_tablespoons_744 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_tablespoons_746 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_cup_756 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_cup_761 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_cup_766 = Set[ 1 ]
    TOKENS_FOLLOWING_cup_IN_cups_776 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_cups_778 = Set[ 1 ]
    TOKENS_FOLLOWING_num_IN_ingvalue_793 = Set[ 1 ]
    TOKENS_FOLLOWING_text_IN_ingname_805 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_text_819 = Set[ 1, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_DIGIT_IN_num_834 = Set[ 1, 6 ]
    TOKENS_FOLLOWING_ingvalue_IN_synpred3_Ingredients_94 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_synpred3_Ingredients_96 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_ingname_IN_synpred3_Ingredients_98 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end
# - - - - - - begin action @parser::footer - - - - - -
# Ingredients.g


  end

# - - - - - - end action @parser::footer - - - - - - -


