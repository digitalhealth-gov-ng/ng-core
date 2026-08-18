# Nigeria Local WHO HIV Concepts - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Local WHO HIV Concepts**

## CodeSystem: Nigeria Local WHO HIV Concepts 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs | *Version*:0.0.0 |
| Active as of 2026-08-15 | *Computable Name*:NgWhoHivConceptsCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.114 | |

 
Local Nigeria CodeSystem containing the subset of WHO SMART HIV concept codes used by the Nigeria HIV terminology mappings. Code values are preserved exactly from the supplied WHO HIV concept list. Full concepts can be found here: https://smart.who.int/hiv/CodeSystem-HIVConcepts.htmlhttps://smart.who.int/hiv/CodeSystem-HIVConcepts.html 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Nigeria Relevant WHO HIV Concepts](ValueSet-ng-who-hiv-concepts-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-who-hiv-concepts-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.114"
  }],
  "version" : "0.0.0",
  "name" : "NgWhoHivConceptsCS",
  "title" : "Nigeria Local WHO HIV Concepts",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-15",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Local Nigeria CodeSystem containing the subset of WHO SMART HIV concept codes used by the Nigeria HIV terminology mappings. Code values are preserved exactly from the supplied WHO HIV concept list. Full concepts can be found here: https://smart.who.int/hiv/CodeSystem-HIVConcepts.htmlhttps://smart.who.int/hiv/CodeSystem-HIVConcepts.html",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 32,
  "concept" : [{
    "code" : "HIV.H.DE42",
    "display" : "Lost to follow-up",
    "definition" : "Twenty-eight days or more since last missed appointment"
  },
  {
    "code" : "HIV.H.DE43",
    "display" : "Transferred out",
    "definition" : "The client transferred to another facility"
  },
  {
    "code" : "HIV.H.DE44",
    "display" : "Death (documented)",
    "definition" : "People living with HIV previously on ART who are confirmed to have died from any cause"
  },
  {
    "code" : "HIV.D.DE45",
    "display" : "Restarting ART",
    "definition" : "Client is restarting ART after stopping treatment for any reason"
  },
  {
    "code" : "HIV.D.DE40",
    "display" : "Stopped ART",
    "definition" : "Client stopped taking ART"
  },
  {
    "code" : "HIV.H.DE45",
    "display" : "Refused (stopped) treatment",
    "definition" : "Client was contacted and confirmed to have stopped ART (reasons may include stigma and discrimination, faith healing, etc.)"
  },
  {
    "code" : "HIV.H.DE47",
    "display" : "On ART",
    "definition" : "Client is currently taking ART"
  },
  {
    "code" : "HIV.H.DE4",
    "display" : "Did not initiate ART",
    "definition" : "Client did not initiate ART at the same time as diagnosis (e.g., because they required additional counselling) and required follow-up for ART initiation"
  },
  {
    "code" : "HIV.D.DE382",
    "display" : "ART initiated within 7 days of diagnosis",
    "definition" : "Client initiated ART within 7 days of diagnosis"
  },
  {
    "code" : "HIV.B.DE147",
    "display" : "Linked to enrolment in care and ART initiation",
    "definition" : "Linkage made from HIV testing to enrolment in care following an HIV diagnosis"
  },
  {
    "code" : "HIV.H.DE41",
    "display" : "HIV Treatement outcome",
    "definition" : "The outcome for the client which is used for reporting retention/attrition."
  },
  {
    "code" : "HIV.H.DE49",
    "display" : "Transfer confirmed",
    "definition" : "Select if transfer to another facility is confirmed"
  },
  {
    "code" : "HIV.D.DE371",
    "display" : "Patient self-reported as not ready/willing",
    "definition" : "Client did not initiate ART at diagnosis or within 7 days of diagnosis because client self-reported as not ready/willing"
  },
  {
    "code" : "HIV.D.DE372",
    "display" : "Not completed education, support and preparation for ART",
    "definition" : "Client did not initiate ART at diagnosis or within 7 days of diagnosis because client had not completed education, support and preparation for ART"
  },
  {
    "code" : "HIV.D.DE377",
    "display" : "Patient diagnosed with cryptococcal meningitis",
    "definition" : "Client did not initiate ART at diagnosis or within 7 days of diagnosis because client diagnosed with cryptococcal meningitis"
  },
  {
    "code" : "HIV.D.DE378",
    "display" : "Patient diagnosed with histoplasmosis",
    "definition" : "Client did not initiate ART at diagnosis or within 7 days of diagnosis because client diagnosed with histoplasmosis"
  },
  {
    "code" : "HIV.D.DE380",
    "display" : "Other",
    "definition" : "Client did not initiate ART at diagnosis or within 7 days of diagnosis because of other reason"
  },
  {
    "code" : "HIV.B.DE51",
    "display" : "Sex worker",
    "definition" : "Client is a sex worker"
  },
  {
    "code" : "HIV.B.DE52",
    "display" : "Men who have sex with men",
    "definition" : "Client is a man who has sex with men"
  },
  {
    "code" : "HIV.B.DE53",
    "display" : "Trans and gender-diverse people",
    "definition" : "Client identifies as trans and gender-diverse"
  },
  {
    "code" : "HIV.B.DE54",
    "display" : "People who inject drugs",
    "definition" : "Client is a person who injects drugs"
  },
  {
    "code" : "HIV.B.DE58",
    "display" : "Orphan or vulnerable child",
    "definition" : "Client considered an orphan or vulnerable child"
  },
  {
    "code" : "HIV.D.DE250",
    "display" : "Provide isoniazid preventive therapy",
    "definition" : "Provide isoniazid preventive therapy"
  },
  {
    "code" : "HIV.D.DE496",
    "display" : "Enhanced adherence counselling provided",
    "definition" : "Enhanced adherence counselling was provided to the client during the visit"
  },
  {
    "code" : "HIV.D.DE223",
    "display" : "Other reason for stopping ART",
    "definition" : "Client stopped ART because of other reason"
  },
  {
    "code" : "HIV.D.DE425",
    "display" : "Treatment failure",
    "definition" : "ART treatment failure"
  },
  {
    "code" : "HIV.D.DE434",
    "display" : "Other",
    "definition" : "A switch was made to the regimen for another reason"
  },
  {
    "code" : "HIV.D.DE215",
    "display" : "Other reason for nonadherence",
    "definition" : "Client reported not being adherent because of other reason for nonadherence"
  },
  {
    "code" : "HIV.B.DE84",
    "display" : "Nucleic acid test for HIV",
    "definition" : "Virological test, which includes testing for early infant diagnosis"
  },
  {
    "code" : "HIV.D.DE406",
    "display" : "HIV viral load test ordered",
    "definition" : "Provider ordered an HIV viral load test"
  },
  {
    "code" : "HIV.D.DE364",
    "display" : "CD4 count",
    "definition" : "CD4 cell count in cells/mm^3"
  },
  {
    "code" : "HIV.D.DE365",
    "display" : "CD4 cell percentage",
    "definition" : "CD4 cell percentage"
  }]
}

```
