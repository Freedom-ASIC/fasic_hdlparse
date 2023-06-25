UPPERCASE_LETTER            [A-Z]
LOWERCASE_LETTER            [a-z]
LETTER                      {UPPERCASE_LETTER}|{LOWERCASE_LETTER}
DIGIT                       [0-9]
SPACE_CHARACTER             [\x20]
SYMBOL                      [\x20-\x2f]|[\x3a-\x40]|[\x5b-\x60]|[\x7b-\x7e]
GRAPHIC_CHARACTER           {LETTER}|{DIGIT}|{SPACE_CHARACTER}|{SYMBOL}


LETTER_OR_DIGIT             {LETTER}|{DIGIT}

IDENTIFIER                  {LETTER}(_|{LETTER_OR_DIGIT})*

INTEGER                     {DIGIT}(_|{DIGIT})*
EXPONENT                    (E(\+?|-{1}){INTEGER})
DECIMAL_LITERAL             {INTEGER}(\.{INTEGER})?{EXPONENT}?

EXTENDED_DIGIT              {LETTER_OR_DIGIT}
BASED_INTEGER               {EXTENDED_DIGIT}(_|{EXTENDED_DIGIT})*
BASE                        {INTEGER}
BASED_LITERAL               {BASE}\#{BASED_INTEGER}(\.{BASED_INTEGER})?\#{EXPONENT}?

ABSTRACT_LITERAL            {BASED_LITERAL}|{DECIMAL_LITERAL}

CHARACTER_LITERAL           \'{GRAPHIC_CHARACTER}\'

STRING_LITERAL              \"{GRAPHIC_CHARACTER}*\"

BASE_SPECIFIER              [BOXbox]
BIT_VALUE                   {EXTENDED_DIGIT}(_|{EXTENDED_DIGIT})*
BIT_STRING_LITERAL          {BASE_SPECIFIER}{1}\"({BIT_VALUE}){0,1}\"

BASIC_DELIMITER             [&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\|\[\]]
COMPOUND_DELIMITER          ("=>"|"**"|":="|"/="|">="|"<="|"<>")
DELIMITER                   {BASIC_DELIMITER}|{COMPOUND_DELIMITER}

COMMENT                     "--".*$

%option reentrant
%option noyywrap

