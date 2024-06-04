# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"BB5D.11","system":"readv2"},{"code":"BBLG.00","system":"readv2"},{"code":"BB5f.00","system":"readv2"},{"code":"BB5U.00","system":"readv2"},{"code":"BB51100","system":"readv2"},{"code":"BB82.00","system":"readv2"},{"code":"BB5S.00","system":"readv2"},{"code":"BB61.00","system":"readv2"},{"code":"BB5T.00","system":"readv2"},{"code":"BB5c.00","system":"readv2"},{"code":"BB5M.00","system":"readv2"},{"code":"BB51000","system":"readv2"},{"code":"BBQ9.00","system":"readv2"},{"code":"BB62.00","system":"readv2"},{"code":"BB69.00","system":"readv2"},{"code":"BB6A.00","system":"readv2"},{"code":"BB5U100","system":"readv2"},{"code":"BB5X.00","system":"readv2"},{"code":"BB52000","system":"readv2"},{"code":"BB5W.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('solid-tumour-or-leukaemia-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["solid-tumour-or-leukaemia-elixhauser-primary-care-mcystadenoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["solid-tumour-or-leukaemia-elixhauser-primary-care-mcystadenoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["solid-tumour-or-leukaemia-elixhauser-primary-care-mcystadenoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
