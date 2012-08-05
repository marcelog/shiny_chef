#!/usr/bin/env ruby
#
# Recipes.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Recipes.g
# Generated at: 2012-08-05 19:34:43
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
# Recipes.g


  module ::ShinyChef::Parsers

# - - - - - - end action @parser::header - - - - - - -


module Recipes
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :T__25 => 25, :T__24 => 24, :T__23 => 23, :LETTER => 8, 
                   :T__22 => 22, :T__21 => 21, :T__20 => 20, :EOF => -1, 
                   :T__19 => 19, :T__16 => 16, :EOL => 4, :T__15 => 15, 
                   :T__18 => 18, :T__17 => 17, :T__12 => 12, :T__11 => 11, 
                   :T__14 => 14, :T__13 => 13, :T__10 => 10, :DIGIT => 6, 
                   :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                   :STOP => 7, :T__30 => 30, :T__31 => 31, :T__32 => 32, 
                   :T__33 => 33, :WS => 5, :T__34 => 34, :T__35 => 35, :T__36 => 36, 
                   :T__37 => 37, :T__38 => 38, :T__39 => 39, :PUNCT => 9 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "EOL", "WS", "DIGIT", "STOP", "LETTER", "PUNCT", "'S'", 
                    "'s'", "'E'", "'e'", "'R'", "'r'", "'V'", "'v'", "'C'", 
                    "'c'", "'O'", "'o'", "'K'", "'k'", "'I'", "'i'", "'N'", 
                    "'n'", "'G'", "'g'", "'T'", "'t'", "'M'", "'m'", "':'", 
                    "'P'", "'p'", "'-'", "'H'", "'h'", "'A'", "'a'", "'D'", 
                    "'d'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Recipes

    RULE_METHODS = [ :recipes, :recipe, :method, :serves, :cooktime, :oventemp, 
                     :methodheader, :instructions, :instruction, :ingredientheader, 
                     :ingredientlist, :ingredient, :title, :description, 
                     :lineorstop, :line, :synpred2_Recipes, :synpred9_Recipes, 
                     :synpred10_Recipes, :synpred32_Recipes, :synpred48_Recipes, 
                     :synpred55_Recipes, :synpred56_Recipes, :synpred57_Recipes ].freeze


    include TokenData

    begin
      generated_using( "Recipes.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
      @state.rule_memory = {}

      # - - - - - - begin action @parser::init - - - - - -
      # Recipes.g


        @main_recipe = nil

      # - - - - - - end action @parser::init - - - - - - -


    end

      include ::ShinyChef::Logger
      def recipes_found
        @recipes_found
      end
      def main_recipe
        @main_recipe
      end

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule recipes
    # 
    # (in Recipes.g)
    # 37:1: recipes returns [value] : ( recipe ( EOL )+ EOF | r1= recipe ( ( EOL )+ r2= recipe )+ EOF );
    # 
    def recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      value = nil
      recipes_start_index = @input.index
      r1 = nil
      r2 = nil
      recipe1 = nil
      # - - - - @init action - - - -

          value = {}
        

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 41:3: ( recipe ( EOL )+ EOF | r1= recipe ( ( EOL )+ r2= recipe )+ EOF )
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0.between?( WS, DIGIT ) || look_4_0.between?( LETTER, T__43 ) )
          look_4_1 = @input.peek( 2 )

          if ( syntactic_predicate?( :synpred2_Recipes ) )
            alt_4 = 1
          elsif ( true )
            alt_4 = 2
          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            raise NoViableAlternative( "", 4, 1 )
          end
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          raise NoViableAlternative( "", 4, 0 )
        end
        case alt_4
        when 1
          # at line 41:5: recipe ( EOL )+ EOF
          @state.following.push( TOKENS_FOLLOWING_recipe_IN_recipes_97 )
          recipe1 = recipe
          @state.following.pop
          # at file 41:12: ( EOL )+
          match_count_1 = 0
          while true
            alt_1 = 2
            look_1_0 = @input.peek( 1 )

            if ( look_1_0 == EOL )
              alt_1 = 1

            end
            case alt_1
            when 1
              # at line 0:0: EOL
              match( EOL, TOKENS_FOLLOWING_EOL_IN_recipes_99 )

            else
              match_count_1 > 0 and break
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              eee = EarlyExit(1)


              raise eee
            end
            match_count_1 += 1
          end

          match( EOF, TOKENS_FOLLOWING_EOF_IN_recipes_102 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value[recipe1[:title]] = recipe1
                @main_recipe = recipe1[:title]
              
            # <-- action
          end

        when 2
          # at line 45:5: r1= recipe ( ( EOL )+ r2= recipe )+ EOF
          @state.following.push( TOKENS_FOLLOWING_recipe_IN_recipes_112 )
          r1 = recipe
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value[r1[:title]] = r1
                @main_recipe = r1[:title]
              
            # <-- action
          end
          # at file 48:5: ( ( EOL )+ r2= recipe )+
          match_count_3 = 0
          while true
            alt_3 = 2
            look_3_0 = @input.peek( 1 )

            if ( look_3_0 == EOL )
              alt_3 = 1

            end
            case alt_3
            when 1
              # at line 48:6: ( EOL )+ r2= recipe
              # at file 48:6: ( EOL )+
              match_count_2 = 0
              while true
                alt_2 = 2
                look_2_0 = @input.peek( 1 )

                if ( look_2_0 == EOL )
                  alt_2 = 1

                end
                case alt_2
                when 1
                  # at line 0:0: EOL
                  match( EOL, TOKENS_FOLLOWING_EOL_IN_recipes_117 )

                else
                  match_count_2 > 0 and break
                  @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

                  eee = EarlyExit(2)


                  raise eee
                end
                match_count_2 += 1
              end

              @state.following.push( TOKENS_FOLLOWING_recipe_IN_recipes_122 )
              r2 = recipe
              @state.following.pop

            else
              match_count_3 > 0 and break
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              eee = EarlyExit(3)


              raise eee
            end
            match_count_3 += 1
          end

          match( EOF, TOKENS_FOLLOWING_EOF_IN_recipes_126 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value[r2[:title]] = r2
              
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
        memoize( __method__, recipes_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule recipe
    # 
    # (in Recipes.g)
    # 52:1: recipe returns [value] : title EOL ( description EOL )? ingredientlist EOL ( cooktime EOL )? ( oventemp EOL )? method ( ( EOL )+ serves ( EOL )? )? ;
    # 
    def recipe
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      value = nil
      recipe_start_index = @input.index
      title2 = nil
      description3 = nil
      ingredientlist4 = nil
      cooktime5 = nil
      oventemp6 = nil
      method7 = nil
      serves8 = nil
      # - - - - @init action - - - -

          value = {
            :title => nil,
            :description => nil,
            :ingredients => [],
            :method => [],
            :serves => 0,
            :cooktime => nil,
            :oventemp => nil
          }
        

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 67:5: title EOL ( description EOL )? ingredientlist EOL ( cooktime EOL )? ( oventemp EOL )? method ( ( EOL )+ serves ( EOL )? )?
        @state.following.push( TOKENS_FOLLOWING_title_IN_recipe_156 )
        title2 = title
        @state.following.pop
        match( EOL, TOKENS_FOLLOWING_EOL_IN_recipe_158 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value[:title] = title2.downcase; 
          # <-- action
        end
        # at line 68:3: ( description EOL )?
        alt_5 = 2
        alt_5 = @dfa5.predict( @input )
        case alt_5
        when 1
          # at line 68:4: description EOL
          @state.following.push( TOKENS_FOLLOWING_description_IN_recipe_165 )
          description3 = description
          @state.following.pop
          match( EOL, TOKENS_FOLLOWING_EOL_IN_recipe_167 )

        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value[:description] = description3 
          # <-- action
        end
        @state.following.push( TOKENS_FOLLOWING_ingredientlist_IN_recipe_175 )
        ingredientlist4 = ingredientlist
        @state.following.pop
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value[:ingredients] = ingredientlist4 
          # <-- action
        end
        match( EOL, TOKENS_FOLLOWING_EOL_IN_recipe_179 )
        # at line 70:3: ( cooktime EOL )?
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( T__18, T__19 ) )
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 70:4: cooktime EOL
          @state.following.push( TOKENS_FOLLOWING_cooktime_IN_recipe_184 )
          cooktime5 = cooktime
          @state.following.pop
          match( EOL, TOKENS_FOLLOWING_EOL_IN_recipe_186 )

        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value[:cooktime] = cooktime5
          # <-- action
        end
        # at line 71:3: ( oventemp EOL )?
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( T__35, T__36 ) )
          alt_7 = 1
        end
        case alt_7
        when 1
          # at line 71:4: oventemp EOL
          @state.following.push( TOKENS_FOLLOWING_oventemp_IN_recipe_195 )
          oventemp6 = oventemp
          @state.following.pop
          match( EOL, TOKENS_FOLLOWING_EOL_IN_recipe_197 )

        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value[:oventemp] = oventemp6
          # <-- action
        end
        @state.following.push( TOKENS_FOLLOWING_method_IN_recipe_205 )
        method7 = method
        @state.following.pop
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value[:method] = method7
          # <-- action
        end
        # at line 73:3: ( ( EOL )+ serves ( EOL )? )?
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == EOL )
          look_10_1 = @input.peek( 2 )

          if ( syntactic_predicate?( :synpred10_Recipes ) )
            alt_10 = 1
          end
        end
        case alt_10
        when 1
          # at line 73:4: ( EOL )+ serves ( EOL )?
          # at file 73:4: ( EOL )+
          match_count_8 = 0
          while true
            alt_8 = 2
            look_8_0 = @input.peek( 1 )

            if ( look_8_0 == EOL )
              alt_8 = 1

            end
            case alt_8
            when 1
              # at line 0:0: EOL
              match( EOL, TOKENS_FOLLOWING_EOL_IN_recipe_212 )

            else
              match_count_8 > 0 and break
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              eee = EarlyExit(8)


              raise eee
            end
            match_count_8 += 1
          end

          @state.following.push( TOKENS_FOLLOWING_serves_IN_recipe_215 )
          serves8 = serves
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             value[:serves] = serves8
            # <-- action
          end
          # at line 73:51: ( EOL )?
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0 == EOL )
            look_9_1 = @input.peek( 2 )

            if ( syntactic_predicate?( :synpred9_Recipes ) )
              alt_9 = 1
            end
          end
          case alt_9
          when 1
            # at line 0:0: EOL
            match( EOL, TOKENS_FOLLOWING_EOL_IN_recipe_219 )

          end

        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              logger.debug "Recipe read: #{value.inspect}"
            
          # <-- action
        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )
        memoize( __method__, recipe_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule method
    # 
    # (in Recipes.g)
    # 76:1: method returns [value] : methodheader EOL instructions ;
    # 
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      value = nil
      method_start_index = @input.index
      instructions9 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 77:5: methodheader EOL instructions
        @state.following.push( TOKENS_FOLLOWING_methodheader_IN_method_239 )
        methodheader
        @state.following.pop
        match( EOL, TOKENS_FOLLOWING_EOL_IN_method_243 )
        @state.following.push( TOKENS_FOLLOWING_instructions_IN_method_247 )
        instructions9 = instructions
        @state.following.pop
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = instructions9 
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )
        memoize( __method__, method_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule serves
    # 
    # (in Recipes.g)
    # 82:1: serves returns [value] : ( 'S' | 's' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ( 'S' | 's' ) ( WS )+ (v= DIGIT )+ ( STOP )? ;
    # 
    def serves
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      value = nil
      serves_start_index = @input.index
      v = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 83:5: ( 'S' | 's' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ( 'S' | 's' ) ( WS )+ (v= DIGIT )+ ( STOP )?
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


        if @input.peek( 1 ).between?( T__10, T__11 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # at file 88:13: ( WS )+
        match_count_11 = 0
        while true
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == WS )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 0:0: WS
            match( WS, TOKENS_FOLLOWING_WS_IN_serves_312 )

          else
            match_count_11 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(11)


            raise eee
          end
          match_count_11 += 1
        end

        # at file 88:18: (v= DIGIT )+
        match_count_12 = 0
        while true
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0 == DIGIT )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 0:0: v= DIGIT
            v = match( DIGIT, TOKENS_FOLLOWING_DIGIT_IN_serves_317 )

          else
            match_count_12 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(12)


            raise eee
          end
          match_count_12 += 1
        end

        # at line 88:26: ( STOP )?
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == STOP )
          alt_13 = 1
        end
        case alt_13
        when 1
          # at line 0:0: STOP
          match( STOP, TOKENS_FOLLOWING_STOP_IN_serves_320 )

        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = v.text.to_i 
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )
        memoize( __method__, serves_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule cooktime
    # 
    # (in Recipes.g)
    # 91:1: cooktime returns [value] : ( 'C' | 'c' ) ( 'O' | 'o' ) ( 'O' | 'o' ) ( 'K' | 'k' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ( WS )+ ( 'T' | 't' ) ( 'I' | 'i' ) ( 'M' | 'm' ) ( 'E' | 'e' ) ':' ( WS )+ lineorstop STOP EOL ;
    # 
    def cooktime
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      value = nil
      cooktime_start_index = @input.index
      lineorstop10 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 92:5: ( 'C' | 'c' ) ( 'O' | 'o' ) ( 'O' | 'o' ) ( 'K' | 'k' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ( WS )+ ( 'T' | 't' ) ( 'I' | 'i' ) ( 'M' | 'm' ) ( 'E' | 'e' ) ':' ( WS )+ lineorstop STOP EOL
        if @input.peek( 1 ).between?( T__18, T__19 )
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


        if @input.peek( 1 ).between?( T__20, T__21 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__22, T__23 )
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


        if @input.peek( 1 ).between?( T__26, T__27 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__28, T__29 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # at file 98:13: ( WS )+
        match_count_14 = 0
        while true
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == WS )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 0:0: WS
            match( WS, TOKENS_FOLLOWING_WS_IN_cooktime_394 )

          else
            match_count_14 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(14)


            raise eee
          end
          match_count_14 += 1
        end

        if @input.peek( 1 ).between?( T__30, T__31 )
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


        if @input.peek( 1 ).between?( T__32, T__33 )
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


        match( T__34, TOKENS_FOLLOWING_T__34_IN_cooktime_429 )
        # at file 102:17: ( WS )+
        match_count_15 = 0
        while true
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == WS )
            look_15_1 = @input.peek( 2 )

            if ( syntactic_predicate?( :synpred32_Recipes ) )
              alt_15 = 1

            end

          end
          case alt_15
          when 1
            # at line 0:0: WS
            match( WS, TOKENS_FOLLOWING_WS_IN_cooktime_431 )

          else
            match_count_15 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(15)


            raise eee
          end
          match_count_15 += 1
        end

        @state.following.push( TOKENS_FOLLOWING_lineorstop_IN_cooktime_434 )
        lineorstop10 = lineorstop
        @state.following.pop
        match( STOP, TOKENS_FOLLOWING_STOP_IN_cooktime_436 )
        match( EOL, TOKENS_FOLLOWING_EOL_IN_cooktime_438 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ( lineorstop10 && @input.to_s( lineorstop10.start, lineorstop10.stop ) )
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )
        memoize( __method__, cooktime_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule oventemp
    # 
    # (in Recipes.g)
    # 105:1: oventemp returns [value] : ( 'P' | 'p' ) ( 'R' | 'r' ) ( 'E' | 'e' ) '-' ( 'H' | 'h' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'T' | 't' ) ( WS )+ ( 'O' | 'o' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( WS )+ ( 'T' | 't' ) ( 'O' | 'o' ) ( WS )+ lineorstop STOP EOL ;
    # 
    def oventemp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      value = nil
      oventemp_start_index = @input.index
      lineorstop11 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 106:5: ( 'P' | 'p' ) ( 'R' | 'r' ) ( 'E' | 'e' ) '-' ( 'H' | 'h' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'T' | 't' ) ( WS )+ ( 'O' | 'o' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( WS )+ ( 'T' | 't' ) ( 'O' | 'o' ) ( WS )+ lineorstop STOP EOL
        if @input.peek( 1 ).between?( T__35, T__36 )
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


        if @input.peek( 1 ).between?( T__12, T__13 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        match( T__37, TOKENS_FOLLOWING_T__37_IN_oventemp_481 )
        if @input.peek( 1 ).between?( T__38, T__39 )
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


        if @input.peek( 1 ).between?( T__30, T__31 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # at file 114:3: ( WS )+
        match_count_16 = 0
        while true
          alt_16 = 2
          look_16_0 = @input.peek( 1 )

          if ( look_16_0 == WS )
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 0:0: WS
            match( WS, TOKENS_FOLLOWING_WS_IN_oventemp_517 )

          else
            match_count_16 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(16)


            raise eee
          end
          match_count_16 += 1
        end

        if @input.peek( 1 ).between?( T__20, T__21 )
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


        if @input.peek( 1 ).between?( T__12, T__13 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__26, T__27 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # at file 119:3: ( WS )+
        match_count_17 = 0
        while true
          alt_17 = 2
          look_17_0 = @input.peek( 1 )

          if ( look_17_0 == WS )
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 0:0: WS
            match( WS, TOKENS_FOLLOWING_WS_IN_oventemp_554 )

          else
            match_count_17 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(17)


            raise eee
          end
          match_count_17 += 1
        end

        if @input.peek( 1 ).between?( T__30, T__31 )
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


        # at file 122:3: ( WS )+
        match_count_18 = 0
        while true
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == WS )
            look_18_1 = @input.peek( 2 )

            if ( syntactic_predicate?( :synpred48_Recipes ) )
              alt_18 = 1

            end

          end
          case alt_18
          when 1
            # at line 0:0: WS
            match( WS, TOKENS_FOLLOWING_WS_IN_oventemp_575 )

          else
            match_count_18 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(18)


            raise eee
          end
          match_count_18 += 1
        end

        @state.following.push( TOKENS_FOLLOWING_lineorstop_IN_oventemp_580 )
        lineorstop11 = lineorstop
        @state.following.pop
        match( STOP, TOKENS_FOLLOWING_STOP_IN_oventemp_582 )
        match( EOL, TOKENS_FOLLOWING_EOL_IN_oventemp_584 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ( lineorstop11 && @input.to_s( lineorstop11.start, lineorstop11.stop ) )
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )
        memoize( __method__, oventemp_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule methodheader
    # 
    # (in Recipes.g)
    # 126:1: methodheader : ( 'M' | 'm' ) ( 'E' | 'e' ) ( 'T' | 't' ) ( 'H' | 'h' ) ( 'O' | 'o' ) ( 'D' | 'd' ) STOP ;
    # 
    def methodheader
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      methodheader_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 127:5: ( 'M' | 'm' ) ( 'E' | 'e' ) ( 'T' | 't' ) ( 'H' | 'h' ) ( 'O' | 'o' ) ( 'D' | 'd' ) STOP
        if @input.peek( 1 ).between?( T__32, T__33 )
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


        if @input.peek( 1 ).between?( T__30, T__31 )
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


        if @input.peek( 1 ).between?( T__20, T__21 )
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


        match( STOP, TOKENS_FOLLOWING_STOP_IN_methodheader_647 )

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )
        memoize( __method__, methodheader_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule instructions
    # 
    # (in Recipes.g)
    # 136:1: instructions returns [value] : ( ( WS )* instruction STOP ( WS )* ( EOL )? )+ ;
    # 
    def instructions
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      value = nil
      instructions_start_index = @input.index
      instruction12 = nil
      # - - - - @init action - - - -

            ilist = []
        

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 140:5: ( ( WS )* instruction STOP ( WS )* ( EOL )? )+
        # at file 140:5: ( ( WS )* instruction STOP ( WS )* ( EOL )? )+
        match_count_22 = 0
        while true
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0.between?( WS, DIGIT ) || look_22_0.between?( LETTER, T__43 ) )
            alt_22 = 1

          end
          case alt_22
          when 1
            # at line 140:6: ( WS )* instruction STOP ( WS )* ( EOL )?
            # at line 140:6: ( WS )*
            while true # decision 19
              alt_19 = 2
              look_19_0 = @input.peek( 1 )

              if ( look_19_0 == WS )
                look_19_1 = @input.peek( 2 )

                if ( syntactic_predicate?( :synpred55_Recipes ) )
                  alt_19 = 1

                end

              end
              case alt_19
              when 1
                # at line 0:0: WS
                match( WS, TOKENS_FOLLOWING_WS_IN_instructions_672 )

              else
                break # out of loop for decision 19
              end
            end # loop for decision 19
            @state.following.push( TOKENS_FOLLOWING_instruction_IN_instructions_675 )
            instruction12 = instruction
            @state.following.pop
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               ilist.push ( instruction12.nil? ? nil : instruction12.value ) 
              # <-- action
            end
            match( STOP, TOKENS_FOLLOWING_STOP_IN_instructions_679 )
            # at line 140:61: ( WS )*
            while true # decision 20
              alt_20 = 2
              alt_20 = @dfa20.predict( @input )
              case alt_20
              when 1
                # at line 0:0: WS
                match( WS, TOKENS_FOLLOWING_WS_IN_instructions_681 )

              else
                break # out of loop for decision 20
              end
            end # loop for decision 20
            # at line 140:65: ( EOL )?
            alt_21 = 2
            alt_21 = @dfa21.predict( @input )
            case alt_21
            when 1
              # at line 0:0: EOL
              match( EOL, TOKENS_FOLLOWING_EOL_IN_instructions_684 )

            end

          else
            match_count_22 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(22)


            raise eee
          end
          match_count_22 += 1
        end

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ilist 
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )
        memoize( __method__, instructions_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end

    InstructionReturnValue = define_return_scope :value

    # 
    # parser rule instruction
    # 
    # (in Recipes.g)
    # 144:1: instruction returns [value] : (~ ( STOP | EOL ) )+ ;
    # 
    def instruction
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      return_value = InstructionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      instruction_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return return_value
        end
        # at line 145:5: (~ ( STOP | EOL ) )+
        # at file 145:5: (~ ( STOP | EOL ) )+
        match_count_23 = 0
        while true
          alt_23 = 2
          look_23_0 = @input.peek( 1 )

          if ( look_23_0.between?( WS, DIGIT ) || look_23_0.between?( LETTER, T__43 ) )
            alt_23 = 1

          end
          case alt_23
          when 1
            # at line 145:6: ~ ( STOP | EOL )
            if @input.peek( 1 ).between?( WS, DIGIT ) || @input.peek( 1 ).between?( LETTER, T__43 )
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              mse = MismatchedSet( nil )
              raise mse
            end



          else
            match_count_23 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(23)


            raise eee
          end
          match_count_23 += 1
        end

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           return_value.value =  @input.to_s( return_value.start, @input.look( -1 ) ) 
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
        # trace_out( __method__, 9 )
        memoize( __method__, instruction_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end


    # 
    # parser rule ingredientheader
    # 
    # (in Recipes.g)
    # 148:1: ingredientheader : ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'S' | 's' ) STOP ;
    # 
    def ingredientheader
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      ingredientheader_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 149:5: ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'S' | 's' ) STOP
        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__26, T__27 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__28, T__29 )
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


        if @input.peek( 1 ).between?( T__12, T__13 )
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


        if @input.peek( 1 ).between?( T__24, T__25 )
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


        if @input.peek( 1 ).between?( T__26, T__27 )
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


        if @input.peek( 1 ).between?( T__10, T__11 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        match( STOP, TOKENS_FOLLOWING_STOP_IN_ingredientheader_819 )

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )
        memoize( __method__, ingredientheader_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule ingredientlist
    # 
    # (in Recipes.g)
    # 163:1: ingredientlist returns [value] : ingredientheader EOL ( ingredient )+ ;
    # 
    def ingredientlist
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      value = nil
      ingredientlist_start_index = @input.index
      ingredient13 = nil
      # - - - - @init action - - - -

            ilist = []
        

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 168:3: ingredientheader EOL ( ingredient )+
        @state.following.push( TOKENS_FOLLOWING_ingredientheader_IN_ingredientlist_845 )
        ingredientheader
        @state.following.pop
        match( EOL, TOKENS_FOLLOWING_EOL_IN_ingredientlist_849 )
        # at file 170:3: ( ingredient )+
        match_count_24 = 0
        while true
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0.between?( WS, T__43 ) )
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 170:4: ingredient
            @state.following.push( TOKENS_FOLLOWING_ingredient_IN_ingredientlist_854 )
            ingredient13 = ingredient
            @state.following.pop
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
               ilist.push ingredient13 
              # <-- action
            end

          else
            match_count_24 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(24)


            raise eee
          end
          match_count_24 += 1
        end

        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ilist 
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )
        memoize( __method__, ingredientlist_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule ingredient
    # 
    # (in Recipes.g)
    # 174:1: ingredient returns [value] : line EOL ;
    # 
    def ingredient
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      value = nil
      ingredient_start_index = @input.index
      line14 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 174:29: line EOL
        @state.following.push( TOKENS_FOLLOWING_line_IN_ingredient_876 )
        line14 = line
        @state.following.pop
        match( EOL, TOKENS_FOLLOWING_EOL_IN_ingredient_878 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ( line14.nil? ? nil : line14.value ) 
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )
        memoize( __method__, ingredient_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule title
    # 
    # (in Recipes.g)
    # 176:1: title returns [value] : lineorstop STOP EOL ;
    # 
    def title
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )
      value = nil
      title_start_index = @input.index
      lineorstop15 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 177:5: lineorstop STOP EOL
        @state.following.push( TOKENS_FOLLOWING_lineorstop_IN_title_894 )
        lineorstop15 = lineorstop
        @state.following.pop
        match( STOP, TOKENS_FOLLOWING_STOP_IN_title_896 )
        match( EOL, TOKENS_FOLLOWING_EOL_IN_title_898 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ( lineorstop15 && @input.to_s( lineorstop15.start, lineorstop15.stop ) ) 
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )
        memoize( __method__, title_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule description
    # 
    # (in Recipes.g)
    # 180:1: description returns [value] : line EOL ;
    # 
    def description
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )
      value = nil
      description_start_index = @input.index
      line16 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 181:5: line EOL
        @state.following.push( TOKENS_FOLLOWING_line_IN_description_917 )
        line16 = line
        @state.following.pop
        match( EOL, TOKENS_FOLLOWING_EOL_IN_description_919 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           value = ( line16.nil? ? nil : line16.value ) 
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )
        memoize( __method__, description_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end

    LineorstopReturnValue = define_return_scope :value

    # 
    # parser rule lineorstop
    # 
    # (in Recipes.g)
    # 184:1: lineorstop returns [value] : (~ ( STOP | EOL ) )+ ;
    # 
    def lineorstop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      return_value = LineorstopReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      lineorstop_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return return_value
        end
        # at line 185:5: (~ ( STOP | EOL ) )+
        # at file 185:5: (~ ( STOP | EOL ) )+
        match_count_25 = 0
        while true
          alt_25 = 2
          look_25_0 = @input.peek( 1 )

          if ( look_25_0.between?( WS, DIGIT ) || look_25_0.between?( LETTER, T__43 ) )
            alt_25 = 1

          end
          case alt_25
          when 1
            # at line 185:6: ~ ( STOP | EOL )
            if @input.peek( 1 ).between?( WS, DIGIT ) || @input.peek( 1 ).between?( LETTER, T__43 )
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              mse = MismatchedSet( nil )
              raise mse
            end



          else
            match_count_25 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(25)


            raise eee
          end
          match_count_25 += 1
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
        # trace_out( __method__, 15 )
        memoize( __method__, lineorstop_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end

    LineReturnValue = define_return_scope :value

    # 
    # parser rule line
    # 
    # (in Recipes.g)
    # 188:1: line returns [value] : (~ EOL )+ ;
    # 
    def line
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      return_value = LineReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      line_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return return_value
        end
        # at line 189:5: (~ EOL )+
        # at file 189:5: (~ EOL )+
        match_count_26 = 0
        while true
          alt_26 = 2
          look_26_0 = @input.peek( 1 )

          if ( look_26_0.between?( WS, T__43 ) )
            alt_26 = 1

          end
          case alt_26
          when 1
            # at line 189:6: ~ EOL
            if @input.peek( 1 ).between?( WS, T__43 )
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              mse = MismatchedSet( nil )
              raise mse
            end



          else
            match_count_26 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(26)


            raise eee
          end
          match_count_26 += 1
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
        # trace_out( __method__, 16 )
        memoize( __method__, line_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end

    # 
    # syntactic predicate synpred2_Recipes
    # 
    # (in Recipes.g)
    # 41:5: synpred2_Recipes : recipe ( EOL )+ EOF ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred2_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      # at line 41:5: recipe ( EOL )+ EOF
      @state.following.push( TOKENS_FOLLOWING_recipe_IN_synpred2_Recipes_97 )
      recipe
      @state.following.pop
      # at file 41:12: ( EOL )+
      match_count_27 = 0
      while true
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == EOL )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 0:0: EOL
          match( EOL, TOKENS_FOLLOWING_EOL_IN_synpred2_Recipes_99 )

        else
          match_count_27 > 0 and break
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          eee = EarlyExit(27)


          raise eee
        end
        match_count_27 += 1
      end

      match( EOF, TOKENS_FOLLOWING_EOF_IN_synpred2_Recipes_102 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end
    # 
    # syntactic predicate synpred9_Recipes
    # 
    # (in Recipes.g)
    # 73:51: synpred9_Recipes : EOL ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred9_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      # at line 73:51: EOL
      match( EOL, TOKENS_FOLLOWING_EOL_IN_synpred9_Recipes_219 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end
    # 
    # syntactic predicate synpred10_Recipes
    # 
    # (in Recipes.g)
    # 73:4: synpred10_Recipes : ( EOL )+ serves ( EOL )? ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred10_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      # at line 73:4: ( EOL )+ serves ( EOL )?
      # at file 73:4: ( EOL )+
      match_count_29 = 0
      while true
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == EOL )
          alt_29 = 1

        end
        case alt_29
        when 1
          # at line 0:0: EOL
          match( EOL, TOKENS_FOLLOWING_EOL_IN_synpred10_Recipes_212 )

        else
          match_count_29 > 0 and break
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          eee = EarlyExit(29)


          raise eee
        end
        match_count_29 += 1
      end

      @state.following.push( TOKENS_FOLLOWING_serves_IN_synpred10_Recipes_215 )
      serves
      @state.following.pop
      # at line 73:51: ( EOL )?
      alt_30 = 2
      look_30_0 = @input.peek( 1 )

      if ( look_30_0 == EOL )
        alt_30 = 1
      end
      case alt_30
      when 1
        # at line 0:0: EOL
        match( EOL, TOKENS_FOLLOWING_EOL_IN_synpred10_Recipes_219 )

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end
    # 
    # syntactic predicate synpred32_Recipes
    # 
    # (in Recipes.g)
    # 102:17: synpred32_Recipes : WS ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred32_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )

      # at line 102:17: WS
      match( WS, TOKENS_FOLLOWING_WS_IN_synpred32_Recipes_431 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )

    end
    # 
    # syntactic predicate synpred48_Recipes
    # 
    # (in Recipes.g)
    # 122:3: synpred48_Recipes : WS ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred48_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 64 )

      # at line 122:3: WS
      match( WS, TOKENS_FOLLOWING_WS_IN_synpred48_Recipes_575 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 64 )

    end
    # 
    # syntactic predicate synpred55_Recipes
    # 
    # (in Recipes.g)
    # 140:6: synpred55_Recipes : WS ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred55_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 71 )

      # at line 140:6: WS
      match( WS, TOKENS_FOLLOWING_WS_IN_synpred55_Recipes_672 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 71 )

    end
    # 
    # syntactic predicate synpred56_Recipes
    # 
    # (in Recipes.g)
    # 140:61: synpred56_Recipes : WS ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred56_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 72 )

      # at line 140:61: WS
      match( WS, TOKENS_FOLLOWING_WS_IN_synpred56_Recipes_681 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 72 )

    end
    # 
    # syntactic predicate synpred57_Recipes
    # 
    # (in Recipes.g)
    # 140:65: synpred57_Recipes : EOL ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred57_Recipes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 73 )

      # at line 140:65: EOL
      match( EOL, TOKENS_FOLLOWING_EOL_IN_synpred57_Recipes_684 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 73 )

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA5 < ANTLR3::DFA
      EOT = unpack( 40, -1 )
      EOF = unpack( 40, -1 )
      MIN = unpack( 1, 5, 1, 4, 1, -1, 1, 4, 2, -1, 1, 4, 2, -1, 1, 4, 2, 
                    -1, 1, 4, 2, -1, 1, 4, 2, -1, 1, 4, 2, -1, 1, 4, 2, 
                    -1, 1, 4, 2, -1, 1, 4, 2, -1, 1, 4, 2, -1, 1, 4, 2, 
                    -1, 1, 4, 3, -1 )
      MAX = unpack( 2, 43, 1, -1, 1, 43, 2, -1, 1, 43, 2, -1, 1, 43, 2, 
                    -1, 1, 43, 2, -1, 1, 43, 2, -1, 1, 43, 2, -1, 1, 43, 
                    2, -1, 1, 43, 2, -1, 1, 43, 2, -1, 1, 43, 2, -1, 1, 
                    43, 2, -1, 1, 43, 3, -1 )
      ACCEPT = unpack( 2, -1, 1, 1, 35, -1, 1, 2, 1, -1 )
      SPECIAL = unpack( 40, -1 )
      TRANSITION = [
        unpack( 19, 2, 2, 1, 18, 2 ),
        unpack( 22, 2, 2, 3, 16, 2 ),
        unpack(  ),
        unpack( 24, 2, 2, 6, 14, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 2, 2, 9, 28, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 8, 2, 2, 12, 30, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 38, 2, 2, 15 ),
        unpack(  ),
        unpack(  ),
        unpack( 20, 2, 2, 18, 18, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 8, 2, 2, 21, 30, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 22, 2, 2, 24, 16, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 26, 2, 2, 27, 12, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 6, 2, 2, 30, 32, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 3, 2, 1, 33, 36, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 36, 39, 2 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 2, 39, 38 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 5
      

      def description
        <<-'__dfa_description__'.strip!
          68:3: ( description EOL )?
        __dfa_description__
      end
    end
    class DFA20 < ANTLR3::DFA
      EOT = unpack( 11, -1 )
      EOF = unpack( 1, 1, 10, -1 )
      MIN = unpack( 1, 4, 2, -1, 1, 0, 7, -1 )
      MAX = unpack( 1, 43, 2, -1, 1, 0, 7, -1 )
      ACCEPT = unpack( 1, -1, 1, 2, 8, -1, 1, 1 )
      SPECIAL = unpack( 3, -1, 1, 0, 7, -1 )
      TRANSITION = [
        unpack( 1, 1, 1, 3, 1, 1, 1, -1, 36, 1 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 20
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 140:61: ( WS )*
        __dfa_description__
      end
    end
    class DFA21 < ANTLR3::DFA
      EOT = unpack( 11, -1 )
      EOF = unpack( 1, 2, 10, -1 )
      MIN = unpack( 1, 4, 1, 0, 9, -1 )
      MAX = unpack( 1, 43, 1, 0, 9, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 7, -1, 1, 1 )
      SPECIAL = unpack( 1, -1, 1, 0, 9, -1 )
      TRANSITION = [
        unpack( 1, 1, 2, 2, 1, -1, 36, 2 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 21
      

      def description
        <<-'__dfa_description__'.strip!
          140:65: ( EOL )?
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa5 = DFA5.new( self, 5 )
      @dfa20 = DFA20.new( self, 20 ) do |s|
        case s
        when 0
          look_20_3 = @input.peek
          index_20_3 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred56_Recipes ) )
            s = 10
          elsif ( true )
            s = 1
          end
           
          @input.seek( index_20_3 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa20.description, 20, s, input )
          @dfa20.error( nva )
          raise nva
        end
        
        s
      end
      @dfa21 = DFA21.new( self, 21 ) do |s|
        case s
        when 0
          look_21_1 = @input.peek
          index_21_1 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred57_Recipes ) )
            s = 10
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_21_1 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa21.description, 21, s, input )
          @dfa21.error( nva )
          raise nva
        end
        
        s
      end

    end
    TOKENS_FOLLOWING_recipe_IN_recipes_97 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipes_99 = Set[ 4 ]
    TOKENS_FOLLOWING_EOF_IN_recipes_102 = Set[ 1 ]
    TOKENS_FOLLOWING_recipe_IN_recipes_112 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipes_117 = Set[ 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_recipe_IN_recipes_122 = Set[ 4 ]
    TOKENS_FOLLOWING_EOF_IN_recipes_126 = Set[ 1 ]
    TOKENS_FOLLOWING_title_IN_recipe_156 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipe_158 = Set[ 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_description_IN_recipe_165 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipe_167 = Set[ 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_ingredientlist_IN_recipe_175 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipe_179 = Set[ 18, 19, 32, 33, 35, 36 ]
    TOKENS_FOLLOWING_cooktime_IN_recipe_184 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipe_186 = Set[ 18, 19, 32, 33, 35, 36 ]
    TOKENS_FOLLOWING_oventemp_IN_recipe_195 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipe_197 = Set[ 18, 19, 32, 33, 35, 36 ]
    TOKENS_FOLLOWING_method_IN_recipe_205 = Set[ 1, 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipe_212 = Set[ 4, 10, 11 ]
    TOKENS_FOLLOWING_serves_IN_recipe_215 = Set[ 1, 4 ]
    TOKENS_FOLLOWING_EOL_IN_recipe_219 = Set[ 1 ]
    TOKENS_FOLLOWING_methodheader_IN_method_239 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_method_243 = Set[ 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_instructions_IN_method_247 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_serves_266 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_serves_274 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_serves_282 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_serves_290 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_serves_298 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_serves_306 = Set[ 5 ]
    TOKENS_FOLLOWING_WS_IN_serves_312 = Set[ 5, 6 ]
    TOKENS_FOLLOWING_DIGIT_IN_serves_317 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_STOP_IN_serves_320 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_cooktime_340 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_cooktime_348 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_cooktime_356 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_set_IN_cooktime_364 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_cooktime_372 = Set[ 26, 27 ]
    TOKENS_FOLLOWING_set_IN_cooktime_380 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_cooktime_388 = Set[ 5 ]
    TOKENS_FOLLOWING_WS_IN_cooktime_394 = Set[ 5, 30, 31 ]
    TOKENS_FOLLOWING_set_IN_cooktime_399 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_cooktime_407 = Set[ 32, 33 ]
    TOKENS_FOLLOWING_set_IN_cooktime_415 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_cooktime_423 = Set[ 34 ]
    TOKENS_FOLLOWING_T__34_IN_cooktime_429 = Set[ 5 ]
    TOKENS_FOLLOWING_WS_IN_cooktime_431 = Set[ 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_lineorstop_IN_cooktime_434 = Set[ 7 ]
    TOKENS_FOLLOWING_STOP_IN_cooktime_436 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_cooktime_438 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_oventemp_457 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_oventemp_465 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_oventemp_473 = Set[ 37 ]
    TOKENS_FOLLOWING_T__37_IN_oventemp_481 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_oventemp_485 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_oventemp_493 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_set_IN_oventemp_501 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_oventemp_509 = Set[ 5 ]
    TOKENS_FOLLOWING_WS_IN_oventemp_517 = Set[ 5, 20, 21 ]
    TOKENS_FOLLOWING_set_IN_oventemp_522 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_oventemp_530 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_oventemp_538 = Set[ 26, 27 ]
    TOKENS_FOLLOWING_set_IN_oventemp_546 = Set[ 5 ]
    TOKENS_FOLLOWING_WS_IN_oventemp_554 = Set[ 5, 30, 31 ]
    TOKENS_FOLLOWING_set_IN_oventemp_559 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_oventemp_567 = Set[ 5 ]
    TOKENS_FOLLOWING_WS_IN_oventemp_575 = Set[ 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_lineorstop_IN_oventemp_580 = Set[ 7 ]
    TOKENS_FOLLOWING_STOP_IN_oventemp_582 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_oventemp_584 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_methodheader_599 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_methodheader_607 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_methodheader_615 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_methodheader_623 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_methodheader_631 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_methodheader_639 = Set[ 7 ]
    TOKENS_FOLLOWING_STOP_IN_methodheader_647 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_instructions_672 = Set[ 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_instruction_IN_instructions_675 = Set[ 7 ]
    TOKENS_FOLLOWING_STOP_IN_instructions_679 = Set[ 1, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_WS_IN_instructions_681 = Set[ 1, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_EOL_IN_instructions_684 = Set[ 1, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_set_IN_instruction_709 = Set[ 1, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_731 = Set[ 26, 27 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_739 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_747 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_755 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_763 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_771 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_779 = Set[ 12, 13 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_787 = Set[ 26, 27 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_795 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_803 = Set[ 10, 11 ]
    TOKENS_FOLLOWING_set_IN_ingredientheader_811 = Set[ 7 ]
    TOKENS_FOLLOWING_STOP_IN_ingredientheader_819 = Set[ 1 ]
    TOKENS_FOLLOWING_ingredientheader_IN_ingredientlist_845 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_ingredientlist_849 = Set[ 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_ingredient_IN_ingredientlist_854 = Set[ 1, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_line_IN_ingredient_876 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_ingredient_878 = Set[ 1 ]
    TOKENS_FOLLOWING_lineorstop_IN_title_894 = Set[ 7 ]
    TOKENS_FOLLOWING_STOP_IN_title_896 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_title_898 = Set[ 1 ]
    TOKENS_FOLLOWING_line_IN_description_917 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_description_919 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_lineorstop_939 = Set[ 1, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_set_IN_line_966 = Set[ 1, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_recipe_IN_synpred2_Recipes_97 = Set[ 4 ]
    TOKENS_FOLLOWING_EOL_IN_synpred2_Recipes_99 = Set[ 4 ]
    TOKENS_FOLLOWING_EOF_IN_synpred2_Recipes_102 = Set[ 1 ]
    TOKENS_FOLLOWING_EOL_IN_synpred9_Recipes_219 = Set[ 1 ]
    TOKENS_FOLLOWING_EOL_IN_synpred10_Recipes_212 = Set[ 4, 10, 11 ]
    TOKENS_FOLLOWING_serves_IN_synpred10_Recipes_215 = Set[ 1, 4 ]
    TOKENS_FOLLOWING_EOL_IN_synpred10_Recipes_219 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_synpred32_Recipes_431 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_synpred48_Recipes_575 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_synpred55_Recipes_672 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_synpred56_Recipes_681 = Set[ 1 ]
    TOKENS_FOLLOWING_EOL_IN_synpred57_Recipes_684 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end
# - - - - - - begin action @parser::footer - - - - - -
# Recipes.g


  end

# - - - - - - end action @parser::footer - - - - - - -


