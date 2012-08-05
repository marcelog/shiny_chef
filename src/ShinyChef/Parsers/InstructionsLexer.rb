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

# - - - - - - begin action @lexer::header - - - - - -
# Instructions.g


  module ::ShinyChef::Parsers

# - - - - - - end action @lexer::header - - - - - - -


module Instructions
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :RD => 9, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :T__25 => 25, :T__24 => 24, :T__23 => 23, :LETTER => 11, 
                   :T__22 => 22, :T__21 => 21, :T__20 => 20, :EOF => -1, 
                   :T__55 => 55, :T__19 => 19, :T__56 => 56, :T__57 => 57, 
                   :T__58 => 58, :EOL => 5, :T__16 => 16, :T__51 => 51, 
                   :T__52 => 52, :T__15 => 15, :T__53 => 53, :T__18 => 18, 
                   :T__54 => 54, :T__17 => 17, :T__12 => 12, :T__14 => 14, 
                   :T__13 => 13, :T__59 => 59, :DIGIT => 6, :T__50 => 50, 
                   :ND => 8, :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                   :T__46 => 46, :T__47 => 47, :T__44 => 44, :T__45 => 45, 
                   :TH => 10, :T__48 => 48, :T__49 => 49, :ST => 7, :T__30 => 30, 
                   :T__31 => 31, :T__32 => 32, :T__33 => 33, :WS => 4, :T__34 => 34, 
                   :T__35 => 35, :T__36 => 36, :T__37 => 37, :T__38 => 38, 
                   :T__39 => 39 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Instructions
    include TokenData

    
    begin
      generated_using( "Instructions.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "T__12", "T__13", "T__14", "T__15", "T__16", "T__17", 
                     "T__18", "T__19", "T__20", "T__21", "T__22", "T__23", 
                     "T__24", "T__25", "T__26", "T__27", "T__28", "T__29", 
                     "T__30", "T__31", "T__32", "T__33", "T__34", "T__35", 
                     "T__36", "T__37", "T__38", "T__39", "T__40", "T__41", 
                     "T__42", "T__43", "T__44", "T__45", "T__46", "T__47", 
                     "T__48", "T__49", "T__50", "T__51", "T__52", "T__53", 
                     "T__54", "T__55", "T__56", "T__57", "T__58", "T__59", 
                     "ST", "ND", "RD", "TH", "DIGIT", "WS", "EOL", "LETTER" ].freeze
    RULE_METHODS = [ :t__12!, :t__13!, :t__14!, :t__15!, :t__16!, :t__17!, 
                     :t__18!, :t__19!, :t__20!, :t__21!, :t__22!, :t__23!, 
                     :t__24!, :t__25!, :t__26!, :t__27!, :t__28!, :t__29!, 
                     :t__30!, :t__31!, :t__32!, :t__33!, :t__34!, :t__35!, 
                     :t__36!, :t__37!, :t__38!, :t__39!, :t__40!, :t__41!, 
                     :t__42!, :t__43!, :t__44!, :t__45!, :t__46!, :t__47!, 
                     :t__48!, :t__49!, :t__50!, :t__51!, :t__52!, :t__53!, 
                     :t__54!, :t__55!, :t__56!, :t__57!, :t__58!, :t__59!, 
                     :st!, :nd!, :rd!, :th!, :digit!, :ws!, :eol!, :letter! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )

    end
    
    # - - - - - - begin action @lexer::members - - - - - -
    # Instructions.g


      include ::ShinyChef::Logger

    # - - - - - - end action @lexer::members - - - - - - -

    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__12! (T__12)
    # (in Instructions.g)
    def t__12!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = T__12
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:9: 'P'
      match( 0x50 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule t__13! (T__13)
    # (in Instructions.g)
    def t__13!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = T__13
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:9: 'p'
      match( 0x70 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule t__14! (T__14)
    # (in Instructions.g)
    def t__14!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = T__14
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: 'U'
      match( 0x55 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule t__15! (T__15)
    # (in Instructions.g)
    def t__15!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = T__15
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: 'u'
      match( 0x75 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule t__16! (T__16)
    # (in Instructions.g)
    def t__16!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = T__16
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: 'T'
      match( 0x54 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule t__17! (T__17)
    # (in Instructions.g)
    def t__17!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = T__17
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: 't'
      match( 0x74 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule t__18! (T__18)
    # (in Instructions.g)
    def t__18!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = T__18
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:9: 'O'
      match( 0x4f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule t__19! (T__19)
    # (in Instructions.g)
    def t__19!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = T__19
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:9: 'o'
      match( 0x6f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule t__20! (T__20)
    # (in Instructions.g)
    def t__20!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = T__20
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:9: 'R'
      match( 0x52 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule t__21! (T__21)
    # (in Instructions.g)
    def t__21!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = T__21
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:9: 'r'
      match( 0x72 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule t__22! (T__22)
    # (in Instructions.g)
    def t__22!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = T__22
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

    # lexer rule t__23! (T__23)
    # (in Instructions.g)
    def t__23!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = T__23
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

    # lexer rule t__24! (T__24)
    # (in Instructions.g)
    def t__24!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = T__24
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: 'I'
      match( 0x49 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule t__25! (T__25)
    # (in Instructions.g)
    def t__25!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = T__25
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:9: 'i'
      match( 0x69 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule t__26! (T__26)
    # (in Instructions.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = T__26
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:9: 'Q'
      match( 0x51 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule t__27! (T__27)
    # (in Instructions.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = T__27
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:9: 'q'
      match( 0x71 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule t__28! (T__28)
    # (in Instructions.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = T__28
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:9: 'E'
      match( 0x45 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule t__29! (T__29)
    # (in Instructions.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = T__29
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 34:9: 'e'
      match( 0x65 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule t__30! (T__30)
    # (in Instructions.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = T__30
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 35:9: 'F'
      match( 0x46 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule t__31! (T__31)
    # (in Instructions.g)
    def t__31!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = T__31
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:9: 'f'
      match( 0x66 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule t__32! (T__32)
    # (in Instructions.g)
    def t__32!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = T__32
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: 'Y'
      match( 0x59 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule t__33! (T__33)
    # (in Instructions.g)
    def t__33!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = T__33
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:9: 'y'
      match( 0x79 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule t__34! (T__34)
    # (in Instructions.g)
    def t__34!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = T__34
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:9: 'N'
      match( 0x4e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule t__35! (T__35)
    # (in Instructions.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 40:9: 'n'
      match( 0x6e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule t__36! (T__36)
    # (in Instructions.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 41:9: 'H'
      match( 0x48 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule t__37! (T__37)
    # (in Instructions.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 42:9: 'h'
      match( 0x68 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # lexer rule t__38! (T__38)
    # (in Instructions.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 43:9: 'S'
      match( 0x53 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule t__39! (T__39)
    # (in Instructions.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 44:9: 's'
      match( 0x73 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule t__40! (T__40)
    # (in Instructions.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 45:9: 'M'
      match( 0x4d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule t__41! (T__41)
    # (in Instructions.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 46:9: 'm'
      match( 0x6d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule t__42! (T__42)
    # (in Instructions.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 47:9: 'D'
      match( 0x44 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule t__43! (T__43)
    # (in Instructions.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 48:9: 'd'
      match( 0x64 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule t__44! (T__44)
    # (in Instructions.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 49:9: 'V'
      match( 0x56 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule t__45! (T__45)
    # (in Instructions.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 50:9: 'v'
      match( 0x76 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule t__46! (T__46)
    # (in Instructions.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 51:9: 'C'
      match( 0x43 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule t__47! (T__47)
    # (in Instructions.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 52:9: 'c'
      match( 0x63 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule t__48! (T__48)
    # (in Instructions.g)
    def t__48!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      type = T__48
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 53:9: 'A'
      match( 0x41 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )

    end

    # lexer rule t__49! (T__49)
    # (in Instructions.g)
    def t__49!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      type = T__49
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 54:9: 'a'
      match( 0x61 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule t__50! (T__50)
    # (in Instructions.g)
    def t__50!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      type = T__50
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 55:9: 'K'
      match( 0x4b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )

    end

    # lexer rule t__51! (T__51)
    # (in Instructions.g)
    def t__51!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      type = T__51
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 56:9: 'k'
      match( 0x6b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # lexer rule t__52! (T__52)
    # (in Instructions.g)
    def t__52!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )

      type = T__52
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 57:9: 'B'
      match( 0x42 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )

    end

    # lexer rule t__53! (T__53)
    # (in Instructions.g)
    def t__53!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )

      type = T__53
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 58:9: 'b'
      match( 0x62 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )

    end

    # lexer rule t__54! (T__54)
    # (in Instructions.g)
    def t__54!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )

      type = T__54
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 59:9: 'W'
      match( 0x57 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )

    end

    # lexer rule t__55! (T__55)
    # (in Instructions.g)
    def t__55!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )

      type = T__55
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 60:9: 'w'
      match( 0x77 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )

    end

    # lexer rule t__56! (T__56)
    # (in Instructions.g)
    def t__56!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )

      type = T__56
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 61:9: 'G'
      match( 0x47 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )

    end

    # lexer rule t__57! (T__57)
    # (in Instructions.g)
    def t__57!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )

      type = T__57
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 62:9: 'g'
      match( 0x67 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )

    end

    # lexer rule t__58! (T__58)
    # (in Instructions.g)
    def t__58!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )

      type = T__58
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 63:9: 'X'
      match( 0x58 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )

    end

    # lexer rule t__59! (T__59)
    # (in Instructions.g)
    def t__59!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )

      type = T__59
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 64:9: 'x'
      match( 0x78 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )

    end

    # lexer rule st! (ST)
    # (in Instructions.g)
    def st!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )

      type = ST
      channel = ANTLR3::DEFAULT_CHANNEL
      # - - - - label initialization - - - -
      d = nil


      
      # - - - - main rule block - - - -
      # at line 348:5: d= ( ( DIGIT )* ) '1' ( 'S' | 's' ) ( 'T' | 't' )
      # at line 348:7: ( ( DIGIT )* )
      # at line 348:8: ( DIGIT )*
      # at line 348:8: ( DIGIT )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == 0x31 )
          look_1_1 = @input.peek( 2 )

          if ( look_1_1.between?( 0x30, 0x39 ) )
            alt_1 = 1

          end
        elsif ( look_1_0 == 0x30 || look_1_0.between?( 0x32, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 348:8: DIGIT
          digit!

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      match( 0x31 )
      if @input.peek(1) == 0x53 || @input.peek(1) == 0x73
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      if @input.peek(1) == 0x54 || @input.peek(1) == 0x74
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
      # trace_out( __method__, 49 )

    end

    # lexer rule nd! (ND)
    # (in Instructions.g)
    def nd!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )

      type = ND
      channel = ANTLR3::DEFAULT_CHANNEL
      # - - - - label initialization - - - -
      d = nil


      
      # - - - - main rule block - - - -
      # at line 349:5: d= ( ( DIGIT )* ) '2' ( 'N' | 'n' ) ( 'D' | 'd' )
      # at line 349:7: ( ( DIGIT )* )
      # at line 349:8: ( DIGIT )*
      # at line 349:8: ( DIGIT )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == 0x32 )
          look_2_1 = @input.peek( 2 )

          if ( look_2_1.between?( 0x30, 0x39 ) )
            alt_2 = 1

          end
        elsif ( look_2_0.between?( 0x30, 0x31 ) || look_2_0.between?( 0x33, 0x39 ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 349:8: DIGIT
          digit!

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      match( 0x32 )
      if @input.peek(1) == 0x4e || @input.peek(1) == 0x6e
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      if @input.peek(1) == 0x44 || @input.peek(1) == 0x64
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
      # trace_out( __method__, 50 )

    end

    # lexer rule rd! (RD)
    # (in Instructions.g)
    def rd!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )

      type = RD
      channel = ANTLR3::DEFAULT_CHANNEL
      # - - - - label initialization - - - -
      d = nil


      
      # - - - - main rule block - - - -
      # at line 350:5: d= ( ( DIGIT )* ) '3' ( 'R' | 'r' ) ( 'D' | 'd' )
      # at line 350:7: ( ( DIGIT )* )
      # at line 350:8: ( DIGIT )*
      # at line 350:8: ( DIGIT )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == 0x33 )
          look_3_1 = @input.peek( 2 )

          if ( look_3_1.between?( 0x30, 0x39 ) )
            alt_3 = 1

          end
        elsif ( look_3_0.between?( 0x30, 0x32 ) || look_3_0.between?( 0x34, 0x39 ) )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 350:8: DIGIT
          digit!

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      match( 0x33 )
      if @input.peek(1) == 0x52 || @input.peek(1) == 0x72
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      if @input.peek(1) == 0x44 || @input.peek(1) == 0x64
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
      # trace_out( __method__, 51 )

    end

    # lexer rule th! (TH)
    # (in Instructions.g)
    def th!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )

      type = TH
      channel = ANTLR3::DEFAULT_CHANNEL
      # - - - - label initialization - - - -
      d = nil


      
      # - - - - main rule block - - - -
      # at line 351:5: d= ( ( DIGIT )* ) DIGIT ( 'T' | 't' ) ( 'H' | 'h' )
      # at line 351:7: ( ( DIGIT )* )
      # at line 351:8: ( DIGIT )*
      # at line 351:8: ( DIGIT )*
      while true # decision 4
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0.between?( 0x30, 0x39 ) )
          look_4_1 = @input.peek( 2 )

          if ( look_4_1.between?( 0x30, 0x39 ) )
            alt_4 = 1

          end

        end
        case alt_4
        when 1
          # at line 351:8: DIGIT
          digit!

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4

      digit!
      if @input.peek(1) == 0x54 || @input.peek(1) == 0x74
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      if @input.peek(1) == 0x48 || @input.peek(1) == 0x68
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
      # trace_out( __method__, 52 )

    end

    # lexer rule digit! (DIGIT)
    # (in Instructions.g)
    def digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )

      type = DIGIT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 352:8: '0' .. '9'
      match_range( 0x30, 0x39 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 53 )

    end

    # lexer rule ws! (WS)
    # (in Instructions.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 353:5: ( ' ' | '\\t' )+
      # at file 353:5: ( ' ' | '\\t' )+
      match_count_5 = 0
      while true
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == 0x9 || look_5_0 == 0x20 )
          alt_5 = 1

        end
        case alt_5
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
          match_count_5 > 0 and break
          eee = EarlyExit(5)


          raise eee
        end
        match_count_5 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 54 )

    end

    # lexer rule eol! (EOL)
    # (in Instructions.g)
    def eol!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )

      type = EOL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 354:6: ( '\\r' )? '\\n'
      # at line 354:6: ( '\\r' )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == 0xd )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 354:6: '\\r'
        match( 0xd )

      end
      match( 0xa )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 55 )

    end

    # lexer rule letter! (LETTER)
    # (in Instructions.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )

      type = LETTER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 355:9: ( 'a' .. 'z' | 'A' .. 'Z' )
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
      # trace_out( __method__, 56 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | ST | ND | RD | TH | DIGIT | WS | EOL | LETTER )
      alt_7 = 56
      alt_7 = @dfa7.predict( @input )
      case alt_7
      when 1
        # at line 1:10: T__12
        t__12!

      when 2
        # at line 1:16: T__13
        t__13!

      when 3
        # at line 1:22: T__14
        t__14!

      when 4
        # at line 1:28: T__15
        t__15!

      when 5
        # at line 1:34: T__16
        t__16!

      when 6
        # at line 1:40: T__17
        t__17!

      when 7
        # at line 1:46: T__18
        t__18!

      when 8
        # at line 1:52: T__19
        t__19!

      when 9
        # at line 1:58: T__20
        t__20!

      when 10
        # at line 1:64: T__21
        t__21!

      when 11
        # at line 1:70: T__22
        t__22!

      when 12
        # at line 1:76: T__23
        t__23!

      when 13
        # at line 1:82: T__24
        t__24!

      when 14
        # at line 1:88: T__25
        t__25!

      when 15
        # at line 1:94: T__26
        t__26!

      when 16
        # at line 1:100: T__27
        t__27!

      when 17
        # at line 1:106: T__28
        t__28!

      when 18
        # at line 1:112: T__29
        t__29!

      when 19
        # at line 1:118: T__30
        t__30!

      when 20
        # at line 1:124: T__31
        t__31!

      when 21
        # at line 1:130: T__32
        t__32!

      when 22
        # at line 1:136: T__33
        t__33!

      when 23
        # at line 1:142: T__34
        t__34!

      when 24
        # at line 1:148: T__35
        t__35!

      when 25
        # at line 1:154: T__36
        t__36!

      when 26
        # at line 1:160: T__37
        t__37!

      when 27
        # at line 1:166: T__38
        t__38!

      when 28
        # at line 1:172: T__39
        t__39!

      when 29
        # at line 1:178: T__40
        t__40!

      when 30
        # at line 1:184: T__41
        t__41!

      when 31
        # at line 1:190: T__42
        t__42!

      when 32
        # at line 1:196: T__43
        t__43!

      when 33
        # at line 1:202: T__44
        t__44!

      when 34
        # at line 1:208: T__45
        t__45!

      when 35
        # at line 1:214: T__46
        t__46!

      when 36
        # at line 1:220: T__47
        t__47!

      when 37
        # at line 1:226: T__48
        t__48!

      when 38
        # at line 1:232: T__49
        t__49!

      when 39
        # at line 1:238: T__50
        t__50!

      when 40
        # at line 1:244: T__51
        t__51!

      when 41
        # at line 1:250: T__52
        t__52!

      when 42
        # at line 1:256: T__53
        t__53!

      when 43
        # at line 1:262: T__54
        t__54!

      when 44
        # at line 1:268: T__55
        t__55!

      when 45
        # at line 1:274: T__56
        t__56!

      when 46
        # at line 1:280: T__57
        t__57!

      when 47
        # at line 1:286: T__58
        t__58!

      when 48
        # at line 1:292: T__59
        t__59!

      when 49
        # at line 1:298: ST
        st!

      when 50
        # at line 1:301: ND
        nd!

      when 51
        # at line 1:304: RD
        rd!

      when 52
        # at line 1:307: TH
        th!

      when 53
        # at line 1:310: DIGIT
        digit!

      when 54
        # at line 1:316: WS
        ws!

      when 55
        # at line 1:319: EOL
        eol!

      when 56
        # at line 1:323: LETTER
        letter!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA7 < ANTLR3::DFA
      EOT = unpack( 49, -1, 4, 105, 60, -1 )
      EOF = unpack( 113, -1 )
      MIN = unpack( 1, 9, 48, -1, 4, 48, 53, -1, 4, 48, 3, -1 )
      MAX = unpack( 1, 122, 48, -1, 4, 116, 53, -1, 4, 116, 3, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 14, 1, 
                       15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 1, 21, 1, 
                       22, 1, 23, 1, 24, 1, 25, 1, 26, 1, 27, 1, 28, 1, 
                       29, 1, 30, 1, 31, 1, 32, 1, 33, 1, 34, 1, 35, 1, 
                       36, 1, 37, 1, 38, 1, 39, 1, 40, 1, 41, 1, 42, 1, 
                       43, 1, 44, 1, 45, 1, 46, 1, 47, 1, 48, 4, -1, 1, 
                       54, 1, 55, 1, 56, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 
                       6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 
                       1, 14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 
                       1, 21, 1, 22, 1, 23, 1, 24, 1, 25, 1, 26, 1, 27, 
                       1, 28, 1, 29, 1, 30, 1, 31, 1, 32, 1, 33, 1, 34, 
                       1, 35, 1, 36, 1, 37, 1, 38, 1, 39, 1, 40, 1, 41, 
                       1, 42, 1, 43, 1, 44, 1, 45, 1, 46, 1, 47, 1, 48, 
                       1, 49, 1, 53, 4, -1, 1, 52, 1, 50, 1, 51 )
      SPECIAL = unpack( 113, -1 )
      TRANSITION = [
        unpack( 1, 53, 1, 54, 2, -1, 1, 54, 18, -1, 1, 53, 15, -1, 1, 52, 
                1, 49, 1, 50, 1, 51, 6, 52, 7, -1, 1, 37, 1, 41, 1, 35, 
                1, 31, 1, 17, 1, 19, 1, 45, 1, 25, 1, 13, 1, 55, 1, 39, 
                1, 11, 1, 29, 1, 23, 1, 7, 1, 1, 1, 15, 1, 9, 1, 27, 1, 
                5, 1, 3, 1, 33, 1, 43, 1, 47, 1, 21, 1, 55, 6, -1, 1, 38, 
                1, 42, 1, 36, 1, 32, 1, 18, 1, 20, 1, 46, 1, 26, 1, 14, 
                1, 55, 1, 40, 1, 12, 1, 30, 1, 24, 1, 8, 1, 2, 1, 16, 1, 
                10, 1, 28, 1, 6, 1, 4, 1, 34, 1, 44, 1, 48, 1, 22, 1, 55 ),
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
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 25, -1, 1, 104, 
                 1, 110, 30, -1, 1, 104, 1, 110 ),
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 20, -1, 1, 111, 
                 5, -1, 1, 110, 25, -1, 1, 111, 5, -1, 1, 110 ),
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 24, -1, 1, 112, 
                 1, -1, 1, 110, 29, -1, 1, 112, 1, -1, 1, 110 ),
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 26, -1, 1, 110, 
                 31, -1, 1, 110 ),
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
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 25, -1, 1, 104, 
                 1, 110, 30, -1, 1, 104, 1, 110 ),
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 20, -1, 1, 111, 
                 5, -1, 1, 110, 25, -1, 1, 111, 5, -1, 1, 110 ),
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 24, -1, 1, 112, 
                 1, -1, 1, 110, 29, -1, 1, 112, 1, -1, 1, 110 ),
        unpack( 1, 109, 1, 106, 1, 107, 1, 108, 6, 109, 26, -1, 1, 110, 
                 31, -1, 1, 110 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 7
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | ST | ND | RD | TH | DIGIT | WS | EOL | LETTER );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa7 = DFA7.new( self, 7 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end
# - - - - - - begin action @lexer::footer - - - - - -
# Instructions.g


  end

# - - - - - - end action @lexer::footer - - - - - - -


