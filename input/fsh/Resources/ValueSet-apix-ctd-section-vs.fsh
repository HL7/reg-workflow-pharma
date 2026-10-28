ValueSet: APIXCTDSectionVS
Id: apix-ctd-section-vs
Title: "Value Set APIX CTD/eCTD Section Code System"
Description: "Value set for CTD section codes used in APIX regulatory submissions"

* ^status = #active
* ^experimental = false

* include codes from system APIXCTDSECTION where concept descendent-of #m1
* include codes from system APIXCTDSECTION where concept descendent-of #m2
* include codes from system APIXCTDSECTION where concept descendent-of #m3
* include codes from system APIXCTDSECTION where concept descendent-of #m4
* include codes from system APIXCTDSECTION where concept descendent-of #m5
