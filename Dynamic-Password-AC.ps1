#--------------------------------------------------------------------------------#
# Title:          Dynamic Random Password Generator                              #
# Description:    Generates a random password based on the specified criteria    #
# Author:         Anthony                                                        #
#--------------------------------------------------------------------------------#

Clear-Host

$PasswordLength = 20                  # Max 88

$UpperCaseLetters = (65..90)          # Upper case letters A-Z
$LowerCaseLetters = (97..122)         # Lower case letters a-z
$NumbersZeroThroughNine = (48..57)    # Numbers 0-9
$SpecialCharacters = (33..47)         # Special characters
$MoreSpecialCharacters = (58..64)     # More special characters
$CurlyBrackets = (123..126)           # Curly brackets
 $a =  -join ($UpperCaseLetters + 
            $LowerCaseLetters + 
            $NumbersZeroThroughNine | 
Get-Random -Count $PasswordLength | % {[char]$_}) ## begin concatenating characters
$a
$a | clip ## copy to clipboard
Read-Host "`nCopied to clipboard. Press Enter to continue" 