# NG TB Quarterly DOTS and Microscopy Centre Reporting Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Quarterly DOTS and Microscopy Centre Reporting Codes**

## CodeSystem: NG TB Quarterly DOTS and Microscopy Centre Reporting Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBQuarterlyCentreReportCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.115 | |

 
Codes used to represent the reporting variables and centre-type stratification in the NTBLCP/TB 18 Quarterly Report on Newly Established DOTS and Microscopy Centres. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-tb-quarterly-centre-report-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.115"
  }],
  "version" : "0.0.0",
  "name" : "NgTBQuarterlyCentreReportCS",
  "title" : "NG TB Quarterly DOTS and Microscopy Centre Reporting Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Codes used to represent the reporting variables and centre-type\nstratification in the NTBLCP/TB 18 Quarterly Report on Newly Established\nDOTS and Microscopy Centres.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 13,
  "concept" : [{
    "code" : "reporting-population",
    "display" : "Reporting population",
    "definition" : "Population of the State or LGA covered by the quarterly report."
  },
  {
    "code" : "new-dots-centres",
    "display" : "Newly established DOTS centres",
    "definition" : "Number of newly established DOTS centres during the reporting quarter."
  },
  {
    "code" : "new-afb-microscopy-centres",
    "display" : "Newly established AFB microscopy centres",
    "definition" : "Number of newly established AFB microscopy centres during the reporting quarter."
  },
  {
    "code" : "dots-centres-beginning",
    "display" : "DOTS centres at beginning of quarter",
    "definition" : "Number of DOTS centres at the beginning of the reporting quarter."
  },
  {
    "code" : "dots-centres-end",
    "display" : "DOTS centres at end of quarter",
    "definition" : "Number of DOTS centres at the end of the reporting quarter."
  },
  {
    "code" : "dots-coverage",
    "display" : "DOTS coverage per population",
    "definition" : "Population-to-DOTS-centre ratio at the end of the reporting quarter."
  },
  {
    "code" : "microscopy-centres-beginning",
    "display" : "AFB microscopy centres at beginning of quarter",
    "definition" : "Number of AFB microscopy centres at the beginning of the reporting quarter."
  },
  {
    "code" : "microscopy-centres-end",
    "display" : "AFB microscopy centres at end of quarter",
    "definition" : "Number of AFB microscopy centres at the end of the reporting quarter."
  },
  {
    "code" : "microscopy-coverage",
    "display" : "AFB microscopy coverage per population",
    "definition" : "Population-to-AFB-microscopy-centre ratio at the end of the reporting quarter."
  },
  {
    "code" : "centre-type",
    "display" : "Centre type",
    "definition" : "Type or ownership category of the newly established centre."
  },
  {
    "code" : "public",
    "display" : "Public",
    "definition" : "Public centre."
  },
  {
    "code" : "prison",
    "display" : "Prison",
    "definition" : "Prison centre."
  },
  {
    "code" : "private",
    "display" : "Private",
    "definition" : "Private centre."
  }]
}

```
