//read from the situation description
desc = global.sitList[global.sitID,0];
//cut off the part about indicators
cut_string = string_split(desc, "|")
show_debug_message('cut_string')
for(i=0;i<array_length_1d(cut_string);i+=1) {
        show_debug_message(string(cut_string[i]))
}
if(array_length_1d(cut_string)>2) {
    //cut up the indicators and figure out what their values are 
    indTmp = string_split(cut_string[1]," ")
    //
    show_debug_message('indicator array')
    for(i=0;i<4;i+=1) {
        show_debug_message(string(indTmp[i]))
    }
    //match str names to indicators 
    //Indicators in the following order: Health, social, confidence, knowledge
    //TODO preventing - numbers code 
}


