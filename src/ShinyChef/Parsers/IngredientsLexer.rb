#!/usr/bin/env ruby
#
# Ingredients.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Ingredients.g
# Generated at: 2012-08-05 19:34:45
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

# - - - - - - begin action @lexer::header - - - - - -
# Ingredients.g


  module ::ShinyChef::Parsers

# - - - - - - end action @lexer::header - - - - - - -


module Ingredients
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :T__25 => 25, :T__24 => 24, :LETTER => 7, :T__23 => 23, 
                   :T__22 => 22, :T__21 => 21, :T__20 => 20, :EOF => -1, 
                   :T__9 => 9, :T__8 => 8, :T__19 => 19, :EOL => 5, :T__16 => 16, 
                   :T__15 => 15, :T__18 => 18, :T__17 => 17, :T__12 => 12, 
                   :T__11 => 11, :T__14 => 14, :T__13 => 13, :T__10 => 10, 
                   :DIGIT => 6, :T__42 => 42, :T__43 => 43, :T__40 => 40, 
                   :T__41 => 41, :T__30 => 30, :T__31 => 31, :T__32 => 32, 
                   :T__33 => 33, :WS => 4, :T__34 => 34, :T__35 => 35, :T__36 => 36, 
                   :T__37 => 37, :T__38 => 38, :T__39 => 39 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Ingredients
    include TokenData

    
    begin
      generated_using( "Ingredients.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "T__8", "T__9", "T__10", "T__11", "T__12", "T__13", 
                     "T__14", "T__15", "T__16", "T__17", "T__18", "T__19", 
                     "T__20", "T__21", "T__22", "T__23", "T__24", "T__25", 
                     "T__26", "T__27", "T__28", "T__29", "T__30", "T__31", 
                     "T__32", "T__33", "T__34", "T__35", "T__36", "T__37", 
                     "T__38", "T__39", "T__40", "T__41", "T__42", "T__43", 
                     "DIGIT", "WS", "EOL", "LETTER" ].freeze
    RULE_METHODS = [ :t__8!, :t__9!, :t__10!, :t__11!, :t__12!, :t__13!, 
                     :t__14!, :t__15!, :t__16!, :t__17!, :t__18!, :t__19!, 
                     :t__20!, :t__21!, :t__22!, :t__23!, :t__24!, :t__25!, 
                     :t__26!, :t__27!, :t__28!, :t__29!, :t__30!, :t__31!, 
                     :t__32!, :t__33!, :t__34!, :t__35!, :t__36!, :t__37!, 
                     :t__38!, :t__39!, :t__40!, :t__41!, :t__42!, :t__43!, 
                     :digit!, :ws!, :eol!, :letter! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )

    end
    
    # - - - - - - begin action @lexer::members - - - - - -
    # Ingredients.g


      include ::ShinyChef::Logger

    # - - - - - - end action @lexer::members - - - - - - -

    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__8! (T__8)
    # (in Ingredients.g)
    def t__8!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = T__8
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:8: 'H'
      match( 0x48 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule t__9! (T__9)
    # (in Ingredients.g)
    def t__9!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = T__9
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:8: 'h'
      match( 0x68 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule t__10! (T__10)
    # (in Ingredients.g)
    def t__10!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = T__10
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: 'E'
      match( 0x45 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule t__11! (T__11)
    # (in Ingredients.g)
    def t__11!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = T__11
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: 'e'
      match( 0x65 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule t__12! (T__12)
    # (in Ingredients.g)
    def t__12!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = T__12
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: 'A'
      match( 0x41 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule t__13! (T__13)
    # (in Ingredients.g)
    def t__13!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = T__13
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: 'a'
      match( 0x61 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule t__14! (T__14)
    # (in Ingredients.g)
    def t__14!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = T__14
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:9: 'P'
      match( 0x50 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule t__15! (T__15)
    # (in Ingredients.g)
    def t__15!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = T__15
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:9: 'p'
      match( 0x70 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule t__16! (T__16)
    # (in Ingredients.g)
    def t__16!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = T__16
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:9: 'D'
      match( 0x44 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule t__17! (T__17)
    # (in Ingredients.g)
    def t__17!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = T__17
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:9: 'd'
      match( 0x64 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule t__18! (T__18)
    # (in Ingredients.g)
    def t__18!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = T__18
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:9: 'L'
      match( 0x4c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule t__19! (T__19)
    # (in Ingredients.g)
    def t__19!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = T__19
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:9: 'l'
      match( 0x6c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule t__20! (T__20)
    # (in Ingredients.g)
    def t__20!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = T__20
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: 'V'
      match( 0x56 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule t__21! (T__21)
    # (in Ingredients.g)
    def t__21!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = T__21
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:9: 'v'
      match( 0x76 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule t__22! (T__22)
    # (in Ingredients.g)
    def t__22!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = T__22
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:9: 'M'
      match( 0x4d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule t__23! (T__23)
    # (in Ingredients.g)
    def t__23!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = T__23
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:9: 'm'
      match( 0x6d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule t__24! (T__24)
    # (in Ingredients.g)
    def t__24!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = T__24
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:9: 'S'
      match( 0x53 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule t__25! (T__25)
    # (in Ingredients.g)
    def t__25!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = T__25
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 34:9: 's'
      match( 0x73 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule t__26! (T__26)
    # (in Ingredients.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = T__26
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 35:9: 'g'
      match( 0x67 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule t__27! (T__27)
    # (in Ingredients.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = T__27
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:9: 'G'
      match( 0x47 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule t__28! (T__28)
    # (in Ingredients.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = T__28
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: 'k'
      match( 0x6b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule t__29! (T__29)
    # (in Ingredients.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = T__29
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:9: 'K'
      match( 0x4b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule t__30! (T__30)
    # (in Ingredients.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = T__30
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:9: 'I'
      match( 0x49 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule t__31! (T__31)
    # (in Ingredients.g)
    def t__31!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = T__31
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 40:9: 'i'
      match( 0x69 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule t__32! (T__32)
    # (in Ingredients.g)
    def t__32!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = T__32
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 41:9: 'N'
      match( 0x4e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule t__33! (T__33)
    # (in Ingredients.g)
    def t__33!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = T__33
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 42:9: 'n'
      match( 0x6e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # lexer rule t__34! (T__34)
    # (in Ingredients.g)
    def t__34!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = T__34
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 43:9: 'C'
      match( 0x43 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule t__35! (T__35)
    # (in Ingredients.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 44:9: 'c'
      match( 0x63 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule t__36! (T__36)
    # (in Ingredients.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 45:9: 'T'
      match( 0x54 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule t__37! (T__37)
    # (in Ingredients.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 46:9: 't'
      match( 0x74 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule t__38! (T__38)
    # (in Ingredients.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 47:9: 'O'
      match( 0x4f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule t__39! (T__39)
    # (in Ingredients.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 48:9: 'o'
      match( 0x6f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule t__40! (T__40)
    # (in Ingredients.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 49:9: 'B'
      match( 0x42 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule t__41! (T__41)
    # (in Ingredients.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 50:9: 'b'
      match( 0x62 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule t__42! (T__42)
    # (in Ingredients.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 51:9: 'U'
      match( 0x55 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule t__43! (T__43)
    # (in Ingredients.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 52:9: 'u'
      match( 0x75 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule digit! (DIGIT)
    # (in Ingredients.g)
    def digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      type = DIGIT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 136:8: '0' .. '9'
      match_range( 0x30, 0x39 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )

    end

    # lexer rule ws! (WS)
    # (in Ingredients.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 137:5: ( ' ' | '\\t' )+
      # at file 137:5: ( ' ' | '\\t' )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == 0x9 || look_1_0 == 0x20 )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule eol! (EOL)
    # (in Ingredients.g)
    def eol!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      type = EOL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 138:6: ( '\\r' )? '\\n'
      # at line 138:6: ( '\\r' )?
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == 0xd )
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 138:6: '\\r'
        match( 0xd )

      end
      match( 0xa )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )

    end

    # lexer rule letter! (LETTER)
    # (in Ingredients.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      type = LETTER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 139:9: ( 'a' .. 'z' | 'A' .. 'Z' )
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end



      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | DIGIT | WS | EOL | LETTER )
      alt_3 = 40
      alt_3 = @dfa3.predict( @input )
      case alt_3
      when 1
        # at line 1:10: T__8
        t__8!

      when 2
        # at line 1:15: T__9
        t__9!

      when 3
        # at line 1:20: T__10
        t__10!

      when 4
        # at line 1:26: T__11
        t__11!

      when 5
        # at line 1:32: T__12
        t__12!

      when 6
        # at line 1:38: T__13
        t__13!

      when 7
        # at line 1:44: T__14
        t__14!

      when 8
        # at line 1:50: T__15
        t__15!

      when 9
        # at line 1:56: T__16
        t__16!

      when 10
        # at line 1:62: T__17
        t__17!

      when 11
        # at line 1:68: T__18
        t__18!

      when 12
        # at line 1:74: T__19
        t__19!

      when 13
        # at line 1:80: T__20
        t__20!

      when 14
        # at line 1:86: T__21
        t__21!

      when 15
        # at line 1:92: T__22
        t__22!

      when 16
        # at line 1:98: T__23
        t__23!

      when 17
        # at line 1:104: T__24
        t__24!

      when 18
        # at line 1:110: T__25
        t__25!

      when 19
        # at line 1:116: T__26
        t__26!

      when 20
        # at line 1:122: T__27
        t__27!

      when 21
        # at line 1:128: T__28
        t__28!

      when 22
        # at line 1:134: T__29
        t__29!

      when 23
        # at line 1:140: T__30
        t__30!

      when 24
        # at line 1:146: T__31
        t__31!

      when 25
        # at line 1:152: T__32
        t__32!

      when 26
        # at line 1:158: T__33
        t__33!

      when 27
        # at line 1:164: T__34
        t__34!

      when 28
        # at line 1:170: T__35
        t__35!

      when 29
        # at line 1:176: T__36
        t__36!

      when 30
        # at line 1:182: T__37
        t__37!

      when 31
        # at line 1:188: T__38
        t__38!

      when 32
        # at line 1:194: T__39
        t__39!

      when 33
        # at line 1:200: T__40
        t__40!

      when 34
        # at line 1:206: T__41
        t__41!

      when 35
        # at line 1:212: T__42
        t__42!

      when 36
        # at line 1:218: T__43
        t__43!

      when 37
        # at line 1:224: DIGIT
        digit!

      when 38
        # at line 1:230: WS
        ws!

      when 39
        # at line 1:233: EOL
        eol!

      when 40
        # at line 1:237: LETTER
        letter!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA3 < ANTLR3::DFA
      EOT = unpack( 77, -1 )
      EOF = unpack( 77, -1 )
      MIN = unpack( 1, 9, 76, -1 )
      MAX = unpack( 1, 122, 76, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 14, 1, 
                       15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 1, 21, 1, 
                       22, 1, 23, 1, 24, 1, 25, 1, 26, 1, 27, 1, 28, 1, 
                       29, 1, 30, 1, 31, 1, 32, 1, 33, 1, 34, 1, 35, 1, 
                       36, 1, 37, 1, 38, 1, 39, 1, 40, 1, 1, 1, 2, 1, 3, 
                       1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 
                       1, 12, 1, 13, 1, 14, 1, 15, 1, 16, 1, 17, 1, 18, 
                       1, 19, 1, 20, 1, 21, 1, 22, 1, 23, 1, 24, 1, 25, 
                       1, 26, 1, 27, 1, 28, 1, 29, 1, 30, 1, 31, 1, 32, 
                       1, 33, 1, 34, 1, 35, 1, 36 )
      SPECIAL = unpack( 77, -1 )
      TRANSITION = [
        unpack( 1, 38, 1, 39, 2, -1, 1, 39, 18, -1, 1, 38, 15, -1, 10, 37, 
                7, -1, 1, 5, 1, 33, 1, 27, 1, 9, 1, 3, 1, 40, 1, 20, 1, 
                1, 1, 23, 1, 40, 1, 22, 1, 11, 1, 15, 1, 25, 1, 31, 1, 7, 
                2, 40, 1, 17, 1, 29, 1, 35, 1, 13, 4, 40, 6, -1, 1, 6, 1, 
                34, 1, 28, 1, 10, 1, 4, 1, 40, 1, 19, 1, 2, 1, 24, 1, 40, 
                1, 21, 1, 12, 1, 16, 1, 26, 1, 32, 1, 8, 2, 40, 1, 18, 1, 
                30, 1, 36, 1, 14, 4, 40 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
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
      
      @decision = 3
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | DIGIT | WS | EOL | LETTER );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa3 = DFA3.new( self, 3 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end
# - - - - - - begin action @lexer::footer - - - - - -
# Ingredients.g


  end

# - - - - - - end action @lexer::footer - - - - - - -


