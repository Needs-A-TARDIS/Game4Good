//read from the situation description
desc = global.sitList[global.sitID,0];
//cut off the part about indicators
cut_string = string_split(desc, "|")
if(array_length_1d(cut_string)>2) {
    //cut up the indicators and figure out what their values are 
    indTmp = string_split(cut_string[1]," ")
    //
    for(i=0;i<4;i+=1) {
        show_debug_message(indTmp[i])
    }
}

//TODO: match str names to indicators 
