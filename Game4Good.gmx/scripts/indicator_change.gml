tI = global.sitList[global.sitID,1] 
nI = 4
ds = " "
for (i=0;i<nI;i+=1) {
    global.indic[i] = global.indic[i] + tI[i] 
    if(global.indic[i]<0) {
        global.indic[i] = 0
    }
    ds = ds+string(global.indic[i])+" "
}
show_debug_message("indicator list:"+ds) 
