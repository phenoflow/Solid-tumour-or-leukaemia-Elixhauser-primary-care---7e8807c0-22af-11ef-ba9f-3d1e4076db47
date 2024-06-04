# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B115.00","system":"readv2"},{"code":"B828X00","system":"readv2"},{"code":"B483.00","system":"readv2"},{"code":"B014.00","system":"readv2"},{"code":"ByuA000","system":"readv2"},{"code":"ZV10z00","system":"readv2"},{"code":"Byu9000","system":"readv2"},{"code":"B59..00","system":"readv2"},{"code":"B116.00","system":"readv2"},{"code":"B007.00","system":"readv2"},{"code":"Byu8200","system":"readv2"},{"code":"B4A..00","system":"readv2"},{"code":"B52..00","system":"readv2"},{"code":"Byu5400","system":"readv2"},{"code":"B05..00","system":"readv2"},{"code":"B333.00","system":"readv2"},{"code":"B1zy.00","system":"readv2"},{"code":"Byu5700","system":"readv2"},{"code":"B54X.00","system":"readv2"},{"code":"B323.00","system":"readv2"},{"code":"Byu5900","system":"readv2"},{"code":"B52X.00","system":"readv2"},{"code":"B24X.00","system":"readv2"},{"code":"Byu7000","system":"readv2"},{"code":"Byu2000","system":"readv2"},{"code":"B143.00","system":"readv2"},{"code":"A788W00","system":"readv2"},{"code":"ZV67B00","system":"readv2"},{"code":"B00z000","system":"readv2"},{"code":"ByuB100","system":"readv2"},{"code":"B004200","system":"readv2"},{"code":"B45..00","system":"readv2"},{"code":"B828W00","system":"readv2"},{"code":"B004000","system":"readv2"},{"code":"Byu2500","system":"readv2"},{"code":"B40..00","system":"readv2"},{"code":"B00z100","system":"readv2"},{"code":"ByuA200","system":"readv2"},{"code":"Byu4000","system":"readv2"},{"code":"Byu7300","system":"readv2"},{"code":"B5...00","system":"readv2"},{"code":"B1z0.00","system":"readv2"},{"code":"Byu4300","system":"readv2"},{"code":"B055.00","system":"readv2"},{"code":"B0z0.00","system":"readv2"},{"code":"Byu1200","system":"readv2"},{"code":"ByuFF00","system":"readv2"},{"code":"B004.00","system":"readv2"},{"code":"B454.00","system":"readv2"},{"code":"Byu4100","system":"readv2"},{"code":"B152.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('solid-tumour-or-leukaemia-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["solid-tumour-or-leukaemia-elixhauser-primary-care-unspec---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["solid-tumour-or-leukaemia-elixhauser-primary-care-unspec---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["solid-tumour-or-leukaemia-elixhauser-primary-care-unspec---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
