# AYESEC:STATUTORY_HEADER('awk')
# print "AyeVDI by https://ayeai.xyz"
# print "Copyright (C) 2019-2020 Abhishek Choudhary, Dr Srija Katta"
# print ""
# print "NO WARRANTY, and ZERO LIABILITY (Limited to INR 1/- only)"
# print "Further usage of these software, artifacts or methods"
# print "are subject to the 'latest' license agreement avaialble at"
# print "https://raw.githubusercontent.com/ayeai/spl/master/LICENSE"
# print ""
# AYESEC:STATUTORY_HEADER_COMPLETED

BEGIN {
        start=0;
        nodes=0;
        cntr=0;
        print "Using strobefile " strobefile
        system("mkdir -p $(dirname " strobefile ")")
        system("touch " strobefile)
        getline strobe < strobefile
        print "Read strobe value " strobe
        strobe=strobe+1;
}
/.*/ {
        if (start==0){
                nodes=$0;
                start=1;
                #The first input line has node count
                #hence the actual strobe targets will
                #be at strobe + 1
                if (strobe>nodes){
                        strobe=1;
                }
        }
        cntr++;
        #print nodes,cntr,strobe
        if (cntr==(strobe+1)){
                target=$0;
                print strobe > strobefile
                print target
                print "policy: rr target " target
                print "target "target" on strobe " strobe
        }
}
