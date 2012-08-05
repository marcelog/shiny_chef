#!/usr/bin/env ruby
#
# Instructions.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Instructions.g
# Generated at: 2012-08-05 19:34:46
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
# Instructions.g


  module ::ShinyChef::Parsers

# - - - - - - end action @parser::header - - - - - - -


module Instructions
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :RD => 9, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :T__25 => 25, :T__24 => 24, :LETTER => 11, :T__23 => 23, 
                   :T__22 => 22, :T__21 => 21, :T__20 => 20, :EOF => -1, 
                   :T__55 => 55, :T__56 => 56, :T__19 => 19, :T__57 => 57, 
                   :T__58 => 58, :EOL => 5, :T__16 => 16, :T__51 => 51, 
                   :T__52 => 52, :T__15 => 15, :T__53 => 53, :T__18 => 18, 
                   :T__54 => 54, :T__17 => 17, :T__12 => 12, :T__14 => 14, 
                   :T__13 => 13, :T__59 => 59, :DIGIT => 6, :T__50 => 50, 
                   :ND => 8, :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                   :T__46 => 46, :T__47 => 47, :T__44 => 44, :TH => 10, 
                   :T__45 => 45, :T__48 => 48, :T__49 => 49, :ST => 7, :T__30 => 30, 
                   :T__31 => 31, :T__32 => 32, :WS => 4, :T__33 => 33, :T__34 => 34, 
                   :T__35 => 35, :T__36 => 36, :T__37 => 37, :T__38 => 38, 
                   :T__39 => 39 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "WS", "EOL", "DIGIT", "ST", "ND", "RD", "TH", "LETTER", 
                    "'P'", "'p'", "'U'", "'u'", "'T'", "'t'", "'O'", "'o'", 
                    "'R'", "'r'", "'L'", "'l'", "'I'", "'i'", "'Q'", "'q'", 
                    "'E'", "'e'", "'F'", "'f'", "'Y'", "'y'", "'N'", "'n'", 
                    "'H'", "'h'", "'S'", "'s'", "'M'", "'m'", "'D'", "'d'", 
                    "'V'", "'v'", "'C'", "'c'", "'A'", "'a'", "'K'", "'k'", 
                    "'B'", "'b'", "'W'", "'w'", "'G'", "'g'", "'X'", "'x'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Instructions

    RULE_METHODS = [ :instruction, :put_ingredient_into_mixing_bowl, :liquefy_mixing_bowl, 
                     :pour_contents_into_baking_dish, :fold_ingredient_into_mixing_bowl, 
                     :clean_the_mixing_bowl, :take_ingredient_from_refrigerator, 
                     :remove_ingredient_from_mixing_bowl, :refrigerate_for_hours, 
                     :add_ingredient_to_mixing_bowl, :serve_with, :set_aside, 
                     :mix_the_mixing_bowl_well, :add_dry_ingredients, :combine_ingredient_into_mixing_bowl, 
                     :divide_ingredient_into_mixing_bowl, :stir_mixing_bowl, 
                     :stir_ingredient_into_the_mixing_bowl, :put, :pour, 
                     :liquefy, :into, :the, :hours, :minutes, :fold, :from, 
                     :remove, :clean, :take, :combine, :divide, :serve, 
                     :with, :refrigerator, :refrigerate, :mixing, :baking, 
                     :dish, :bowl, :until_, :contents, :of, :for_, :to, 
                     :aside, :add, :stir, :set, :mix, :well, :dry, :ingredients, 
                     :text, :num, :ordinal, :synpred24_Instructions, :synpred231_Instructions ].freeze


    include TokenData

    begin
      generated_using( "Instructions.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
      @state.rule_memory = {}


    end

      include ::ShinyChef::Logger

      def recover(args)
        nil
      end

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule instruction
    # 
    # (in Instructions.g)
    # 35:1: instruction returns [value] : ( put_ingredient_into_mixing_bowl | liquefy_mixing_bowl | pour_contents_into_baking_dish | fold_ingredient_into_mixing_bowl | clean_the_mixing_bowl | take_ingredient_from_refrigerator | remove_ingredient_from_mixing_bowl | refrigerate_for_hours | add_ingredient_to_mixing_bowl | serve_with | set_aside | mix_the_mixing_bowl_well | combine_ingredient_into_mixing_bowl | divide_ingredient_into_mixing_bowl | stir_mixing_bowl | stir_ingredient_into_the_mixing_bowl );
    # 
    def instruction
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      value = nil
      instruction_start_index = @input.index
      put_ingredient_into_mixing_bowl1 = nil
      liquefy_mixing_bowl2 = nil
      pour_contents_into_baking_dish3 = nil
      fold_ingredient_into_mixing_bowl4 = nil
      clean_the_mixing_bowl5 = nil
      take_ingredient_from_refrigerator6 = nil
      remove_ingredient_from_mixing_bowl7 = nil
      refrigerate_for_hours8 = nil
      add_ingredient_to_mixing_bowl9 = nil
      serve_with10 = nil
      mix_the_mixing_bowl_well11 = nil
      combine_ingredient_into_mixing_bowl12 = nil
      stir_mixing_bowl13 = nil
      stir_ingredient_into_the_mixing_bowl14 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 36:3: ( put_ingredient_into_mixing_bowl | liquefy_mixing_bowl | pour_contents_into_baking_dish | fold_ingredient_into_mixing_bowl | clean_the_mixing_bowl | take_ingredient_from_refrigerator | remove_ingredient_from_mixing_bowl | refrigerate_for_hours | add_ingredient_to_mixing_bowl | serve_with | set_aside | mix_the_mixing_bowl_well | combine_ingredient_into_mixing_bowl | divide_ingredient_into_mixing_bowl | stir_mixing_bowl | stir_ingredient_into_the_mixing_bowl )
        alt_1 = 16
        alt_1 = @dfa1.predict( @input )
        case alt_1
        when 1
          # at line 36:5: put_ingredient_into_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_put_ingredient_into_mixing_bowl_IN_instruction_83 )
          put_ingredient_into_mixing_bowl1 = put_ingredient_into_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = put_ingredient_into_mixing_bowl1
              
            # <-- action
          end

        when 2
          # at line 39:5: liquefy_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_liquefy_mixing_bowl_IN_instruction_91 )
          liquefy_mixing_bowl2 = liquefy_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = liquefy_mixing_bowl2
              
            # <-- action
          end

        when 3
          # at line 42:5: pour_contents_into_baking_dish
          @state.following.push( TOKENS_FOLLOWING_pour_contents_into_baking_dish_IN_instruction_99 )
          pour_contents_into_baking_dish3 = pour_contents_into_baking_dish
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = pour_contents_into_baking_dish3
              
            # <-- action
          end

        when 4
          # at line 45:5: fold_ingredient_into_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_fold_ingredient_into_mixing_bowl_IN_instruction_107 )
          fold_ingredient_into_mixing_bowl4 = fold_ingredient_into_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = fold_ingredient_into_mixing_bowl4
              
            # <-- action
          end

        when 5
          # at line 48:5: clean_the_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_clean_the_mixing_bowl_IN_instruction_115 )
          clean_the_mixing_bowl5 = clean_the_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = clean_the_mixing_bowl5
              
            # <-- action
          end

        when 6
          # at line 51:5: take_ingredient_from_refrigerator
          @state.following.push( TOKENS_FOLLOWING_take_ingredient_from_refrigerator_IN_instruction_123 )
          take_ingredient_from_refrigerator6 = take_ingredient_from_refrigerator
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = take_ingredient_from_refrigerator6
              
            # <-- action
          end

        when 7
          # at line 54:5: remove_ingredient_from_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_remove_ingredient_from_mixing_bowl_IN_instruction_131 )
          remove_ingredient_from_mixing_bowl7 = remove_ingredient_from_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = remove_ingredient_from_mixing_bowl7
              
            # <-- action
          end

        when 8
          # at line 57:5: refrigerate_for_hours
          @state.following.push( TOKENS_FOLLOWING_refrigerate_for_hours_IN_instruction_139 )
          refrigerate_for_hours8 = refrigerate_for_hours
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = refrigerate_for_hours8
              
            # <-- action
          end

        when 9
          # at line 60:5: add_ingredient_to_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_add_ingredient_to_mixing_bowl_IN_instruction_147 )
          add_ingredient_to_mixing_bowl9 = add_ingredient_to_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = add_ingredient_to_mixing_bowl9
              
            # <-- action
          end

        when 10
          # at line 63:5: serve_with
          @state.following.push( TOKENS_FOLLOWING_serve_with_IN_instruction_155 )
          serve_with10 = serve_with
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = serve_with10
              
            # <-- action
          end

        when 11
          # at line 66:5: set_aside
          @state.following.push( TOKENS_FOLLOWING_set_aside_IN_instruction_163 )
          set_aside
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = $serve_with.value
              
            # <-- action
          end

        when 12
          # at line 69:5: mix_the_mixing_bowl_well
          @state.following.push( TOKENS_FOLLOWING_mix_the_mixing_bowl_well_IN_instruction_171 )
          mix_the_mixing_bowl_well11 = mix_the_mixing_bowl_well
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = mix_the_mixing_bowl_well11
              
            # <-- action
          end

        when 13
          # at line 72:5: combine_ingredient_into_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_combine_ingredient_into_mixing_bowl_IN_instruction_179 )
          combine_ingredient_into_mixing_bowl12 = combine_ingredient_into_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = combine_ingredient_into_mixing_bowl12
              
            # <-- action
          end

        when 14
          # at line 75:5: divide_ingredient_into_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_divide_ingredient_into_mixing_bowl_IN_instruction_187 )
          divide_ingredient_into_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = $stir_ingredient_into_the_mixing_bowl.value
              
            # <-- action
          end

        when 15
          # at line 78:5: stir_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_stir_mixing_bowl_IN_instruction_195 )
          stir_mixing_bowl13 = stir_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = stir_mixing_bowl13
              
            # <-- action
          end

        when 16
          # at line 81:5: stir_ingredient_into_the_mixing_bowl
          @state.following.push( TOKENS_FOLLOWING_stir_ingredient_into_the_mixing_bowl_IN_instruction_203 )
          stir_ingredient_into_the_mixing_bowl14 = stir_ingredient_into_the_mixing_bowl
          @state.following.pop
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = stir_ingredient_into_the_mixing_bowl14
              
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
        memoize( __method__, instruction_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule put_ingredient_into_mixing_bowl
    # 
    # (in Instructions.g)
    # 106:1: put_ingredient_into_mixing_bowl returns [value] : put WS text WS into ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF ;
    # 
    def put_ingredient_into_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      value = nil
      put_ingredient_into_mixing_bowl_start_index = @input.index
      text15 = nil
      ordinal16 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 107:5: put WS text WS into ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF
        @state.following.push( TOKENS_FOLLOWING_put_IN_put_ingredient_into_mixing_bowl_229 )
        put
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_231 )
        @state.following.push( TOKENS_FOLLOWING_text_IN_put_ingredient_into_mixing_bowl_233 )
        text15 = text
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_235 )
        @state.following.push( TOKENS_FOLLOWING_into_IN_put_ingredient_into_mixing_bowl_237 )
        into
        @state.following.pop
        # at line 107:25: ( WS the )?
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == WS )
          look_2_1 = @input.peek( 2 )

          if ( look_2_1.between?( T__16, T__17 ) )
            alt_2 = 1
          end
        end
        case alt_2
        when 1
          # at line 107:26: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_240 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_put_ingredient_into_mixing_bowl_242 )
          the
          @state.following.pop

        end
        # at line 107:35: ( WS ordinal )?
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == WS )
          look_3_1 = @input.peek( 2 )

          if ( look_3_1.between?( ST, TH ) )
            alt_3 = 1
          end
        end
        case alt_3
        when 1
          # at line 107:36: WS ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_247 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_put_ingredient_into_mixing_bowl_249 )
          ordinal16 = ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_253 )
        @state.following.push( TOKENS_FOLLOWING_mixing_IN_put_ingredient_into_mixing_bowl_255 )
        mixing
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_257 )
        @state.following.push( TOKENS_FOLLOWING_bowl_IN_put_ingredient_into_mixing_bowl_259 )
        bowl
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_put_ingredient_into_mixing_bowl_261 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :put_ingredient_into_mixing_bowl,
                :args => {:ingredient => ( text15.nil? ? nil : text15.value ), :mixing_bowl => ordinal16.to_i}
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
        memoize( __method__, put_ingredient_into_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule liquefy_mixing_bowl
    # 
    # (in Instructions.g)
    # 114:1: liquefy_mixing_bowl returns [value] : liquefy WS contents WS of ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF ;
    # 
    def liquefy_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      value = nil
      liquefy_mixing_bowl_start_index = @input.index
      ordinal17 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 115:5: liquefy WS contents WS of ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF
        @state.following.push( TOKENS_FOLLOWING_liquefy_IN_liquefy_mixing_bowl_277 )
        liquefy
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_279 )
        @state.following.push( TOKENS_FOLLOWING_contents_IN_liquefy_mixing_bowl_281 )
        contents
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_283 )
        @state.following.push( TOKENS_FOLLOWING_of_IN_liquefy_mixing_bowl_285 )
        of
        @state.following.pop
        # at line 115:31: ( WS the )?
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == WS )
          look_4_1 = @input.peek( 2 )

          if ( look_4_1.between?( T__16, T__17 ) )
            alt_4 = 1
          end
        end
        case alt_4
        when 1
          # at line 115:32: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_288 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_liquefy_mixing_bowl_290 )
          the
          @state.following.pop

        end
        # at line 115:41: ( WS ordinal )?
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == WS )
          look_5_1 = @input.peek( 2 )

          if ( look_5_1.between?( ST, TH ) )
            alt_5 = 1
          end
        end
        case alt_5
        when 1
          # at line 115:42: WS ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_295 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_liquefy_mixing_bowl_297 )
          ordinal17 = ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_301 )
        @state.following.push( TOKENS_FOLLOWING_mixing_IN_liquefy_mixing_bowl_303 )
        mixing
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_305 )
        @state.following.push( TOKENS_FOLLOWING_bowl_IN_liquefy_mixing_bowl_307 )
        bowl
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_liquefy_mixing_bowl_309 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :liquefy_mixing_bowl,
                :args => {:mixing_bowl => ordinal17.to_i}
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
        memoize( __method__, liquefy_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule pour_contents_into_baking_dish
    # 
    # (in Instructions.g)
    # 122:1: pour_contents_into_baking_dish returns [value] : pour WS contents WS of ( WS the )? ( WS b= ordinal )? WS mixing WS bowl WS into ( WS the )? ( WS d= ordinal )? WS baking WS dish EOF ;
    # 
    def pour_contents_into_baking_dish
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      value = nil
      pour_contents_into_baking_dish_start_index = @input.index
      b = nil
      d = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 123:5: pour WS contents WS of ( WS the )? ( WS b= ordinal )? WS mixing WS bowl WS into ( WS the )? ( WS d= ordinal )? WS baking WS dish EOF
        @state.following.push( TOKENS_FOLLOWING_pour_IN_pour_contents_into_baking_dish_325 )
        pour
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_327 )
        @state.following.push( TOKENS_FOLLOWING_contents_IN_pour_contents_into_baking_dish_329 )
        contents
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_331 )
        @state.following.push( TOKENS_FOLLOWING_of_IN_pour_contents_into_baking_dish_333 )
        of
        @state.following.pop
        # at line 123:28: ( WS the )?
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == WS )
          look_6_1 = @input.peek( 2 )

          if ( look_6_1.between?( T__16, T__17 ) )
            alt_6 = 1
          end
        end
        case alt_6
        when 1
          # at line 123:29: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_336 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_pour_contents_into_baking_dish_338 )
          the
          @state.following.pop

        end
        # at line 123:38: ( WS b= ordinal )?
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == WS )
          look_7_1 = @input.peek( 2 )

          if ( look_7_1.between?( ST, TH ) )
            alt_7 = 1
          end
        end
        case alt_7
        when 1
          # at line 123:39: WS b= ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_343 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_pour_contents_into_baking_dish_347 )
          b = ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_351 )
        @state.following.push( TOKENS_FOLLOWING_mixing_IN_pour_contents_into_baking_dish_353 )
        mixing
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_355 )
        @state.following.push( TOKENS_FOLLOWING_bowl_IN_pour_contents_into_baking_dish_357 )
        bowl
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_359 )
        @state.following.push( TOKENS_FOLLOWING_into_IN_pour_contents_into_baking_dish_365 )
        into
        @state.following.pop
        # at line 124:10: ( WS the )?
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == WS )
          look_8_1 = @input.peek( 2 )

          if ( look_8_1.between?( T__16, T__17 ) )
            alt_8 = 1
          end
        end
        case alt_8
        when 1
          # at line 124:11: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_368 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_pour_contents_into_baking_dish_370 )
          the
          @state.following.pop

        end
        # at line 124:20: ( WS d= ordinal )?
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == WS )
          look_9_1 = @input.peek( 2 )

          if ( look_9_1.between?( ST, TH ) )
            alt_9 = 1
          end
        end
        case alt_9
        when 1
          # at line 124:21: WS d= ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_375 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_pour_contents_into_baking_dish_379 )
          d = ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_383 )
        @state.following.push( TOKENS_FOLLOWING_baking_IN_pour_contents_into_baking_dish_385 )
        baking
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_387 )
        @state.following.push( TOKENS_FOLLOWING_dish_IN_pour_contents_into_baking_dish_389 )
        dish
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_pour_contents_into_baking_dish_391 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :pour_contents_into_baking_dish,
                :args => {:mixing_bowl => b.to_i, :baking_dish => d.to_i}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )
        memoize( __method__, pour_contents_into_baking_dish_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule fold_ingredient_into_mixing_bowl
    # 
    # (in Instructions.g)
    # 131:1: fold_ingredient_into_mixing_bowl returns [value] : fold ( WS the )? WS text WS into ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF ;
    # 
    def fold_ingredient_into_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      value = nil
      fold_ingredient_into_mixing_bowl_start_index = @input.index
      text18 = nil
      ordinal19 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 132:5: fold ( WS the )? WS text WS into ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF
        @state.following.push( TOKENS_FOLLOWING_fold_IN_fold_ingredient_into_mixing_bowl_407 )
        fold
        @state.following.pop
        # at line 132:10: ( WS the )?
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == WS )
          look_10_1 = @input.peek( 2 )

          if ( look_10_1.between?( T__16, T__17 ) )
            look_10_2 = @input.peek( 3 )

            if ( look_10_2.between?( T__36, T__37 ) )
              look_10_4 = @input.peek( 4 )

              if ( look_10_4.between?( T__28, T__29 ) )
                look_10_5 = @input.peek( 5 )

                if ( look_10_5 == WS )
                  look_10_6 = @input.peek( 6 )

                  if ( syntactic_predicate?( :synpred24_Instructions ) )
                    alt_10 = 1
                  end
                end
              end
            end
          end
        end
        case alt_10
        when 1
          # at line 132:11: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_410 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_fold_ingredient_into_mixing_bowl_412 )
          the
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_416 )
        @state.following.push( TOKENS_FOLLOWING_text_IN_fold_ingredient_into_mixing_bowl_418 )
        text18 = text
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_420 )
        @state.following.push( TOKENS_FOLLOWING_into_IN_fold_ingredient_into_mixing_bowl_422 )
        into
        @state.following.pop
        # at line 132:36: ( WS the )?
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == WS )
          look_11_1 = @input.peek( 2 )

          if ( look_11_1.between?( T__16, T__17 ) )
            alt_11 = 1
          end
        end
        case alt_11
        when 1
          # at line 132:37: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_425 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_fold_ingredient_into_mixing_bowl_427 )
          the
          @state.following.pop

        end
        # at line 132:46: ( WS ordinal )?
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == WS )
          look_12_1 = @input.peek( 2 )

          if ( look_12_1.between?( ST, TH ) )
            alt_12 = 1
          end
        end
        case alt_12
        when 1
          # at line 132:47: WS ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_432 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_fold_ingredient_into_mixing_bowl_434 )
          ordinal19 = ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_438 )
        @state.following.push( TOKENS_FOLLOWING_mixing_IN_fold_ingredient_into_mixing_bowl_440 )
        mixing
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_442 )
        @state.following.push( TOKENS_FOLLOWING_bowl_IN_fold_ingredient_into_mixing_bowl_444 )
        bowl
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_fold_ingredient_into_mixing_bowl_446 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :fold_ingredient_into_mixing_bowl,
                :args => {:ingredient => ( text18.nil? ? nil : text18.value ), :mixing_bowl => ordinal19.to_i}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )
        memoize( __method__, fold_ingredient_into_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule clean_the_mixing_bowl
    # 
    # (in Instructions.g)
    # 139:1: clean_the_mixing_bowl returns [value] : clean ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF ;
    # 
    def clean_the_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      value = nil
      clean_the_mixing_bowl_start_index = @input.index
      ordinal20 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 140:5: clean ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF
        @state.following.push( TOKENS_FOLLOWING_clean_IN_clean_the_mixing_bowl_462 )
        clean
        @state.following.pop
        # at line 140:11: ( WS the )?
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == WS )
          look_13_1 = @input.peek( 2 )

          if ( look_13_1.between?( T__16, T__17 ) )
            alt_13 = 1
          end
        end
        case alt_13
        when 1
          # at line 140:12: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_465 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_clean_the_mixing_bowl_467 )
          the
          @state.following.pop

        end
        # at line 140:21: ( WS ordinal )?
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == WS )
          look_14_1 = @input.peek( 2 )

          if ( look_14_1.between?( ST, TH ) )
            alt_14 = 1
          end
        end
        case alt_14
        when 1
          # at line 140:22: WS ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_472 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_clean_the_mixing_bowl_474 )
          ordinal20 = ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_478 )
        @state.following.push( TOKENS_FOLLOWING_mixing_IN_clean_the_mixing_bowl_480 )
        mixing
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_482 )
        @state.following.push( TOKENS_FOLLOWING_bowl_IN_clean_the_mixing_bowl_484 )
        bowl
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_clean_the_mixing_bowl_486 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :clean_the_mixing_bowl,
                :args => {:mixing_bowl => ordinal20.to_i}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )
        memoize( __method__, clean_the_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule take_ingredient_from_refrigerator
    # 
    # (in Instructions.g)
    # 147:1: take_ingredient_from_refrigerator returns [value] : take WS text WS from WS refrigerator EOF ;
    # 
    def take_ingredient_from_refrigerator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      value = nil
      take_ingredient_from_refrigerator_start_index = @input.index
      text21 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 148:5: take WS text WS from WS refrigerator EOF
        @state.following.push( TOKENS_FOLLOWING_take_IN_take_ingredient_from_refrigerator_502 )
        take
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_take_ingredient_from_refrigerator_504 )
        @state.following.push( TOKENS_FOLLOWING_text_IN_take_ingredient_from_refrigerator_506 )
        text21 = text
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_take_ingredient_from_refrigerator_508 )
        @state.following.push( TOKENS_FOLLOWING_from_IN_take_ingredient_from_refrigerator_510 )
        from
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_take_ingredient_from_refrigerator_512 )
        @state.following.push( TOKENS_FOLLOWING_refrigerator_IN_take_ingredient_from_refrigerator_514 )
        refrigerator
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_take_ingredient_from_refrigerator_516 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :take_ingredient_from_refrigerator,
                :args => {:ingredient => ( text21.nil? ? nil : text21.value )}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )
        memoize( __method__, take_ingredient_from_refrigerator_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule remove_ingredient_from_mixing_bowl
    # 
    # (in Instructions.g)
    # 155:1: remove_ingredient_from_mixing_bowl returns [value] : remove WS text ( WS from ( WS the )? ( WS ordinal )? WS mixing WS bowl )? EOF ;
    # 
    def remove_ingredient_from_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      value = nil
      remove_ingredient_from_mixing_bowl_start_index = @input.index
      text22 = nil
      ordinal23 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 156:5: remove WS text ( WS from ( WS the )? ( WS ordinal )? WS mixing WS bowl )? EOF
        @state.following.push( TOKENS_FOLLOWING_remove_IN_remove_ingredient_from_mixing_bowl_532 )
        remove
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_534 )
        @state.following.push( TOKENS_FOLLOWING_text_IN_remove_ingredient_from_mixing_bowl_536 )
        text22 = text
        @state.following.pop
        # at line 156:20: ( WS from ( WS the )? ( WS ordinal )? WS mixing WS bowl )?
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == WS )
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 156:21: WS from ( WS the )? ( WS ordinal )? WS mixing WS bowl
          match( WS, TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_539 )
          @state.following.push( TOKENS_FOLLOWING_from_IN_remove_ingredient_from_mixing_bowl_541 )
          from
          @state.following.pop
          # at line 156:29: ( WS the )?
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == WS )
            look_15_1 = @input.peek( 2 )

            if ( look_15_1.between?( T__16, T__17 ) )
              alt_15 = 1
            end
          end
          case alt_15
          when 1
            # at line 156:30: WS the
            match( WS, TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_544 )
            @state.following.push( TOKENS_FOLLOWING_the_IN_remove_ingredient_from_mixing_bowl_546 )
            the
            @state.following.pop

          end
          # at line 156:39: ( WS ordinal )?
          alt_16 = 2
          look_16_0 = @input.peek( 1 )

          if ( look_16_0 == WS )
            look_16_1 = @input.peek( 2 )

            if ( look_16_1.between?( ST, TH ) )
              alt_16 = 1
            end
          end
          case alt_16
          when 1
            # at line 156:40: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_551 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_remove_ingredient_from_mixing_bowl_553 )
            ordinal23 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_557 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_remove_ingredient_from_mixing_bowl_559 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_561 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_remove_ingredient_from_mixing_bowl_563 )
          bowl
          @state.following.pop

        end
        match( EOF, TOKENS_FOLLOWING_EOF_IN_remove_ingredient_from_mixing_bowl_567 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :remove_ingredient_from_mixing_bowl,
                :args => {:ingredient => ( text22.nil? ? nil : text22.value ), :mixing_bowl => ordinal23.to_i}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )
        memoize( __method__, remove_ingredient_from_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule refrigerate_for_hours
    # 
    # (in Instructions.g)
    # 163:1: refrigerate_for_hours returns [value] : refrigerate ( WS for_ WS num WS hours )? EOF ;
    # 
    def refrigerate_for_hours
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      value = nil
      refrigerate_for_hours_start_index = @input.index
      num24 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 164:5: refrigerate ( WS for_ WS num WS hours )? EOF
        @state.following.push( TOKENS_FOLLOWING_refrigerate_IN_refrigerate_for_hours_583 )
        refrigerate
        @state.following.pop
        # at line 164:17: ( WS for_ WS num WS hours )?
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == WS )
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 164:18: WS for_ WS num WS hours
          match( WS, TOKENS_FOLLOWING_WS_IN_refrigerate_for_hours_586 )
          @state.following.push( TOKENS_FOLLOWING_for__IN_refrigerate_for_hours_588 )
          for_
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_refrigerate_for_hours_590 )
          @state.following.push( TOKENS_FOLLOWING_num_IN_refrigerate_for_hours_592 )
          num24 = num
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_refrigerate_for_hours_594 )
          @state.following.push( TOKENS_FOLLOWING_hours_IN_refrigerate_for_hours_596 )
          hours
          @state.following.pop

        end
        match( EOF, TOKENS_FOLLOWING_EOF_IN_refrigerate_for_hours_600 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :refrigerate_for_hours,
                :args => {:hours => ( num24.nil? ? nil : num24.value ).to_i}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )
        memoize( __method__, refrigerate_for_hours_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule add_ingredient_to_mixing_bowl
    # 
    # (in Instructions.g)
    # 171:1: add_ingredient_to_mixing_bowl returns [value] : ( add WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | add WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF );
    # 
    def add_ingredient_to_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      value = nil
      add_ingredient_to_mixing_bowl_start_index = @input.index
      text25 = nil
      ordinal26 = nil
      text27 = nil
      ordinal28 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 172:3: ( add WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | add WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF )
        alt_21 = 2
        alt_21 = @dfa21.predict( @input )
        case alt_21
        when 1
          # at line 172:5: add WS text WS into ( WS ordinal )? WS mixing WS bowl EOF
          @state.following.push( TOKENS_FOLLOWING_add_IN_add_ingredient_to_mixing_bowl_616 )
          add
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_618 )
          @state.following.push( TOKENS_FOLLOWING_text_IN_add_ingredient_to_mixing_bowl_620 )
          text25 = text
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_622 )
          @state.following.push( TOKENS_FOLLOWING_into_IN_add_ingredient_to_mixing_bowl_624 )
          into
          @state.following.pop
          # at line 172:25: ( WS ordinal )?
          alt_19 = 2
          look_19_0 = @input.peek( 1 )

          if ( look_19_0 == WS )
            look_19_1 = @input.peek( 2 )

            if ( look_19_1.between?( ST, TH ) )
              alt_19 = 1
            end
          end
          case alt_19
          when 1
            # at line 172:26: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_627 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_add_ingredient_to_mixing_bowl_629 )
            ordinal26 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_633 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_add_ingredient_to_mixing_bowl_635 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_637 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_add_ingredient_to_mixing_bowl_639 )
          bowl
          @state.following.pop
          match( EOF, TOKENS_FOLLOWING_EOF_IN_add_ingredient_to_mixing_bowl_641 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = {
                  :cmd => :add_ingredient_to_mixing_bowl,
                  :args => {:ingredient => ( text25 && @input.to_s( text25.start, text25.stop ) ), :mixing_bowl => ordinal26.to_i}
                }
              
            # <-- action
          end

        when 2
          # at line 178:5: add WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF
          @state.following.push( TOKENS_FOLLOWING_add_IN_add_ingredient_to_mixing_bowl_649 )
          add
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_651 )
          @state.following.push( TOKENS_FOLLOWING_text_IN_add_ingredient_to_mixing_bowl_653 )
          text27 = text
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_655 )
          @state.following.push( TOKENS_FOLLOWING_into_IN_add_ingredient_to_mixing_bowl_657 )
          into
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_659 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_add_ingredient_to_mixing_bowl_661 )
          the
          @state.following.pop
          # at line 178:32: ( WS ordinal )?
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == WS )
            look_20_1 = @input.peek( 2 )

            if ( look_20_1.between?( ST, TH ) )
              alt_20 = 1
            end
          end
          case alt_20
          when 1
            # at line 178:33: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_664 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_add_ingredient_to_mixing_bowl_666 )
            ordinal28 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_670 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_add_ingredient_to_mixing_bowl_672 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_674 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_add_ingredient_to_mixing_bowl_676 )
          bowl
          @state.following.pop
          match( EOF, TOKENS_FOLLOWING_EOF_IN_add_ingredient_to_mixing_bowl_678 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = {
                  :cmd => :add_ingredient_to_mixing_bowl,
                  :args => {:ingredient => ( text27 && @input.to_s( text27.start, text27.stop ) ), :mixing_bowl => ordinal28.to_i}
                }
              
            # <-- action
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )
        memoize( __method__, add_ingredient_to_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule serve_with
    # 
    # (in Instructions.g)
    # 185:1: serve_with returns [value] : serve WS with WS text EOF ;
    # 
    def serve_with
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      value = nil
      serve_with_start_index = @input.index
      text29 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 186:5: serve WS with WS text EOF
        @state.following.push( TOKENS_FOLLOWING_serve_IN_serve_with_694 )
        serve
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_serve_with_696 )
        @state.following.push( TOKENS_FOLLOWING_with_IN_serve_with_698 )
        with
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_serve_with_700 )
        @state.following.push( TOKENS_FOLLOWING_text_IN_serve_with_702 )
        text29 = text
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_serve_with_704 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :serve_with,
                :args => {:recipe => ( text29 && @input.to_s( text29.start, text29.stop ) )}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )
        memoize( __method__, serve_with_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule set_aside
    # 
    # (in Instructions.g)
    # 193:1: set_aside returns [value] : set WS aside EOF ;
    # 
    def set_aside
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      value = nil
      set_aside_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 194:5: set WS aside EOF
        @state.following.push( TOKENS_FOLLOWING_set_IN_set_aside_720 )
        set
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_set_aside_722 )
        @state.following.push( TOKENS_FOLLOWING_aside_IN_set_aside_724 )
        aside
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_set_aside_726 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :set_aside,
                :args => {}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )
        memoize( __method__, set_aside_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule mix_the_mixing_bowl_well
    # 
    # (in Instructions.g)
    # 201:1: mix_the_mixing_bowl_well returns [value] : mix ( ( WS the )? ( WS ordinal )? WS mixing WS bowl )? WS well EOF ;
    # 
    def mix_the_mixing_bowl_well
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )
      value = nil
      mix_the_mixing_bowl_well_start_index = @input.index
      ordinal30 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 202:5: mix ( ( WS the )? ( WS ordinal )? WS mixing WS bowl )? WS well EOF
        @state.following.push( TOKENS_FOLLOWING_mix_IN_mix_the_mixing_bowl_well_742 )
        mix
        @state.following.pop
        # at line 202:9: ( ( WS the )? ( WS ordinal )? WS mixing WS bowl )?
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == WS )
          look_24_1 = @input.peek( 2 )

          if ( look_24_1.between?( ST, TH ) || look_24_1.between?( T__16, T__17 ) || look_24_1.between?( T__40, T__41 ) )
            alt_24 = 1
          end
        end
        case alt_24
        when 1
          # at line 202:10: ( WS the )? ( WS ordinal )? WS mixing WS bowl
          # at line 202:10: ( WS the )?
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0 == WS )
            look_22_1 = @input.peek( 2 )

            if ( look_22_1.between?( T__16, T__17 ) )
              alt_22 = 1
            end
          end
          case alt_22
          when 1
            # at line 202:11: WS the
            match( WS, TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_746 )
            @state.following.push( TOKENS_FOLLOWING_the_IN_mix_the_mixing_bowl_well_748 )
            the
            @state.following.pop

          end
          # at line 202:20: ( WS ordinal )?
          alt_23 = 2
          look_23_0 = @input.peek( 1 )

          if ( look_23_0 == WS )
            look_23_1 = @input.peek( 2 )

            if ( look_23_1.between?( ST, TH ) )
              alt_23 = 1
            end
          end
          case alt_23
          when 1
            # at line 202:21: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_753 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_mix_the_mixing_bowl_well_755 )
            ordinal30 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_759 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_mix_the_mixing_bowl_well_761 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_763 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_mix_the_mixing_bowl_well_765 )
          bowl
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_769 )
        @state.following.push( TOKENS_FOLLOWING_well_IN_mix_the_mixing_bowl_well_771 )
        well
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_mix_the_mixing_bowl_well_773 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :mix_the_mixing_bowl_well,
                :args => {:mixing_bowl => ordinal30.to_i}
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )
        memoize( __method__, mix_the_mixing_bowl_well_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end

    AddDryIngredientsReturnValue = define_return_scope :value

    # 
    # parser rule add_dry_ingredients
    # 
    # (in Instructions.g)
    # 209:1: add_dry_ingredients returns [value] : add WS dry WS ingredients ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF ;
    # 
    def add_dry_ingredients
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )
      return_value = AddDryIngredientsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      add_dry_ingredients_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return return_value
        end
        # at line 210:5: add WS dry WS ingredients ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF
        @state.following.push( TOKENS_FOLLOWING_add_IN_add_dry_ingredients_789 )
        add
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_791 )
        @state.following.push( TOKENS_FOLLOWING_dry_IN_add_dry_ingredients_793 )
        dry
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_795 )
        @state.following.push( TOKENS_FOLLOWING_ingredients_IN_add_dry_ingredients_797 )
        ingredients
        @state.following.pop
        # at line 210:31: ( WS the )?
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == WS )
          look_25_1 = @input.peek( 2 )

          if ( look_25_1.between?( T__16, T__17 ) )
            alt_25 = 1
          end
        end
        case alt_25
        when 1
          # at line 210:32: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_800 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_add_dry_ingredients_802 )
          the
          @state.following.pop

        end
        # at line 210:41: ( WS ordinal )?
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == WS )
          look_26_1 = @input.peek( 2 )

          if ( look_26_1.between?( ST, TH ) )
            alt_26 = 1
          end
        end
        case alt_26
        when 1
          # at line 210:42: WS ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_807 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_add_dry_ingredients_809 )
          ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_813 )
        @state.following.push( TOKENS_FOLLOWING_mixing_IN_add_dry_ingredients_815 )
        mixing
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_817 )
        @state.following.push( TOKENS_FOLLOWING_bowl_IN_add_dry_ingredients_819 )
        bowl
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_add_dry_ingredients_821 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              return_value.value = {
                :cmd => :liquefy_ingredient,
                :args => {:ingredient => @input.to_s( return_value.start, @input.look( -1 ) ).text}
              }
            
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
        # trace_out( __method__, 14 )
        memoize( __method__, add_dry_ingredients_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end


    # 
    # parser rule combine_ingredient_into_mixing_bowl
    # 
    # (in Instructions.g)
    # 217:1: combine_ingredient_into_mixing_bowl returns [value] : ( combine WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | combine WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF );
    # 
    def combine_ingredient_into_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      value = nil
      combine_ingredient_into_mixing_bowl_start_index = @input.index
      text31 = nil
      ordinal32 = nil
      text33 = nil
      ordinal34 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 218:3: ( combine WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | combine WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF )
        alt_29 = 2
        alt_29 = @dfa29.predict( @input )
        case alt_29
        when 1
          # at line 218:5: combine WS text WS into ( WS ordinal )? WS mixing WS bowl EOF
          @state.following.push( TOKENS_FOLLOWING_combine_IN_combine_ingredient_into_mixing_bowl_837 )
          combine
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_839 )
          @state.following.push( TOKENS_FOLLOWING_text_IN_combine_ingredient_into_mixing_bowl_841 )
          text31 = text
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_843 )
          @state.following.push( TOKENS_FOLLOWING_into_IN_combine_ingredient_into_mixing_bowl_845 )
          into
          @state.following.pop
          # at line 218:29: ( WS ordinal )?
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0 == WS )
            look_27_1 = @input.peek( 2 )

            if ( look_27_1.between?( ST, TH ) )
              alt_27 = 1
            end
          end
          case alt_27
          when 1
            # at line 218:30: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_848 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_combine_ingredient_into_mixing_bowl_850 )
            ordinal32 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_854 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_combine_ingredient_into_mixing_bowl_856 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_858 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_combine_ingredient_into_mixing_bowl_860 )
          bowl
          @state.following.pop
          match( EOF, TOKENS_FOLLOWING_EOF_IN_combine_ingredient_into_mixing_bowl_862 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = {
                  :cmd => :combine_ingredient_into_mixing_bowl,
                  :args => {:ingredient => ( text31 && @input.to_s( text31.start, text31.stop ) ), :mixing_bowl => ordinal32.to_i}
                }
              
            # <-- action
          end

        when 2
          # at line 224:5: combine WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF
          @state.following.push( TOKENS_FOLLOWING_combine_IN_combine_ingredient_into_mixing_bowl_870 )
          combine
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_872 )
          @state.following.push( TOKENS_FOLLOWING_text_IN_combine_ingredient_into_mixing_bowl_874 )
          text33 = text
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_876 )
          @state.following.push( TOKENS_FOLLOWING_into_IN_combine_ingredient_into_mixing_bowl_878 )
          into
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_880 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_combine_ingredient_into_mixing_bowl_882 )
          the
          @state.following.pop
          # at line 224:36: ( WS ordinal )?
          alt_28 = 2
          look_28_0 = @input.peek( 1 )

          if ( look_28_0 == WS )
            look_28_1 = @input.peek( 2 )

            if ( look_28_1.between?( ST, TH ) )
              alt_28 = 1
            end
          end
          case alt_28
          when 1
            # at line 224:37: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_885 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_combine_ingredient_into_mixing_bowl_887 )
            ordinal34 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_891 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_combine_ingredient_into_mixing_bowl_893 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_895 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_combine_ingredient_into_mixing_bowl_897 )
          bowl
          @state.following.pop
          match( EOF, TOKENS_FOLLOWING_EOF_IN_combine_ingredient_into_mixing_bowl_899 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = {
                  :cmd => :combine_ingredient_into_mixing_bowl,
                  :args => {:ingredient => ( text33 && @input.to_s( text33.start, text33.stop ) ), :mixing_bowl => ordinal34.to_i}
                }
              
            # <-- action
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )
        memoize( __method__, combine_ingredient_into_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule divide_ingredient_into_mixing_bowl
    # 
    # (in Instructions.g)
    # 231:1: divide_ingredient_into_mixing_bowl returns [value] : ( divide WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | divide WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF );
    # 
    def divide_ingredient_into_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      value = nil
      divide_ingredient_into_mixing_bowl_start_index = @input.index
      text35 = nil
      ordinal36 = nil
      text37 = nil
      ordinal38 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 232:3: ( divide WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | divide WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF )
        alt_32 = 2
        alt_32 = @dfa32.predict( @input )
        case alt_32
        when 1
          # at line 232:5: divide WS text WS into ( WS ordinal )? WS mixing WS bowl EOF
          @state.following.push( TOKENS_FOLLOWING_divide_IN_divide_ingredient_into_mixing_bowl_915 )
          divide
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_917 )
          @state.following.push( TOKENS_FOLLOWING_text_IN_divide_ingredient_into_mixing_bowl_919 )
          text35 = text
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_921 )
          @state.following.push( TOKENS_FOLLOWING_into_IN_divide_ingredient_into_mixing_bowl_923 )
          into
          @state.following.pop
          # at line 232:28: ( WS ordinal )?
          alt_30 = 2
          look_30_0 = @input.peek( 1 )

          if ( look_30_0 == WS )
            look_30_1 = @input.peek( 2 )

            if ( look_30_1.between?( ST, TH ) )
              alt_30 = 1
            end
          end
          case alt_30
          when 1
            # at line 232:29: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_926 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_divide_ingredient_into_mixing_bowl_928 )
            ordinal36 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_932 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_divide_ingredient_into_mixing_bowl_934 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_936 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_divide_ingredient_into_mixing_bowl_938 )
          bowl
          @state.following.pop
          match( EOF, TOKENS_FOLLOWING_EOF_IN_divide_ingredient_into_mixing_bowl_940 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = {
                  :cmd => :divide_ingredient_into_mixing_bowl,
                  :args => {:ingredient => ( text35 && @input.to_s( text35.start, text35.stop ) ), :mixing_bowl => ordinal36.to_i}
                }
              
            # <-- action
          end

        when 2
          # at line 238:5: divide WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF
          @state.following.push( TOKENS_FOLLOWING_divide_IN_divide_ingredient_into_mixing_bowl_948 )
          divide
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_950 )
          @state.following.push( TOKENS_FOLLOWING_text_IN_divide_ingredient_into_mixing_bowl_952 )
          text37 = text
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_954 )
          @state.following.push( TOKENS_FOLLOWING_into_IN_divide_ingredient_into_mixing_bowl_956 )
          into
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_958 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_divide_ingredient_into_mixing_bowl_960 )
          the
          @state.following.pop
          # at line 238:35: ( WS ordinal )?
          alt_31 = 2
          look_31_0 = @input.peek( 1 )

          if ( look_31_0 == WS )
            look_31_1 = @input.peek( 2 )

            if ( look_31_1.between?( ST, TH ) )
              alt_31 = 1
            end
          end
          case alt_31
          when 1
            # at line 238:36: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_963 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_divide_ingredient_into_mixing_bowl_965 )
            ordinal38 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_969 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_divide_ingredient_into_mixing_bowl_971 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_973 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_divide_ingredient_into_mixing_bowl_975 )
          bowl
          @state.following.pop
          match( EOF, TOKENS_FOLLOWING_EOF_IN_divide_ingredient_into_mixing_bowl_977 )
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

                value = {
                  :cmd => :divide_ingredient_into_mixing_bowl,
                  :args => {:ingredient => ( text37 && @input.to_s( text37.start, text37.stop ) ), :mixing_bowl => ordinal38.to_i}
                }
              
            # <-- action
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )
        memoize( __method__, divide_ingredient_into_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule stir_mixing_bowl
    # 
    # (in Instructions.g)
    # 245:1: stir_mixing_bowl returns [value] : stir ( ( WS the )? ( WS ordinal )? WS mixing WS bowl )? WS for_ WS num WS minutes EOF ;
    # 
    def stir_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )
      value = nil
      stir_mixing_bowl_start_index = @input.index
      ordinal39 = nil
      num40 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 246:5: stir ( ( WS the )? ( WS ordinal )? WS mixing WS bowl )? WS for_ WS num WS minutes EOF
        @state.following.push( TOKENS_FOLLOWING_stir_IN_stir_mixing_bowl_993 )
        stir
        @state.following.pop
        # at line 246:10: ( ( WS the )? ( WS ordinal )? WS mixing WS bowl )?
        alt_35 = 2
        look_35_0 = @input.peek( 1 )

        if ( look_35_0 == WS )
          look_35_1 = @input.peek( 2 )

          if ( look_35_1.between?( ST, TH ) || look_35_1.between?( T__16, T__17 ) || look_35_1.between?( T__40, T__41 ) )
            alt_35 = 1
          end
        end
        case alt_35
        when 1
          # at line 246:11: ( WS the )? ( WS ordinal )? WS mixing WS bowl
          # at line 246:11: ( WS the )?
          alt_33 = 2
          look_33_0 = @input.peek( 1 )

          if ( look_33_0 == WS )
            look_33_1 = @input.peek( 2 )

            if ( look_33_1.between?( T__16, T__17 ) )
              alt_33 = 1
            end
          end
          case alt_33
          when 1
            # at line 246:12: WS the
            match( WS, TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_997 )
            @state.following.push( TOKENS_FOLLOWING_the_IN_stir_mixing_bowl_999 )
            the
            @state.following.pop

          end
          # at line 246:21: ( WS ordinal )?
          alt_34 = 2
          look_34_0 = @input.peek( 1 )

          if ( look_34_0 == WS )
            look_34_1 = @input.peek( 2 )

            if ( look_34_1.between?( ST, TH ) )
              alt_34 = 1
            end
          end
          case alt_34
          when 1
            # at line 246:22: WS ordinal
            match( WS, TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1004 )
            @state.following.push( TOKENS_FOLLOWING_ordinal_IN_stir_mixing_bowl_1006 )
            ordinal39 = ordinal
            @state.following.pop

          end
          match( WS, TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1010 )
          @state.following.push( TOKENS_FOLLOWING_mixing_IN_stir_mixing_bowl_1012 )
          mixing
          @state.following.pop
          match( WS, TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1014 )
          @state.following.push( TOKENS_FOLLOWING_bowl_IN_stir_mixing_bowl_1016 )
          bowl
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1020 )
        @state.following.push( TOKENS_FOLLOWING_for__IN_stir_mixing_bowl_1022 )
        for_
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1024 )
        @state.following.push( TOKENS_FOLLOWING_num_IN_stir_mixing_bowl_1026 )
        num40 = num
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1028 )
        @state.following.push( TOKENS_FOLLOWING_minutes_IN_stir_mixing_bowl_1030 )
        minutes
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_stir_mixing_bowl_1032 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :stir_mixing_bowl,
                :args => {
                  :mixing_bowl => ordinal39.to_i,
                  :minutes => ( num40.nil? ? nil : num40.value )
                }
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )
        memoize( __method__, stir_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule stir_ingredient_into_the_mixing_bowl
    # 
    # (in Instructions.g)
    # 255:1: stir_ingredient_into_the_mixing_bowl returns [value] : stir WS text WS into ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF ;
    # 
    def stir_ingredient_into_the_mixing_bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )
      value = nil
      stir_ingredient_into_the_mixing_bowl_start_index = @input.index
      ordinal41 = nil
      text42 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 256:5: stir WS text WS into ( WS the )? ( WS ordinal )? WS mixing WS bowl EOF
        @state.following.push( TOKENS_FOLLOWING_stir_IN_stir_ingredient_into_the_mixing_bowl_1049 )
        stir
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1051 )
        @state.following.push( TOKENS_FOLLOWING_text_IN_stir_ingredient_into_the_mixing_bowl_1053 )
        text42 = text
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1055 )
        @state.following.push( TOKENS_FOLLOWING_into_IN_stir_ingredient_into_the_mixing_bowl_1057 )
        into
        @state.following.pop
        # at line 256:26: ( WS the )?
        alt_36 = 2
        look_36_0 = @input.peek( 1 )

        if ( look_36_0 == WS )
          look_36_1 = @input.peek( 2 )

          if ( look_36_1.between?( T__16, T__17 ) )
            alt_36 = 1
          end
        end
        case alt_36
        when 1
          # at line 256:27: WS the
          match( WS, TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1060 )
          @state.following.push( TOKENS_FOLLOWING_the_IN_stir_ingredient_into_the_mixing_bowl_1062 )
          the
          @state.following.pop

        end
        # at line 256:36: ( WS ordinal )?
        alt_37 = 2
        look_37_0 = @input.peek( 1 )

        if ( look_37_0 == WS )
          look_37_1 = @input.peek( 2 )

          if ( look_37_1.between?( ST, TH ) )
            alt_37 = 1
          end
        end
        case alt_37
        when 1
          # at line 256:37: WS ordinal
          match( WS, TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1067 )
          @state.following.push( TOKENS_FOLLOWING_ordinal_IN_stir_ingredient_into_the_mixing_bowl_1069 )
          ordinal41 = ordinal
          @state.following.pop

        end
        match( WS, TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1073 )
        @state.following.push( TOKENS_FOLLOWING_mixing_IN_stir_ingredient_into_the_mixing_bowl_1075 )
        mixing
        @state.following.pop
        match( WS, TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1077 )
        @state.following.push( TOKENS_FOLLOWING_bowl_IN_stir_ingredient_into_the_mixing_bowl_1079 )
        bowl
        @state.following.pop
        match( EOF, TOKENS_FOLLOWING_EOF_IN_stir_ingredient_into_the_mixing_bowl_1081 )
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

              value = {
                :cmd => :stir_ingredient_into_the_mixing_bowl,
                :args => {
                  :mixing_bowl => ordinal41.to_i,
                  :ingredient => ( text42.nil? ? nil : text42.value )
                }
              }
            
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )
        memoize( __method__, stir_ingredient_into_the_mixing_bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end


    # 
    # parser rule put
    # 
    # (in Instructions.g)
    # 296:1: put : ( 'P' | 'p' ) ( 'U' | 'u' ) ( 'T' | 't' ) ;
    # 
    def put
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )
      put_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 296:6: ( 'P' | 'p' ) ( 'U' | 'u' ) ( 'T' | 't' )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )
        memoize( __method__, put_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule pour
    # 
    # (in Instructions.g)
    # 297:1: pour : ( 'P' | 'p' ) ( 'O' | 'o' ) ( 'U' | 'u' ) ( 'R' | 'r' ) ;
    # 
    def pour
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )
      pour_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 297:7: ( 'P' | 'p' ) ( 'O' | 'o' ) ( 'U' | 'u' ) ( 'R' | 'r' )
        if @input.peek( 1 ).between?( T__12, T__13 )
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


        if @input.peek( 1 ).between?( T__14, T__15 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )
        memoize( __method__, pour_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule liquefy
    # 
    # (in Instructions.g)
    # 298:1: liquefy : ( 'L' | 'l' ) ( 'I' | 'i' ) ( 'Q' | 'q' ) ( 'U' | 'u' ) ( 'E' | 'e' | 'I' | 'i' ) ( 'F' | 'f' ) ( 'Y' | 'y' ) ;
    # 
    def liquefy
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )
      liquefy_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 299:5: ( 'L' | 'l' ) ( 'I' | 'i' ) ( 'Q' | 'q' ) ( 'U' | 'u' ) ( 'E' | 'e' | 'I' | 'i' ) ( 'F' | 'f' ) ( 'Y' | 'y' )
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


        if @input.peek( 1 ).between?( T__14, T__15 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__24, T__25 ) || @input.peek( 1 ).between?( T__28, T__29 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )
        memoize( __method__, liquefy_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule into
    # 
    # (in Instructions.g)
    # 301:1: into : ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'O' | 'o' ) ;
    # 
    def into
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )
      into_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 301:7: ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'O' | 'o' )
        if @input.peek( 1 ).between?( T__24, T__25 )
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


        if @input.peek( 1 ).between?( T__16, T__17 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )
        memoize( __method__, into_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule the
    # 
    # (in Instructions.g)
    # 302:1: the : ( 'T' | 't' ) ( 'H' | 'h' ) ( 'E' | 'e' ) ;
    # 
    def the
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      the_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 302:6: ( 'T' | 't' ) ( 'H' | 'h' ) ( 'E' | 'e' )
        if @input.peek( 1 ).between?( T__16, T__17 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__36, T__37 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )
        memoize( __method__, the_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule hours
    # 
    # (in Instructions.g)
    # 303:1: hours : ( 'H' | 'h' ) ( 'O' | 'o' ) ( 'U' | 'u' ) ( 'R' | 'r' ) ( 'S' | 's' ) ;
    # 
    def hours
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      hours_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 303:8: ( 'H' | 'h' ) ( 'O' | 'o' ) ( 'U' | 'u' ) ( 'R' | 'r' ) ( 'S' | 's' )
        if @input.peek( 1 ).between?( T__36, T__37 )
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


        if @input.peek( 1 ).between?( T__14, T__15 )
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


        if @input.peek( 1 ).between?( T__38, T__39 )
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
        # trace_out( __method__, 24 )
        memoize( __method__, hours_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule minutes
    # 
    # (in Instructions.g)
    # 304:1: minutes : ( 'M' | 'm' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'U' | 'u' ) ( 'T' | 't' ) ( 'E' | 'e' ) ( 'S' | 's' ) ;
    # 
    def minutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )
      minutes_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 304:10: ( 'M' | 'm' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'U' | 'u' ) ( 'T' | 't' ) ( 'E' | 'e' ) ( 'S' | 's' )
        if @input.peek( 1 ).between?( T__40, T__41 )
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


        if @input.peek( 1 ).between?( T__34, T__35 )
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


        if @input.peek( 1 ).between?( T__28, T__29 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )
        memoize( __method__, minutes_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule fold
    # 
    # (in Instructions.g)
    # 305:1: fold : ( 'F' | 'f' ) ( 'O' | 'o' ) ( 'L' | 'l' ) ( 'D' | 'd' ) ;
    # 
    def fold
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )
      fold_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 305:7: ( 'F' | 'f' ) ( 'O' | 'o' ) ( 'L' | 'l' ) ( 'D' | 'd' )
        if @input.peek( 1 ).between?( T__30, T__31 )
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


        if @input.peek( 1 ).between?( T__22, T__23 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )
        memoize( __method__, fold_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule from
    # 
    # (in Instructions.g)
    # 306:1: from : ( 'F' | 'f' ) ( 'R' | 'r' ) ( 'O' | 'o' ) ( 'M' | 'm' ) ;
    # 
    def from
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )
      from_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 306:7: ( 'F' | 'f' ) ( 'R' | 'r' ) ( 'O' | 'o' ) ( 'M' | 'm' )
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


        if @input.peek( 1 ).between?( T__18, T__19 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )
        memoize( __method__, from_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule remove
    # 
    # (in Instructions.g)
    # 307:1: remove : ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'M' | 'm' ) ( 'O' | 'o' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ;
    # 
    def remove
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )
      remove_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 307:9: ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'M' | 'm' ) ( 'O' | 'o' ) ( 'V' | 'v' ) ( 'E' | 'e' )
        if @input.peek( 1 ).between?( T__20, T__21 )
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


        if @input.peek( 1 ).between?( T__44, T__45 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )
        memoize( __method__, remove_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule clean
    # 
    # (in Instructions.g)
    # 308:1: clean : ( 'C' | 'c' ) ( 'L' | 'l' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'N' | 'n' ) ;
    # 
    def clean
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )
      clean_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 308:8: ( 'C' | 'c' ) ( 'L' | 'l' ) ( 'E' | 'e' ) ( 'A' | 'a' ) ( 'N' | 'n' )
        if @input.peek( 1 ).between?( T__46, T__47 )
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


        if @input.peek( 1 ).between?( T__28, T__29 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__48, T__49 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )
        memoize( __method__, clean_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule take
    # 
    # (in Instructions.g)
    # 309:1: take : ( 'T' | 't' ) ( 'A' | 'a' ) ( 'K' | 'k' ) ( 'E' | 'e' ) ;
    # 
    def take
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )
      take_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 309:7: ( 'T' | 't' ) ( 'A' | 'a' ) ( 'K' | 'k' ) ( 'E' | 'e' )
        if @input.peek( 1 ).between?( T__16, T__17 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__48, T__49 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__50, T__51 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 30 )
        memoize( __method__, take_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule combine
    # 
    # (in Instructions.g)
    # 310:1: combine : ( 'C' | 'c' ) ( 'O' | 'o' ) ( 'M' | 'm' ) ( 'B' | 'b' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'E' | 'e' ) ;
    # 
    def combine
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )
      combine_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 310:10: ( 'C' | 'c' ) ( 'O' | 'o' ) ( 'M' | 'm' ) ( 'B' | 'b' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'E' | 'e' )
        if @input.peek( 1 ).between?( T__46, T__47 )
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


        if @input.peek( 1 ).between?( T__40, T__41 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__52, T__53 )
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


        if @input.peek( 1 ).between?( T__34, T__35 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )
        memoize( __method__, combine_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule divide
    # 
    # (in Instructions.g)
    # 311:1: divide : ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'V' | 'v' ) ( 'I' | 'i' ) ( 'D' | 'd' ) ( 'E' | 'e' ) ;
    # 
    def divide
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )
      divide_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 311:9: ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'V' | 'v' ) ( 'I' | 'i' ) ( 'D' | 'd' ) ( 'E' | 'e' )
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


        if @input.peek( 1 ).between?( T__44, T__45 )
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


        if @input.peek( 1 ).between?( T__42, T__43 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 32 )
        memoize( __method__, divide_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule serve
    # 
    # (in Instructions.g)
    # 312:1: serve : ( 'S' | 's' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'V' | 'v' ) ( 'E' | 'e' ) ;
    # 
    def serve
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )
      serve_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 312:8: ( 'S' | 's' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'V' | 'v' ) ( 'E' | 'e' )
        if @input.peek( 1 ).between?( T__38, T__39 )
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


        if @input.peek( 1 ).between?( T__20, T__21 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__44, T__45 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 33 )
        memoize( __method__, serve_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule with
    # 
    # (in Instructions.g)
    # 313:1: with : ( 'W' | 'w' ) ( 'I' | 'i' ) ( 'T' | 't' ) ( 'H' | 'h' ) ;
    # 
    def with
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )
      with_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 313:7: ( 'W' | 'w' ) ( 'I' | 'i' ) ( 'T' | 't' ) ( 'H' | 'h' )
        if @input.peek( 1 ).between?( T__54, T__55 )
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


        if @input.peek( 1 ).between?( T__16, T__17 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__36, T__37 )
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
        # trace_out( __method__, 34 )
        memoize( __method__, with_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule refrigerator
    # 
    # (in Instructions.g)
    # 314:1: refrigerator : ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'F' | 'f' ) ( 'R' | 'r' ) ( 'I' | 'i' ) ( 'G' | 'g' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'A' | 'a' ) ( 'T' | 't' ) ( 'O' | 'o' ) ( 'R' | 'r' ) ;
    # 
    def refrigerator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )
      refrigerator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 315:5: ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'F' | 'f' ) ( 'R' | 'r' ) ( 'I' | 'i' ) ( 'G' | 'g' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'A' | 'a' ) ( 'T' | 't' ) ( 'O' | 'o' ) ( 'R' | 'r' )
        if @input.peek( 1 ).between?( T__20, T__21 )
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


        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__56, T__57 )
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


        if @input.peek( 1 ).between?( T__20, T__21 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__48, T__49 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 35 )
        memoize( __method__, refrigerator_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule refrigerate
    # 
    # (in Instructions.g)
    # 318:1: refrigerate : ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'F' | 'f' ) ( 'R' | 'r' ) ( 'I' | 'i' ) ( 'G' | 'g' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'A' | 'a' ) ( 'T' | 't' ) ( 'E' | 'e' ) ;
    # 
    def refrigerate
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )
      refrigerate_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 319:5: ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'F' | 'f' ) ( 'R' | 'r' ) ( 'I' | 'i' ) ( 'G' | 'g' ) ( 'E' | 'e' ) ( 'R' | 'r' ) ( 'A' | 'a' ) ( 'T' | 't' ) ( 'E' | 'e' )
        if @input.peek( 1 ).between?( T__20, T__21 )
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


        if @input.peek( 1 ).between?( T__24, T__25 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__56, T__57 )
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


        if @input.peek( 1 ).between?( T__20, T__21 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__48, T__49 )
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


        if @input.peek( 1 ).between?( T__28, T__29 )
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
        # trace_out( __method__, 36 )
        memoize( __method__, refrigerate_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule mixing
    # 
    # (in Instructions.g)
    # 322:1: mixing : ( 'M' | 'm' ) ( 'I' | 'i' ) ( 'X' | 'x' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ;
    # 
    def mixing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )
      mixing_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 322:9: ( 'M' | 'm' ) ( 'I' | 'i' ) ( 'X' | 'x' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' )
        if @input.peek( 1 ).between?( T__40, T__41 )
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


        if @input.peek( 1 ).between?( T__58, T__59 )
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


        if @input.peek( 1 ).between?( T__34, T__35 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__56, T__57 )
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
        # trace_out( __method__, 37 )
        memoize( __method__, mixing_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule baking
    # 
    # (in Instructions.g)
    # 323:1: baking : ( 'B' | 'b' ) ( 'A' | 'a' ) ( 'K' | 'k' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ;
    # 
    def baking
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )
      baking_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 323:9: ( 'B' | 'b' ) ( 'A' | 'a' ) ( 'K' | 'k' ) ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' )
        if @input.peek( 1 ).between?( T__52, T__53 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__48, T__49 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__50, T__51 )
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


        if @input.peek( 1 ).between?( T__34, T__35 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__56, T__57 )
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
        # trace_out( __method__, 38 )
        memoize( __method__, baking_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule dish
    # 
    # (in Instructions.g)
    # 324:1: dish : ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'S' | 's' ) ( 'H' | 'h' ) ;
    # 
    def dish
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )
      dish_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 324:7: ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'S' | 's' ) ( 'H' | 'h' )
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


        if @input.peek( 1 ).between?( T__38, T__39 )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        if @input.peek( 1 ).between?( T__36, T__37 )
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
        # trace_out( __method__, 39 )
        memoize( __method__, dish_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule bowl
    # 
    # (in Instructions.g)
    # 325:1: bowl : ( 'B' | 'b' ) ( 'O' | 'o' ) ( 'W' | 'w' ) ( 'L' | 'l' ) ;
    # 
    def bowl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )
      bowl_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 325:7: ( 'B' | 'b' ) ( 'O' | 'o' ) ( 'W' | 'w' ) ( 'L' | 'l' )
        if @input.peek( 1 ).between?( T__52, T__53 )
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


        if @input.peek( 1 ).between?( T__54, T__55 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 40 )
        memoize( __method__, bowl_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule until_
    # 
    # (in Instructions.g)
    # 326:1: until_ : ( 'U' | 'u' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'I' | 'i' ) ( 'L' | 'l' ) ;
    # 
    def until_
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )
      until__start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 326:9: ( 'U' | 'u' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'I' | 'i' ) ( 'L' | 'l' )
        if @input.peek( 1 ).between?( T__14, T__15 )
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


        if @input.peek( 1 ).between?( T__16, T__17 )
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


        if @input.peek( 1 ).between?( T__22, T__23 )
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
        # trace_out( __method__, 41 )
        memoize( __method__, until__start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule contents
    # 
    # (in Instructions.g)
    # 327:1: contents : ( 'C' | 'c' ) ( 'O' | 'o' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'S' | 's' ) ;
    # 
    def contents
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )
      contents_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 328:5: ( 'C' | 'c' ) ( 'O' | 'o' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'S' | 's' )
        if @input.peek( 1 ).between?( T__46, T__47 )
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


        if @input.peek( 1 ).between?( T__34, T__35 )
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


        if @input.peek( 1 ).between?( T__28, T__29 )
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


        if @input.peek( 1 ).between?( T__16, T__17 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 42 )
        memoize( __method__, contents_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule of
    # 
    # (in Instructions.g)
    # 330:1: of : ( 'O' | 'o' ) ( 'F' | 'f' ) ;
    # 
    def of
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )
      of_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 330:5: ( 'O' | 'o' ) ( 'F' | 'f' )
        if @input.peek( 1 ).between?( T__18, T__19 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 43 )
        memoize( __method__, of_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule for_
    # 
    # (in Instructions.g)
    # 331:1: for_ : ( 'F' | 'f' ) ( 'O' | 'o' ) ( 'R' | 'r' ) ;
    # 
    def for_
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )
      for__start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 331:7: ( 'F' | 'f' ) ( 'O' | 'o' ) ( 'R' | 'r' )
        if @input.peek( 1 ).between?( T__30, T__31 )
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


        if @input.peek( 1 ).between?( T__20, T__21 )
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
        # trace_out( __method__, 44 )
        memoize( __method__, for__start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule to
    # 
    # (in Instructions.g)
    # 332:1: to : ( 'T' | 't' ) ( 'O' | 'o' ) ;
    # 
    def to
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )
      to_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 332:5: ( 'T' | 't' ) ( 'O' | 'o' )
        if @input.peek( 1 ).between?( T__16, T__17 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 45 )
        memoize( __method__, to_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule aside
    # 
    # (in Instructions.g)
    # 333:1: aside : ( 'A' | 'a' ) ( 'S' | 's' ) ( 'I' | 'i' ) ( 'D' | 'd' ) ( 'E' | 'e' ) ;
    # 
    def aside
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )
      aside_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 333:8: ( 'A' | 'a' ) ( 'S' | 's' ) ( 'I' | 'i' ) ( 'D' | 'd' ) ( 'E' | 'e' )
        if @input.peek( 1 ).between?( T__48, T__49 )
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


        if @input.peek( 1 ).between?( T__24, T__25 )
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


        if @input.peek( 1 ).between?( T__28, T__29 )
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
        # trace_out( __method__, 46 )
        memoize( __method__, aside_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule add
    # 
    # (in Instructions.g)
    # 334:1: add : ( 'A' | 'a' ) ( 'D' | 'd' ) ( 'D' | 'd' ) ;
    # 
    def add
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )
      add_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 334:6: ( 'A' | 'a' ) ( 'D' | 'd' ) ( 'D' | 'd' )
        if @input.peek( 1 ).between?( T__48, T__49 )
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


        if @input.peek( 1 ).between?( T__42, T__43 )
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
        # trace_out( __method__, 47 )
        memoize( __method__, add_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule stir
    # 
    # (in Instructions.g)
    # 335:1: stir : ( 'S' | 's' ) ( 'T' | 't' ) ( 'I' | 'i' ) ( 'R' | 'r' ) ;
    # 
    def stir
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )
      stir_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 335:7: ( 'S' | 's' ) ( 'T' | 't' ) ( 'I' | 'i' ) ( 'R' | 'r' )
        if @input.peek( 1 ).between?( T__38, T__39 )
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


        if @input.peek( 1 ).between?( T__24, T__25 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 48 )
        memoize( __method__, stir_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule set
    # 
    # (in Instructions.g)
    # 336:1: set : ( 'S' | 's' ) ( 'E' | 'e' ) ( 'T' | 't' ) ;
    # 
    def set
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )
      set_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 336:6: ( 'S' | 's' ) ( 'E' | 'e' ) ( 'T' | 't' )
        if @input.peek( 1 ).between?( T__38, T__39 )
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


        if @input.peek( 1 ).between?( T__16, T__17 )
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
        # trace_out( __method__, 49 )
        memoize( __method__, set_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule mix
    # 
    # (in Instructions.g)
    # 337:1: mix : ( 'M' | 'm' ) ( 'I' | 'i' ) ( 'X' | 'x' ) ;
    # 
    def mix
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )
      mix_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 337:6: ( 'M' | 'm' ) ( 'I' | 'i' ) ( 'X' | 'x' )
        if @input.peek( 1 ).between?( T__40, T__41 )
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


        if @input.peek( 1 ).between?( T__58, T__59 )
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
        # trace_out( __method__, 50 )
        memoize( __method__, mix_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule well
    # 
    # (in Instructions.g)
    # 338:1: well : ( 'W' | 'w' ) ( 'E' | 'e' ) ( 'L' | 'l' ) ( 'L' | 'l' ) ;
    # 
    def well
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )
      well_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 338:7: ( 'W' | 'w' ) ( 'E' | 'e' ) ( 'L' | 'l' ) ( 'L' | 'l' )
        if @input.peek( 1 ).between?( T__54, T__55 )
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


        if @input.peek( 1 ).between?( T__22, T__23 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 51 )
        memoize( __method__, well_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule dry
    # 
    # (in Instructions.g)
    # 339:1: dry : ( 'D' | 'd' ) ( 'R' | 'r' ) ( 'Y' | 'y' ) ;
    # 
    def dry
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )
      dry_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 339:6: ( 'D' | 'd' ) ( 'R' | 'r' ) ( 'Y' | 'y' )
        if @input.peek( 1 ).between?( T__42, T__43 )
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
        # trace_out( __method__, 52 )
        memoize( __method__, dry_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule ingredients
    # 
    # (in Instructions.g)
    # 340:1: ingredients : ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'S' | 's' ) ;
    # 
    def ingredients
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )
      ingredients_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 341:3: ( 'I' | 'i' ) ( 'N' | 'n' ) ( 'G' | 'g' ) ( 'R' | 'r' ) ( 'E' | 'e' ) ( 'D' | 'd' ) ( 'I' | 'i' ) ( 'E' | 'e' ) ( 'N' | 'n' ) ( 'T' | 't' ) ( 'S' | 's' )
        if @input.peek( 1 ).between?( T__24, T__25 )
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


        if @input.peek( 1 ).between?( T__56, T__57 )
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


        if @input.peek( 1 ).between?( T__28, T__29 )
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


        if @input.peek( 1 ).between?( T__28, T__29 )
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


        if @input.peek( 1 ).between?( T__16, T__17 )
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



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 53 )
        memoize( __method__, ingredients_start_index, success ) if @state.backtracking > 0

      end
      
      return 
    end

    TextReturnValue = define_return_scope :value

    # 
    # parser rule text
    # 
    # (in Instructions.g)
    # 344:1: text returns [value] : (~ EOL )+ ;
    # 
    def text
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )
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
        # at line 344:23: (~ EOL )+
        # at file 344:23: (~ EOL )+
        match_count_38 = 0
        while true
          alt_38 = 2
          alt_38 = @dfa38.predict( @input )
          case alt_38
          when 1
            # at line 344:24: ~ EOL
            if @input.peek(1) == WS || @input.peek( 1 ).between?( DIGIT, T__59 )
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

              mse = MismatchedSet( nil )
              raise mse
            end



          else
            match_count_38 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(38)


            raise eee
          end
          match_count_38 += 1
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
        # trace_out( __method__, 54 )
        memoize( __method__, text_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end

    NumReturnValue = define_return_scope :value

    # 
    # parser rule num
    # 
    # (in Instructions.g)
    # 345:1: num returns [value] : ( DIGIT )+ ;
    # 
    def num
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )
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
        # at line 345:22: ( DIGIT )+
        # at file 345:22: ( DIGIT )+
        match_count_39 = 0
        while true
          alt_39 = 2
          look_39_0 = @input.peek( 1 )

          if ( look_39_0 == DIGIT )
            alt_39 = 1

          end
          case alt_39
          when 1
            # at line 0:0: DIGIT
            match( DIGIT, TOKENS_FOLLOWING_DIGIT_IN_num_2214 )

          else
            match_count_39 > 0 and break
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

            eee = EarlyExit(39)


            raise eee
          end
          match_count_39 += 1
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
        # trace_out( __method__, 55 )
        memoize( __method__, num_start_index, success ) if @state.backtracking > 0

      end
      
      return return_value
    end


    # 
    # parser rule ordinal
    # 
    # (in Instructions.g)
    # 346:1: ordinal returns [value] : t= ( ST | ND | RD | TH ) ;
    # 
    def ordinal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )
      value = nil
      ordinal_start_index = @input.index
      t = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return value
        end
        # at line 346:26: t= ( ST | ND | RD | TH )
        t = @input.look
        if @input.peek( 1 ).between?( ST, TH )
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

          mse = MismatchedSet( nil )
          raise mse
        end


        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
          value = t.text[/^\d+/].to_i
          # <-- action
        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 56 )
        memoize( __method__, ordinal_start_index, success ) if @state.backtracking > 0

      end
      
      return value
    end

    # 
    # syntactic predicate synpred24_Instructions
    # 
    # (in Instructions.g)
    # 132:11: synpred24_Instructions : WS the ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred24_Instructions
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 80 )

      # at line 132:11: WS the
      match( WS, TOKENS_FOLLOWING_WS_IN_synpred24_Instructions_410 )
      @state.following.push( TOKENS_FOLLOWING_the_IN_synpred24_Instructions_412 )
      the
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 80 )

    end
    # 
    # syntactic predicate synpred231_Instructions
    # 
    # (in Instructions.g)
    # 344:24: synpred231_Instructions : ~ EOL ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred231_Instructions
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 287 )

      # at line 344:24: ~ EOL
      if @input.peek(1) == WS || @input.peek( 1 ).between?( DIGIT, T__59 )
        @input.consume
        @state.error_recovery = false
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )

        mse = MismatchedSet( nil )
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 287 )

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA1 < ANTLR3::DFA
      EOT = unpack( 58, -1 )
      EOF = unpack( 56, -1, 1, 57, 1, -1 )
      MIN = unpack( 1, 12, 1, 14, 2, -1, 1, 18, 1, -1, 1, 28, 1, -1, 1, 
                    16, 6, -1, 1, 30, 1, 16, 1, 24, 4, -1, 1, 20, 6, 4, 
                    1, -1, 27, 4, 1, -1 )
      MAX = unpack( 1, 49, 1, 19, 2, -1, 1, 23, 1, -1, 1, 29, 1, -1, 1, 
                    29, 6, -1, 1, 41, 1, 21, 1, 25, 4, -1, 1, 21, 1, 4, 
                    5, 59, 1, -1, 27, 59, 1, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 1, 4, 1, -1, 1, 6, 1, -1, 1, 9, 1, -1, 
                       1, 12, 1, 14, 1, 1, 1, 3, 1, 5, 1, 13, 3, -1, 1, 
                       7, 1, 8, 1, 10, 1, 11, 7, -1, 1, 16, 27, -1, 1, 15 )
      SPECIAL = unpack( 58, -1 )
      TRANSITION = [
        unpack( 2, 1, 2, -1, 2, 5, 2, -1, 2, 6, 2, 2, 6, -1, 2, 3, 6, -1, 
                2, 8, 2, 9, 2, 10, 2, -1, 2, 4, 2, 7 ),
        unpack( 2, 11, 2, -1, 2, 12 ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 14, 2, -1, 2, 13 ),
        unpack(  ),
        unpack( 2, 15 ),
        unpack(  ),
        unpack( 2, 17, 10, -1, 2, 16 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 19, 8, -1, 2, 18 ),
        unpack( 2, 21, 2, -1, 2, 20 ),
        unpack( 2, 22 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 2, 23 ),
        unpack( 1, 24 ),
        unpack( 1, 29, 1, -1, 1, 29, 4, 26, 5, 29, 2, 25, 12, 29, 2, 28, 
                 8, 29, 2, 27, 18, 29 ),
        unpack( 1, 29, 1, -1, 30, 29, 2, 30, 22, 29 ),
        unpack( 1, 31, 1, -1, 54, 29 ),
        unpack( 1, 29, 1, -1, 18, 29, 2, 32, 34, 29 ),
        unpack( 1, 29, 1, -1, 12, 29, 2, 33, 40, 29 ),
        unpack(  ),
        unpack( 1, 29, 1, -1, 22, 29, 2, 34, 30, 29 ),
        unpack( 1, 29, 1, -1, 34, 29, 2, 27, 18, 29 ),
        unpack( 1, 29, 1, -1, 52, 29, 2, 35 ),
        unpack( 1, 29, 1, -1, 14, 29, 2, 36, 38, 29 ),
        unpack( 1, 37, 1, -1, 54, 29 ),
        unpack( 1, 29, 1, -1, 18, 29, 2, 38, 34, 29 ),
        unpack( 1, 39, 1, -1, 54, 29 ),
        unpack( 1, 29, 1, -1, 1, 29, 4, 26, 29, 29, 2, 27, 18, 29 ),
        unpack( 1, 29, 1, -1, 28, 29, 2, 40, 24, 29 ),
        unpack( 1, 29, 1, -1, 1, 41, 53, 29 ),
        unpack( 1, 29, 1, -1, 50, 29, 2, 42, 2, 29 ),
        unpack( 1, 43, 1, -1, 1, 41, 53, 29 ),
        unpack( 1, 44, 1, -1, 54, 29 ),
        unpack( 1, 29, 1, -1, 34, 29, 2, 45, 18, 29 ),
        unpack( 1, 29, 1, -1, 46, 29, 2, 46, 6, 29 ),
        unpack( 1, 29, 1, -1, 18, 29, 2, 47, 34, 29 ),
        unpack( 1, 29, 1, -1, 12, 29, 2, 48, 40, 29 ),
        unpack( 1, 29, 1, -1, 28, 29, 2, 49, 24, 29 ),
        unpack( 1, 29, 1, -1, 48, 29, 2, 50, 4, 29 ),
        unpack( 1, 29, 1, -1, 8, 29, 2, 51, 44, 29 ),
        unpack( 1, 29, 1, -1, 16, 29, 2, 52, 36, 29 ),
        unpack( 1, 29, 1, -1, 10, 29, 2, 53, 42, 29 ),
        unpack( 1, 54, 1, -1, 54, 29 ),
        unpack( 1, 29, 1, -1, 22, 29, 2, 55, 30, 29 ),
        unpack( 1, 29, 1, -1, 24, 29, 2, 28, 28, 29 ),
        unpack( 1, 29, 1, -1, 32, 29, 2, 56, 20, 29 ),
        unpack( 1, 29, 1, -1, 54, 29 ),
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
          35:1: instruction returns [value] : ( put_ingredient_into_mixing_bowl | liquefy_mixing_bowl | pour_contents_into_baking_dish | fold_ingredient_into_mixing_bowl | clean_the_mixing_bowl | take_ingredient_from_refrigerator | remove_ingredient_from_mixing_bowl | refrigerate_for_hours | add_ingredient_to_mixing_bowl | serve_with | set_aside | mix_the_mixing_bowl_well | combine_ingredient_into_mixing_bowl | divide_ingredient_into_mixing_bowl | stir_mixing_bowl | stir_ingredient_into_the_mixing_bowl );
        __dfa_description__
      end
    end
    class DFA21 < ANTLR3::DFA
      EOT = unpack( 44, -1 )
      EOF = unpack( 36, -1, 1, 38, 5, -1, 1, 43, 1, -1 )
      MIN = unpack( 1, 48, 2, 42, 35, 4, 1, -1, 4, 4, 1, -1 )
      MAX = unpack( 1, 49, 2, 43, 1, 4, 34, 59, 1, -1, 4, 59, 1, -1 )
      ACCEPT = unpack( 38, -1, 1, 1, 4, -1, 1, 2 )
      SPECIAL = unpack( 44, -1 )
      TRANSITION = [
        unpack( 2, 1 ),
        unpack( 2, 2 ),
        unpack( 2, 3 ),
        unpack( 1, 4 ),
        unpack( 1, 5, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 7, 34, 5 ),
        unpack( 1, 6, 1, -1, 28, 5, 2, 8, 24, 5 ),
        unpack( 1, 6, 1, -1, 10, 5, 2, 9, 42, 5 ),
        unpack( 1, 6, 1, -1, 12, 5, 2, 10, 40, 5 ),
        unpack( 1, 11, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 1, 5, 4, 12, 5, 5, 2, 14, 6, 5, 2, 7, 14, 
                 5, 2, 13, 18, 5 ),
        unpack( 1, 15, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 16, 34, 5 ),
        unpack( 1, 6, 1, -1, 30, 5, 2, 17, 22, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 7, 14, 5, 2, 13, 18, 5 ),
        unpack( 1, 6, 1, -1, 52, 5, 2, 18 ),
        unpack( 1, 6, 1, -1, 22, 5, 2, 19, 30, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 20, 34, 5 ),
        unpack( 1, 21, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 28, 5, 2, 22, 24, 5 ),
        unpack( 1, 6, 1, -1, 1, 5, 4, 23, 13, 5, 2, 7, 14, 5, 2, 24, 18, 
                 5 ),
        unpack( 1, 6, 1, -1, 50, 5, 2, 25, 2, 5 ),
        unpack( 1, 26, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 27, 34, 5 ),
        unpack( 1, 28, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 7, 14, 5, 2, 24, 18, 5 ),
        unpack( 1, 6, 1, -1, 52, 5, 2, 29 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 7, 26, 5, 2, 30, 6, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 31, 34, 5 ),
        unpack( 1, 6, 1, -1, 12, 5, 2, 32, 40, 5 ),
        unpack( 1, 6, 1, -1, 28, 5, 2, 33, 24, 5 ),
        unpack( 1, 6, 1, -1, 48, 5, 2, 34, 4, 5 ),
        unpack( 1, 6, 1, -1, 50, 5, 2, 35, 2, 5 ),
        unpack( 1, 6, 1, -1, 16, 5, 2, 36, 36, 5 ),
        unpack( 1, 37, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 54, 5 ),
        unpack( 1, 6, 1, -1, 18, 5, 2, 7, 26, 5, 2, 39, 6, 5 ),
        unpack(  ),
        unpack( 1, 6, 1, -1, 12, 5, 2, 40, 40, 5 ),
        unpack( 1, 6, 1, -1, 48, 5, 2, 41, 4, 5 ),
        unpack( 1, 6, 1, -1, 16, 5, 2, 42, 36, 5 ),
        unpack( 1, 6, 1, -1, 54, 5 ),
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
          171:1: add_ingredient_to_mixing_bowl returns [value] : ( add WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | add WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF );
        __dfa_description__
      end
    end
    class DFA29 < ANTLR3::DFA
      EOT = unpack( 48, -1 )
      EOF = unpack( 40, -1, 1, 42, 5, -1, 1, 47, 1, -1 )
      MIN = unpack( 1, 46, 1, 18, 1, 40, 1, 52, 1, 24, 1, 34, 1, 28, 35, 
                    4, 1, -1, 4, 4, 1, -1 )
      MAX = unpack( 1, 47, 1, 19, 1, 41, 1, 53, 1, 25, 1, 35, 1, 29, 1, 
                    4, 34, 59, 1, -1, 4, 59, 1, -1 )
      ACCEPT = unpack( 42, -1, 1, 1, 4, -1, 1, 2 )
      SPECIAL = unpack( 48, -1 )
      TRANSITION = [
        unpack( 2, 1 ),
        unpack( 2, 2 ),
        unpack( 2, 3 ),
        unpack( 2, 4 ),
        unpack( 2, 5 ),
        unpack( 2, 6 ),
        unpack( 2, 7 ),
        unpack( 1, 8 ),
        unpack( 1, 9, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 11, 34, 9 ),
        unpack( 1, 10, 1, -1, 28, 9, 2, 12, 24, 9 ),
        unpack( 1, 10, 1, -1, 10, 9, 2, 13, 42, 9 ),
        unpack( 1, 10, 1, -1, 12, 9, 2, 14, 40, 9 ),
        unpack( 1, 15, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 1, 9, 4, 16, 5, 9, 2, 18, 6, 9, 2, 11, 14, 
                 9, 2, 17, 18, 9 ),
        unpack( 1, 19, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 20, 34, 9 ),
        unpack( 1, 10, 1, -1, 30, 9, 2, 21, 22, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 11, 14, 9, 2, 17, 18, 9 ),
        unpack( 1, 10, 1, -1, 52, 9, 2, 22 ),
        unpack( 1, 10, 1, -1, 22, 9, 2, 23, 30, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 24, 34, 9 ),
        unpack( 1, 25, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 28, 9, 2, 26, 24, 9 ),
        unpack( 1, 10, 1, -1, 1, 9, 4, 27, 13, 9, 2, 11, 14, 9, 2, 28, 
                 18, 9 ),
        unpack( 1, 10, 1, -1, 50, 9, 2, 29, 2, 9 ),
        unpack( 1, 30, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 31, 34, 9 ),
        unpack( 1, 32, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 11, 14, 9, 2, 28, 18, 9 ),
        unpack( 1, 10, 1, -1, 52, 9, 2, 33 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 11, 26, 9, 2, 34, 6, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 35, 34, 9 ),
        unpack( 1, 10, 1, -1, 12, 9, 2, 36, 40, 9 ),
        unpack( 1, 10, 1, -1, 28, 9, 2, 37, 24, 9 ),
        unpack( 1, 10, 1, -1, 48, 9, 2, 38, 4, 9 ),
        unpack( 1, 10, 1, -1, 50, 9, 2, 39, 2, 9 ),
        unpack( 1, 10, 1, -1, 16, 9, 2, 40, 36, 9 ),
        unpack( 1, 41, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 54, 9 ),
        unpack( 1, 10, 1, -1, 18, 9, 2, 11, 26, 9, 2, 43, 6, 9 ),
        unpack(  ),
        unpack( 1, 10, 1, -1, 12, 9, 2, 44, 40, 9 ),
        unpack( 1, 10, 1, -1, 48, 9, 2, 45, 4, 9 ),
        unpack( 1, 10, 1, -1, 16, 9, 2, 46, 36, 9 ),
        unpack( 1, 10, 1, -1, 54, 9 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 29
      

      def description
        <<-'__dfa_description__'.strip!
          217:1: combine_ingredient_into_mixing_bowl returns [value] : ( combine WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | combine WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF );
        __dfa_description__
      end
    end
    class DFA32 < ANTLR3::DFA
      EOT = unpack( 47, -1 )
      EOF = unpack( 39, -1, 1, 41, 5, -1, 1, 46, 1, -1 )
      MIN = unpack( 1, 42, 1, 24, 1, 44, 1, 24, 1, 42, 1, 28, 35, 4, 1, 
                    -1, 4, 4, 1, -1 )
      MAX = unpack( 1, 43, 1, 25, 1, 45, 1, 25, 1, 43, 1, 29, 1, 4, 34, 
                    59, 1, -1, 4, 59, 1, -1 )
      ACCEPT = unpack( 41, -1, 1, 1, 4, -1, 1, 2 )
      SPECIAL = unpack( 47, -1 )
      TRANSITION = [
        unpack( 2, 1 ),
        unpack( 2, 2 ),
        unpack( 2, 3 ),
        unpack( 2, 4 ),
        unpack( 2, 5 ),
        unpack( 2, 6 ),
        unpack( 1, 7 ),
        unpack( 1, 8, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 10, 34, 8 ),
        unpack( 1, 9, 1, -1, 28, 8, 2, 11, 24, 8 ),
        unpack( 1, 9, 1, -1, 10, 8, 2, 12, 42, 8 ),
        unpack( 1, 9, 1, -1, 12, 8, 2, 13, 40, 8 ),
        unpack( 1, 14, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 1, 8, 4, 15, 5, 8, 2, 17, 6, 8, 2, 10, 14, 
                 8, 2, 16, 18, 8 ),
        unpack( 1, 18, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 19, 34, 8 ),
        unpack( 1, 9, 1, -1, 30, 8, 2, 20, 22, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 10, 14, 8, 2, 16, 18, 8 ),
        unpack( 1, 9, 1, -1, 52, 8, 2, 21 ),
        unpack( 1, 9, 1, -1, 22, 8, 2, 22, 30, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 23, 34, 8 ),
        unpack( 1, 24, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 28, 8, 2, 25, 24, 8 ),
        unpack( 1, 9, 1, -1, 1, 8, 4, 26, 13, 8, 2, 10, 14, 8, 2, 27, 18, 
                 8 ),
        unpack( 1, 9, 1, -1, 50, 8, 2, 28, 2, 8 ),
        unpack( 1, 29, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 30, 34, 8 ),
        unpack( 1, 31, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 10, 14, 8, 2, 27, 18, 8 ),
        unpack( 1, 9, 1, -1, 52, 8, 2, 32 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 10, 26, 8, 2, 33, 6, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 34, 34, 8 ),
        unpack( 1, 9, 1, -1, 12, 8, 2, 35, 40, 8 ),
        unpack( 1, 9, 1, -1, 28, 8, 2, 36, 24, 8 ),
        unpack( 1, 9, 1, -1, 48, 8, 2, 37, 4, 8 ),
        unpack( 1, 9, 1, -1, 50, 8, 2, 38, 2, 8 ),
        unpack( 1, 9, 1, -1, 16, 8, 2, 39, 36, 8 ),
        unpack( 1, 40, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 54, 8 ),
        unpack( 1, 9, 1, -1, 18, 8, 2, 10, 26, 8, 2, 42, 6, 8 ),
        unpack(  ),
        unpack( 1, 9, 1, -1, 12, 8, 2, 43, 40, 8 ),
        unpack( 1, 9, 1, -1, 48, 8, 2, 44, 4, 8 ),
        unpack( 1, 9, 1, -1, 16, 8, 2, 45, 36, 8 ),
        unpack( 1, 9, 1, -1, 54, 8 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 32
      

      def description
        <<-'__dfa_description__'.strip!
          231:1: divide_ingredient_into_mixing_bowl returns [value] : ( divide WS text WS into ( WS ordinal )? WS mixing WS bowl EOF | divide WS text WS into WS the ( WS ordinal )? WS mixing WS bowl EOF );
        __dfa_description__
      end
    end
    class DFA38 < ANTLR3::DFA
      EOT = unpack( 76, -1 )
      EOF = unpack( 1, 2, 1, 3, 2, -1, 61, 3, 1, 69, 1, 3, 1, -1, 1, 3, 
                    1, -1, 1, 72, 1, 3, 1, -1, 1, 3, 1, 75, 1, -1 )
      MIN = unpack( 2, 4, 2, -1, 63, 4, 1, 0, 1, 4, 1, 0, 2, 4, 1, 0, 2, 
                    4, 1, 0 )
      MAX = unpack( 2, 59, 2, -1, 63, 59, 1, 0, 1, 59, 1, 0, 2, 59, 1, 0, 
                    2, 59, 1, 0 )
      ACCEPT = unpack( 2, -1, 1, 2, 1, 1, 72, -1 )
      SPECIAL = unpack( 67, -1, 1, 0, 1, -1, 1, 2, 2, -1, 1, 3, 2, -1, 1, 
                        1 )
      TRANSITION = [
        unpack( 1, 1, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 4, 4, 3, 2, 5, 28, 3 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 3, 1, -1, 28, 3, 2, 6, 24, 3 ),
        unpack( 1, 3, 1, -1, 14, 3, 2, 7, 38, 3 ),
        unpack( 1, 3, 1, -1, 10, 3, 2, 8, 42, 3 ),
        unpack( 1, 3, 1, -1, 12, 3, 2, 9, 40, 3 ),
        unpack( 1, 3, 1, -1, 12, 3, 2, 10, 40, 3 ),
        unpack( 1, 3, 1, -1, 34, 3, 2, 11, 18, 3 ),
        unpack( 1, 12, 1, -1, 54, 3 ),
        unpack( 1, 13, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 1, 3, 4, 15, 5, 3, 2, 14, 22, 3, 2, 16, 18, 
                 3 ),
        unpack( 1, 3, 1, -1, 1, 3, 4, 19, 5, 3, 2, 18, 2, 3, 2, 17, 18, 
                 3, 2, 20, 18, 3 ),
        unpack( 1, 3, 1, -1, 30, 3, 2, 21, 22, 3 ),
        unpack( 1, 22, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 23, 34, 3 ),
        unpack( 1, 3, 1, -1, 22, 3, 2, 24, 30, 3 ),
        unpack( 1, 3, 1, -1, 30, 3, 2, 25, 22, 3 ),
        unpack( 1, 26, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 27, 34, 3 ),
        unpack( 1, 3, 1, -1, 22, 3, 2, 28, 30, 3 ),
        unpack( 1, 3, 1, -1, 34, 3, 2, 16, 18, 3 ),
        unpack( 1, 3, 1, -1, 52, 3, 2, 29 ),
        unpack( 1, 3, 1, -1, 24, 3, 2, 30, 28, 3 ),
        unpack( 1, 3, 1, -1, 22, 3, 2, 31, 30, 3 ),
        unpack( 1, 3, 1, -1, 34, 3, 2, 20, 18, 3 ),
        unpack( 1, 3, 1, -1, 52, 3, 2, 32 ),
        unpack( 1, 33, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 34, 34, 3 ),
        unpack( 1, 3, 1, -1, 14, 3, 2, 35, 38, 3 ),
        unpack( 1, 36, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 37, 34, 3 ),
        unpack( 1, 3, 1, -1, 1, 3, 4, 38, 29, 3, 2, 39, 18, 3 ),
        unpack( 1, 3, 1, -1, 28, 3, 2, 40, 24, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 41, 34, 3 ),
        unpack( 1, 3, 1, -1, 1, 3, 4, 19, 29, 3, 2, 20, 18, 3 ),
        unpack( 1, 3, 1, -1, 28, 3, 2, 42, 24, 3 ),
        unpack( 1, 43, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 44, 34, 3 ),
        unpack( 1, 3, 1, -1, 50, 3, 2, 45, 2, 3 ),
        unpack( 1, 3, 1, -1, 50, 3, 2, 46, 2, 3 ),
        unpack( 1, 3, 1, -1, 50, 3, 2, 47, 2, 3 ),
        unpack( 1, 3, 1, -1, 34, 3, 2, 39, 18, 3 ),
        unpack( 1, 3, 1, -1, 52, 3, 2, 48 ),
        unpack( 1, 49, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 22, 3, 2, 50, 30, 3 ),
        unpack( 1, 51, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 18, 3, 2, 52, 34, 3 ),
        unpack( 1, 3, 1, -1, 46, 3, 2, 53, 6, 3 ),
        unpack( 1, 3, 1, -1, 14, 3, 2, 54, 38, 3 ),
        unpack( 1, 3, 1, -1, 46, 3, 2, 55, 6, 3 ),
        unpack( 1, 3, 1, -1, 28, 3, 2, 56, 24, 3 ),
        unpack( 1, 3, 1, -1, 12, 3, 2, 57, 40, 3 ),
        unpack( 1, 3, 1, -1, 42, 3, 2, 58, 10, 3 ),
        unpack( 1, 3, 1, -1, 12, 3, 2, 59, 40, 3 ),
        unpack( 1, 3, 1, -1, 50, 3, 2, 60, 2, 3 ),
        unpack( 1, 3, 1, -1, 48, 3, 2, 61, 4, 3 ),
        unpack( 1, 3, 1, -1, 10, 3, 2, 62, 42, 3 ),
        unpack( 1, 3, 1, -1, 48, 3, 2, 63, 4, 3 ),
        unpack( 1, 64, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 16, 3, 2, 65, 36, 3 ),
        unpack( 1, 3, 1, -1, 12, 3, 2, 66, 40, 3 ),
        unpack( 1, 3, 1, -1, 16, 3, 2, 67, 36, 3 ),
        unpack( 1, 3, 1, -1, 46, 3, 2, 68, 6, 3 ),
        unpack( 1, 3, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 14, 3, 2, 70, 38, 3 ),
        unpack( 1, -1 ),
        unpack( 1, 3, 1, -1, 12, 3, 2, 71, 40, 3 ),
        unpack( 1, -1 ),
        unpack( 1, 3, 1, -1, 54, 3 ),
        unpack( 1, 3, 1, -1, 48, 3, 2, 73, 4, 3 ),
        unpack( 1, -1 ),
        unpack( 1, 3, 1, -1, 16, 3, 2, 74, 36, 3 ),
        unpack( 1, 3, 1, -1, 54, 3 ),
        unpack( 1, -1 )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 38
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 344:23: (~ EOL )+
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa1 = DFA1.new( self, 1 )
      @dfa21 = DFA21.new( self, 21 )
      @dfa29 = DFA29.new( self, 29 )
      @dfa32 = DFA32.new( self, 32 )
      @dfa38 = DFA38.new( self, 38 ) do |s|
        case s
        when 0
          look_38_67 = @input.peek
          index_38_67 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred231_Instructions ) )
            s = 3
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_38_67 )

        when 1
          look_38_75 = @input.peek
          index_38_75 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred231_Instructions ) )
            s = 3
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_38_75 )

        when 2
          look_38_69 = @input.peek
          index_38_69 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred231_Instructions ) )
            s = 3
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_38_69 )

        when 3
          look_38_72 = @input.peek
          index_38_72 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( syntactic_predicate?( :synpred231_Instructions ) )
            s = 3
          elsif ( true )
            s = 2
          end
           
          @input.seek( index_38_72 )

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa38.description, 38, s, input )
          @dfa38.error( nva )
          raise nva
        end
        
        s
      end

    end
    TOKENS_FOLLOWING_put_ingredient_into_mixing_bowl_IN_instruction_83 = Set[ 1 ]
    TOKENS_FOLLOWING_liquefy_mixing_bowl_IN_instruction_91 = Set[ 1 ]
    TOKENS_FOLLOWING_pour_contents_into_baking_dish_IN_instruction_99 = Set[ 1 ]
    TOKENS_FOLLOWING_fold_ingredient_into_mixing_bowl_IN_instruction_107 = Set[ 1 ]
    TOKENS_FOLLOWING_clean_the_mixing_bowl_IN_instruction_115 = Set[ 1 ]
    TOKENS_FOLLOWING_take_ingredient_from_refrigerator_IN_instruction_123 = Set[ 1 ]
    TOKENS_FOLLOWING_remove_ingredient_from_mixing_bowl_IN_instruction_131 = Set[ 1 ]
    TOKENS_FOLLOWING_refrigerate_for_hours_IN_instruction_139 = Set[ 1 ]
    TOKENS_FOLLOWING_add_ingredient_to_mixing_bowl_IN_instruction_147 = Set[ 1 ]
    TOKENS_FOLLOWING_serve_with_IN_instruction_155 = Set[ 1 ]
    TOKENS_FOLLOWING_set_aside_IN_instruction_163 = Set[ 1 ]
    TOKENS_FOLLOWING_mix_the_mixing_bowl_well_IN_instruction_171 = Set[ 1 ]
    TOKENS_FOLLOWING_combine_ingredient_into_mixing_bowl_IN_instruction_179 = Set[ 1 ]
    TOKENS_FOLLOWING_divide_ingredient_into_mixing_bowl_IN_instruction_187 = Set[ 1 ]
    TOKENS_FOLLOWING_stir_mixing_bowl_IN_instruction_195 = Set[ 1 ]
    TOKENS_FOLLOWING_stir_ingredient_into_the_mixing_bowl_IN_instruction_203 = Set[ 1 ]
    TOKENS_FOLLOWING_put_IN_put_ingredient_into_mixing_bowl_229 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_231 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_put_ingredient_into_mixing_bowl_233 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_235 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_put_ingredient_into_mixing_bowl_237 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_240 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_put_ingredient_into_mixing_bowl_242 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_247 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_put_ingredient_into_mixing_bowl_249 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_253 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_put_ingredient_into_mixing_bowl_255 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_put_ingredient_into_mixing_bowl_257 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_put_ingredient_into_mixing_bowl_259 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_put_ingredient_into_mixing_bowl_261 = Set[ 1 ]
    TOKENS_FOLLOWING_liquefy_IN_liquefy_mixing_bowl_277 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_279 = Set[ 46, 47 ]
    TOKENS_FOLLOWING_contents_IN_liquefy_mixing_bowl_281 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_283 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_of_IN_liquefy_mixing_bowl_285 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_288 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_liquefy_mixing_bowl_290 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_295 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_liquefy_mixing_bowl_297 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_301 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_liquefy_mixing_bowl_303 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_liquefy_mixing_bowl_305 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_liquefy_mixing_bowl_307 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_liquefy_mixing_bowl_309 = Set[ 1 ]
    TOKENS_FOLLOWING_pour_IN_pour_contents_into_baking_dish_325 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_327 = Set[ 46, 47 ]
    TOKENS_FOLLOWING_contents_IN_pour_contents_into_baking_dish_329 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_331 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_of_IN_pour_contents_into_baking_dish_333 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_336 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_pour_contents_into_baking_dish_338 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_343 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_pour_contents_into_baking_dish_347 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_351 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_pour_contents_into_baking_dish_353 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_355 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_pour_contents_into_baking_dish_357 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_359 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_pour_contents_into_baking_dish_365 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_368 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_pour_contents_into_baking_dish_370 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_375 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_pour_contents_into_baking_dish_379 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_383 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_baking_IN_pour_contents_into_baking_dish_385 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_pour_contents_into_baking_dish_387 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_dish_IN_pour_contents_into_baking_dish_389 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_pour_contents_into_baking_dish_391 = Set[ 1 ]
    TOKENS_FOLLOWING_fold_IN_fold_ingredient_into_mixing_bowl_407 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_410 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_fold_ingredient_into_mixing_bowl_412 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_416 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_fold_ingredient_into_mixing_bowl_418 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_420 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_fold_ingredient_into_mixing_bowl_422 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_425 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_fold_ingredient_into_mixing_bowl_427 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_432 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_fold_ingredient_into_mixing_bowl_434 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_438 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_fold_ingredient_into_mixing_bowl_440 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_fold_ingredient_into_mixing_bowl_442 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_fold_ingredient_into_mixing_bowl_444 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_fold_ingredient_into_mixing_bowl_446 = Set[ 1 ]
    TOKENS_FOLLOWING_clean_IN_clean_the_mixing_bowl_462 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_465 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_clean_the_mixing_bowl_467 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_472 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_clean_the_mixing_bowl_474 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_478 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_clean_the_mixing_bowl_480 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_clean_the_mixing_bowl_482 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_clean_the_mixing_bowl_484 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_clean_the_mixing_bowl_486 = Set[ 1 ]
    TOKENS_FOLLOWING_take_IN_take_ingredient_from_refrigerator_502 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_take_ingredient_from_refrigerator_504 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_take_ingredient_from_refrigerator_506 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_take_ingredient_from_refrigerator_508 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_from_IN_take_ingredient_from_refrigerator_510 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_take_ingredient_from_refrigerator_512 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_refrigerator_IN_take_ingredient_from_refrigerator_514 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_take_ingredient_from_refrigerator_516 = Set[ 1 ]
    TOKENS_FOLLOWING_remove_IN_remove_ingredient_from_mixing_bowl_532 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_534 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_remove_ingredient_from_mixing_bowl_536 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_539 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_from_IN_remove_ingredient_from_mixing_bowl_541 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_544 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_remove_ingredient_from_mixing_bowl_546 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_551 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_remove_ingredient_from_mixing_bowl_553 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_557 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_remove_ingredient_from_mixing_bowl_559 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_remove_ingredient_from_mixing_bowl_561 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_remove_ingredient_from_mixing_bowl_563 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_remove_ingredient_from_mixing_bowl_567 = Set[ 1 ]
    TOKENS_FOLLOWING_refrigerate_IN_refrigerate_for_hours_583 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_refrigerate_for_hours_586 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_for__IN_refrigerate_for_hours_588 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_refrigerate_for_hours_590 = Set[ 6 ]
    TOKENS_FOLLOWING_num_IN_refrigerate_for_hours_592 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_refrigerate_for_hours_594 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_hours_IN_refrigerate_for_hours_596 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_refrigerate_for_hours_600 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_add_ingredient_to_mixing_bowl_616 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_618 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_add_ingredient_to_mixing_bowl_620 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_622 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_add_ingredient_to_mixing_bowl_624 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_627 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_add_ingredient_to_mixing_bowl_629 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_633 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_add_ingredient_to_mixing_bowl_635 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_637 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_add_ingredient_to_mixing_bowl_639 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_add_ingredient_to_mixing_bowl_641 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_add_ingredient_to_mixing_bowl_649 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_651 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_add_ingredient_to_mixing_bowl_653 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_655 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_add_ingredient_to_mixing_bowl_657 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_659 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_add_ingredient_to_mixing_bowl_661 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_664 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_add_ingredient_to_mixing_bowl_666 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_670 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_add_ingredient_to_mixing_bowl_672 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_ingredient_to_mixing_bowl_674 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_add_ingredient_to_mixing_bowl_676 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_add_ingredient_to_mixing_bowl_678 = Set[ 1 ]
    TOKENS_FOLLOWING_serve_IN_serve_with_694 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_serve_with_696 = Set[ 54, 55 ]
    TOKENS_FOLLOWING_with_IN_serve_with_698 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_serve_with_700 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_serve_with_702 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_serve_with_704 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_set_aside_720 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_set_aside_722 = Set[ 48, 49 ]
    TOKENS_FOLLOWING_aside_IN_set_aside_724 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_set_aside_726 = Set[ 1 ]
    TOKENS_FOLLOWING_mix_IN_mix_the_mixing_bowl_well_742 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_746 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_mix_the_mixing_bowl_well_748 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_753 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_mix_the_mixing_bowl_well_755 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_759 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_mix_the_mixing_bowl_well_761 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_763 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_mix_the_mixing_bowl_well_765 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_mix_the_mixing_bowl_well_769 = Set[ 54, 55 ]
    TOKENS_FOLLOWING_well_IN_mix_the_mixing_bowl_well_771 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_mix_the_mixing_bowl_well_773 = Set[ 1 ]
    TOKENS_FOLLOWING_add_IN_add_dry_ingredients_789 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_791 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_dry_IN_add_dry_ingredients_793 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_795 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_ingredients_IN_add_dry_ingredients_797 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_800 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_add_dry_ingredients_802 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_807 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_add_dry_ingredients_809 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_813 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_add_dry_ingredients_815 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_add_dry_ingredients_817 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_add_dry_ingredients_819 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_add_dry_ingredients_821 = Set[ 1 ]
    TOKENS_FOLLOWING_combine_IN_combine_ingredient_into_mixing_bowl_837 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_839 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_combine_ingredient_into_mixing_bowl_841 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_843 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_combine_ingredient_into_mixing_bowl_845 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_848 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_combine_ingredient_into_mixing_bowl_850 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_854 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_combine_ingredient_into_mixing_bowl_856 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_858 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_combine_ingredient_into_mixing_bowl_860 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_combine_ingredient_into_mixing_bowl_862 = Set[ 1 ]
    TOKENS_FOLLOWING_combine_IN_combine_ingredient_into_mixing_bowl_870 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_872 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_combine_ingredient_into_mixing_bowl_874 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_876 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_combine_ingredient_into_mixing_bowl_878 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_880 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_combine_ingredient_into_mixing_bowl_882 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_885 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_combine_ingredient_into_mixing_bowl_887 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_891 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_combine_ingredient_into_mixing_bowl_893 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_combine_ingredient_into_mixing_bowl_895 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_combine_ingredient_into_mixing_bowl_897 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_combine_ingredient_into_mixing_bowl_899 = Set[ 1 ]
    TOKENS_FOLLOWING_divide_IN_divide_ingredient_into_mixing_bowl_915 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_917 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_divide_ingredient_into_mixing_bowl_919 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_921 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_divide_ingredient_into_mixing_bowl_923 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_926 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_divide_ingredient_into_mixing_bowl_928 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_932 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_divide_ingredient_into_mixing_bowl_934 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_936 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_divide_ingredient_into_mixing_bowl_938 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_divide_ingredient_into_mixing_bowl_940 = Set[ 1 ]
    TOKENS_FOLLOWING_divide_IN_divide_ingredient_into_mixing_bowl_948 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_950 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_divide_ingredient_into_mixing_bowl_952 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_954 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_divide_ingredient_into_mixing_bowl_956 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_958 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_divide_ingredient_into_mixing_bowl_960 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_963 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_divide_ingredient_into_mixing_bowl_965 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_969 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_divide_ingredient_into_mixing_bowl_971 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_divide_ingredient_into_mixing_bowl_973 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_divide_ingredient_into_mixing_bowl_975 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_divide_ingredient_into_mixing_bowl_977 = Set[ 1 ]
    TOKENS_FOLLOWING_stir_IN_stir_mixing_bowl_993 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_997 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_stir_mixing_bowl_999 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1004 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_stir_mixing_bowl_1006 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1010 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_stir_mixing_bowl_1012 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1014 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_stir_mixing_bowl_1016 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1020 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_for__IN_stir_mixing_bowl_1022 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1024 = Set[ 6 ]
    TOKENS_FOLLOWING_num_IN_stir_mixing_bowl_1026 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_mixing_bowl_1028 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_minutes_IN_stir_mixing_bowl_1030 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_stir_mixing_bowl_1032 = Set[ 1 ]
    TOKENS_FOLLOWING_stir_IN_stir_ingredient_into_the_mixing_bowl_1049 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1051 = Set[ 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_text_IN_stir_ingredient_into_the_mixing_bowl_1053 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1055 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_into_IN_stir_ingredient_into_the_mixing_bowl_1057 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1060 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_stir_ingredient_into_the_mixing_bowl_1062 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1067 = Set[ 7, 8, 9, 10 ]
    TOKENS_FOLLOWING_ordinal_IN_stir_ingredient_into_the_mixing_bowl_1069 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1073 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_mixing_IN_stir_ingredient_into_the_mixing_bowl_1075 = Set[ 4 ]
    TOKENS_FOLLOWING_WS_IN_stir_ingredient_into_the_mixing_bowl_1077 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_bowl_IN_stir_ingredient_into_the_mixing_bowl_1079 = Set[  ]
    TOKENS_FOLLOWING_EOF_IN_stir_ingredient_into_the_mixing_bowl_1081 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_put_1095 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_put_1100 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_put_1105 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_pour_1115 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_pour_1120 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_pour_1125 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_pour_1130 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_liquefy_1143 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_liquefy_1148 = Set[ 26, 27 ]
    TOKENS_FOLLOWING_set_IN_liquefy_1153 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_liquefy_1158 = Set[ 24, 25, 28, 29 ]
    TOKENS_FOLLOWING_set_IN_liquefy_1163 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_liquefy_1172 = Set[ 32, 33 ]
    TOKENS_FOLLOWING_set_IN_liquefy_1177 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_into_1190 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_into_1195 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_into_1200 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_into_1205 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_the_1215 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_set_IN_the_1220 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_the_1225 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_hours_1235 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_hours_1240 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_hours_1245 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_hours_1250 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_hours_1255 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_minutes_1265 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_minutes_1270 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_minutes_1275 = Set[ 14, 15 ]
    TOKENS_FOLLOWING_set_IN_minutes_1280 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_minutes_1285 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_minutes_1290 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_minutes_1295 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_fold_1305 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_fold_1310 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_set_IN_fold_1315 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_fold_1320 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_from_1330 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_from_1335 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_from_1340 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_set_IN_from_1345 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_remove_1355 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_remove_1360 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_set_IN_remove_1365 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_remove_1370 = Set[ 44, 45 ]
    TOKENS_FOLLOWING_set_IN_remove_1375 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_remove_1380 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_clean_1390 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_set_IN_clean_1395 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_clean_1400 = Set[ 48, 49 ]
    TOKENS_FOLLOWING_set_IN_clean_1405 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_clean_1410 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_take_1420 = Set[ 48, 49 ]
    TOKENS_FOLLOWING_set_IN_take_1425 = Set[ 50, 51 ]
    TOKENS_FOLLOWING_set_IN_take_1430 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_take_1435 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_combine_1445 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_combine_1450 = Set[ 40, 41 ]
    TOKENS_FOLLOWING_set_IN_combine_1455 = Set[ 52, 53 ]
    TOKENS_FOLLOWING_set_IN_combine_1460 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_combine_1465 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_combine_1470 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_combine_1475 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_divide_1485 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_divide_1490 = Set[ 44, 45 ]
    TOKENS_FOLLOWING_set_IN_divide_1495 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_divide_1500 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_divide_1505 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_divide_1510 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_serve_1520 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_serve_1525 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_serve_1530 = Set[ 44, 45 ]
    TOKENS_FOLLOWING_set_IN_serve_1535 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_serve_1540 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_with_1550 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_with_1555 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_with_1560 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_set_IN_with_1565 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1578 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1583 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1588 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1593 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1598 = Set[ 56, 57 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1606 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1611 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1616 = Set[ 48, 49 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1621 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1626 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1631 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_refrigerator_1636 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1652 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1657 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1662 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1667 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1672 = Set[ 56, 57 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1680 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1685 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1690 = Set[ 48, 49 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1695 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1700 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_refrigerate_1705 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_mixing_1718 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_mixing_1723 = Set[ 58, 59 ]
    TOKENS_FOLLOWING_set_IN_mixing_1728 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_mixing_1733 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_mixing_1738 = Set[ 56, 57 ]
    TOKENS_FOLLOWING_set_IN_mixing_1743 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_baking_1753 = Set[ 48, 49 ]
    TOKENS_FOLLOWING_set_IN_baking_1758 = Set[ 50, 51 ]
    TOKENS_FOLLOWING_set_IN_baking_1763 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_baking_1768 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_baking_1773 = Set[ 56, 57 ]
    TOKENS_FOLLOWING_set_IN_baking_1778 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_dish_1788 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_dish_1793 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_dish_1798 = Set[ 36, 37 ]
    TOKENS_FOLLOWING_set_IN_dish_1803 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_bowl_1813 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_bowl_1818 = Set[ 54, 55 ]
    TOKENS_FOLLOWING_set_IN_bowl_1823 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_set_IN_bowl_1828 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_until__1838 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_until__1843 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_until__1848 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_until__1853 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_set_IN_until__1858 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_contents_1871 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_contents_1876 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_contents_1881 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_contents_1886 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_contents_1891 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_contents_1896 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_contents_1901 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_contents_1906 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_of_1919 = Set[ 30, 31 ]
    TOKENS_FOLLOWING_set_IN_of_1924 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_for__1934 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_for__1939 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_for__1944 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_to_1954 = Set[ 18, 19 ]
    TOKENS_FOLLOWING_set_IN_to_1959 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_aside_1969 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_aside_1974 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_aside_1979 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_aside_1984 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_aside_1989 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_add_1999 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_add_2004 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_add_2009 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_stir_2019 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_stir_2024 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_stir_2029 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_stir_2034 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_set_2044 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_set_2049 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_set_2054 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_mix_2064 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_mix_2069 = Set[ 58, 59 ]
    TOKENS_FOLLOWING_set_IN_mix_2074 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_well_2084 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_well_2089 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_set_IN_well_2094 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_set_IN_well_2099 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_dry_2109 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_dry_2114 = Set[ 32, 33 ]
    TOKENS_FOLLOWING_set_IN_dry_2119 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2130 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2135 = Set[ 56, 57 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2140 = Set[ 20, 21 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2145 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2150 = Set[ 42, 43 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2158 = Set[ 24, 25 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2163 = Set[ 28, 29 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2168 = Set[ 34, 35 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2173 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2178 = Set[ 38, 39 ]
    TOKENS_FOLLOWING_set_IN_ingredients_2183 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_text_2199 = Set[ 1, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ]
    TOKENS_FOLLOWING_DIGIT_IN_num_2214 = Set[ 1, 6 ]
    TOKENS_FOLLOWING_set_IN_ordinal_2229 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_synpred24_Instructions_410 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_the_IN_synpred24_Instructions_412 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_synpred231_Instructions_2199 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end
# - - - - - - begin action @parser::footer - - - - - -
# Instructions.g


  end

# - - - - - - end action @parser::footer - - - - - - -


