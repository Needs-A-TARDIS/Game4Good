//this script provided by Lukas Treml on Game Maker's Stack Overflow
//4 Sept 2015
//http://stackoverflow.com/questions/24519643/how-to-split-a-string-into-multiple-strings-if-spaces-are-detected-gmstudio
//rewritten to use array 
var str = argument[0] //string to split
var delimiter = argument[1] // delimiter
var letDelimiter = false // append delimiter to each part
if(argument_count == 3)
    letDelimiter = argument[2]
list[0] = ""
var d_at = string_pos(delimiter, str)
i = 0
while(d_at > 0) {
    var part = string_delete(str, d_at , string_length(str))
    show_debug_message(part)
    if(letDelimiter)
        part = part + delimiter
    str = string_delete(str, 1, d_at)
    d_at = string_pos(delimiter, str)
    list[i] = part
    //if(d_at == 0 && str != "")//last string without delimiter, need to add too
        //list[i] = str
    i = i+1
}
return list;
