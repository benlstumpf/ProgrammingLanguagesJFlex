


%%

%standalone         /* The produced java file has a main */
%class  MyScanner   /* Names the produced java file */
%function nextToken /* Renames the yylex() function */
%type   String      /* Defines the return type of the scanning function */
%eofval{
  return null;
%eofval}

/* Patterns */

other         = .
letter        = [A-Za-z]
word          = {letter}+
whitespace    = [ \n\t]
digit         = [0-9]
number        = {digit}+
comment       = [//]{other}*
blockComment  = [\/\*][^]*[\*\/]
%%
/* Lexical Rules */

{word}     {
             /** Print out the word that was found. */
             System.out.println("Found a word: " + yytext());
             //return( yytext());
            }

{whitespace}  {  /* Ignore Whitespace */
               return "";
              }

{other}    {
            System.out.println("Illegal char: '" + yytext() + "' found.");
            //return "";
           }

{number}   {
          System.out.println("Found a number " +yytext());
          //return( yytext());
          }

{comment}    {
            return "";

           }

{blockComment}    {
          return "";
          }