%%
"abs"                   { printf("MATCH! %s\n", yytext); }
"access"                { printf("MATCH! %s\n", yytext); }
"after"                 { printf("MATCH! %s\n", yytext); }
"alias"                 { printf("MATCH! %s\n", yytext); }
"all"                   { printf("MATCH! %s\n", yytext); }
"and"                   { printf("MATCH! %s\n", yytext); }
"architecture"          { printf("MATCH! %s\n", yytext); }
"array"                 { printf("MATCH! %s\n", yytext); }
"assert"                { printf("MATCH! %s\n", yytext); }
"attribute"             { printf("MATCH! %s\n", yytext); }
"begin"                 { printf("MATCH! %s\n", yytext); }
"block"                 { printf("MATCH! %s\n", yytext); }
"body"                  { printf("MATCH! %s\n", yytext); }
"buffer"                { printf("MATCH! %s\n", yytext); }
"bus"                   { printf("MATCH! %s\n", yytext); }
"case"                  { printf("MATCH! %s\n", yytext); }
"component"             { printf("MATCH! %s\n", yytext); }
"configuration"         { printf("MATCH! %s\n", yytext); }
"constant"              { printf("MATCH! %s\n", yytext); }
"disconnect"            { printf("MATCH! %s\n", yytext); }
"downto"                { printf("MATCH! %s\n", yytext); }
"else"                  { printf("MATCH! %s\n", yytext); }
"elsif"                 { printf("MATCH! %s\n", yytext); }
"end"                   { printf("MATCH! %s\n", yytext); }
"entity"                { printf("MATCH! %s\n", yytext); }
"exit"                  { printf("MATCH! %s\n", yytext); }
"file"                  { printf("MATCH! %s\n", yytext); }
"for"                   { printf("MATCH! %s\n", yytext); }
"function"              { printf("MATCH! %s\n", yytext); }
"generate"              { printf("MATCH! %s\n", yytext); }
"generic"               { printf("MATCH! %s\n", yytext); }
"group"                 { printf("MATCH! %s\n", yytext); }
"guarded"               { printf("MATCH! %s\n", yytext); }
"if"                    { printf("MATCH! %s\n", yytext); }
"impure"                { printf("MATCH! %s\n", yytext); }
"in"                    { printf("MATCH! %s\n", yytext); }
"intertial"             { printf("MATCH! %s\n", yytext); }
"inout"                 { printf("MATCH! %s\n", yytext); }
"is"                    { printf("MATCH! %s\n", yytext); }
"label"                 { printf("MATCH! %s\n", yytext); }
"library"               { printf("MATCH! %s\n", yytext); }
"linkage"               { printf("MATCH! %s\n", yytext); }
"literal"               { printf("MATCH! %s\n", yytext); }
"loop"                  { printf("MATCH! %s\n", yytext); }
"map"                   { printf("MATCH! %s\n", yytext); }
"mod"                   { printf("MATCH! %s\n", yytext); }
"nand"                  { printf("MATCH! %s\n", yytext); }
"new"                   { printf("MATCH! %s\n", yytext); }
"next"                  { printf("MATCH! %s\n", yytext); }
"nor"                   { printf("MATCH! %s\n", yytext); }
"not"                   { printf("MATCH! %s\n", yytext); }
"null"                  { printf("MATCH! %s\n", yytext); }
"of"                    { printf("MATCH! %s\n", yytext); }
"on"                    { printf("MATCH! %s\n", yytext); }
"open"                  { printf("MATCH! %s\n", yytext); }
"or"                    { printf("MATCH! %s\n", yytext); }
"others"                { printf("MATCH! %s\n", yytext); }
"out"                   { printf("MATCH! %s\n", yytext); }
"package"               { printf("MATCH! %s\n", yytext); }
"port"                  { printf("MATCH! %s\n", yytext); }
"postponed"             { printf("MATCH! %s\n", yytext); }
"procedure"             { printf("MATCH! %s\n", yytext); }
"process"               { printf("MATCH! %s\n", yytext); }
"pure"                  { printf("MATCH! %s\n", yytext); }
"range"                 { printf("MATCH! %s\n", yytext); }
"record"                { printf("MATCH! %s\n", yytext); }
"register"              { printf("MATCH! %s\n", yytext); }
"reject"                { printf("MATCH! %s\n", yytext); }
"rem"                   { printf("MATCH! %s\n", yytext); }
"report"                { printf("MATCH! %s\n", yytext); }
"return"                { printf("MATCH! %s\n", yytext); }
"rol"                   { printf("MATCH! %s\n", yytext); }
"ror"                   { printf("MATCH! %s\n", yytext); }
"select"                { printf("MATCH! %s\n", yytext); }
"severity"              { printf("MATCH! %s\n", yytext); }
"signal"                { printf("MATCH! %s\n", yytext); }
"shared"                { printf("MATCH! %s\n", yytext); }
"sla"                   { printf("MATCH! %s\n", yytext); }
"sll"                   { printf("MATCH! %s\n", yytext); }
"sra"                   { printf("MATCH! %s\n", yytext); }
"srl"                   { printf("MATCH! %s\n", yytext); }
"subtype"               { printf("MATCH! %s\n", yytext); }
"then"                  { printf("MATCH! %s\n", yytext); }
"to"                    { printf("MATCH! %s\n", yytext); }
"transport"             { printf("MATCH! %s\n", yytext); }
"type"                  { printf("MATCH! %s\n", yytext); }
"unaffected"            { printf("MATCH! %s\n", yytext); }
"units"                 { printf("MATCH! %s\n", yytext); }
"until"                 { printf("MATCH! %s\n", yytext); }
"use"                   { printf("MATCH! %s\n", yytext); }
"variable"              { printf("MATCH! %s\n", yytext); }
"wait"                  { printf("MATCH! %s\n", yytext); }
"when"                  { printf("MATCH! %s\n", yytext); }
"while"                 { printf("MATCH! %s\n", yytext); }
"with"                  { printf("MATCH! %s\n", yytext); }
"xnor"                  { printf("MATCH! %s\n", yytext); }
"xor"                   { printf("MATCH! %s\n", yytext); }
{IDENTIFIER}            { printf("MATCH! ID: %s\n", yytext); }
{ABSTRACT_LITERAL}      { printf("MATCH! AL: %s\n", yytext); }
{CHARACTER_LITERAL}     { printf("MATCH! CL: %s\n", yytext); }
{STRING_LITERAL}        { printf("MATCH! SL: %s\n", yytext); }
{BIT_STRING_LITERAL}    { printf("MATCH! BL: %s\n", yytext); }
{DELIMITER}             { printf("MATCH! DL: %s\n", yytext); }
{COMMENT}               { printf("MATCH! CO: %s\n", yytext); }
.*                      { printf("NO MATCH!\n"); }
%%