# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"BBEC.00","system":"readv2"},{"code":"B326500","system":"readv2"},{"code":"BBEM.00","system":"readv2"},{"code":"BBEG.00","system":"readv2"},{"code":"B327100","system":"readv2"},{"code":"B326100","system":"readv2"},{"code":"B327000","system":"readv2"},{"code":"BBE1100","system":"readv2"},{"code":"B325.00","system":"readv2"},{"code":"B828700","system":"readv2"},{"code":"B325100","system":"readv2"},{"code":"B327300","system":"readv2"},{"code":"4M74.00","system":"readv2"},{"code":"B828300","system":"readv2"},{"code":"BBE..00","system":"readv2"},{"code":"BBE2.00","system":"readv2"},{"code":"1425000","system":"readv2"},{"code":"B320.00","system":"readv2"},{"code":"B323200","system":"readv2"},{"code":"ByuF600","system":"readv2"},{"code":"B327800","system":"readv2"},{"code":"B828400","system":"readv2"},{"code":"B325600","system":"readv2"},{"code":"B327900","system":"readv2"},{"code":"B326200","system":"readv2"},{"code":"B325200","system":"readv2"},{"code":"4M71.00","system":"readv2"},{"code":"BBEH.00","system":"readv2"},{"code":"B323400","system":"readv2"},{"code":"B325000","system":"readv2"},{"code":"4M70.00","system":"readv2"},{"code":"B325300","system":"readv2"},{"code":"4M3..00","system":"readv2"},{"code":"B828100","system":"readv2"},{"code":"B321.00","system":"readv2"},{"code":"BBEG.11","system":"readv2"},{"code":"B828600","system":"readv2"},{"code":"B325500","system":"readv2"},{"code":"B327.00","system":"readv2"},{"code":"B324.00","system":"readv2"},{"code":"B326.00","system":"readv2"},{"code":"B322000","system":"readv2"},{"code":"B327500","system":"readv2"},{"code":"B828900","system":"readv2"},{"code":"B323500","system":"readv2"},{"code":"4M73.00","system":"readv2"},{"code":"B326400","system":"readv2"},{"code":"BBET.00","system":"readv2"},{"code":"B324100","system":"readv2"},{"code":"4M72.00","system":"readv2"},{"code":"BBE4.00","system":"readv2"},{"code":"B828200","system":"readv2"},{"code":"7G03J00","system":"readv2"},{"code":"B322.00","system":"readv2"},{"code":"BBEX.00","system":"readv2"},{"code":"B327700","system":"readv2"},{"code":"BBEA.00","system":"readv2"},{"code":"B326000","system":"readv2"},{"code":"B326300","system":"readv2"},{"code":"B323100","system":"readv2"},{"code":"B327400","system":"readv2"},{"code":"B324000","system":"readv2"},{"code":"B828000","system":"readv2"},{"code":"B325700","system":"readv2"},{"code":"B325800","system":"readv2"},{"code":"B323000","system":"readv2"},{"code":"B327600","system":"readv2"},{"code":"B828800","system":"readv2"},{"code":"B828500","system":"readv2"},{"code":"BBES.00","system":"readv2"},{"code":"BBEN.11","system":"readv2"},{"code":"BBEP.00","system":"readv2"},{"code":"BBE1000","system":"readv2"},{"code":"B327200","system":"readv2"},{"code":"B323300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('solid-tumour-or-leukaemia-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["solid-tumour-or-leukaemia-elixhauser-primary-care-mmelanoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["solid-tumour-or-leukaemia-elixhauser-primary-care-mmelanoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["solid-tumour-or-leukaemia-elixhauser-primary-care-mmelanoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
