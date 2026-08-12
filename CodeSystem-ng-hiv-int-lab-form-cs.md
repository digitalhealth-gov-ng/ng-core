# NG HIV Integrated Laboratory Form Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Integrated Laboratory Form Codes**

## CodeSystem: NG HIV Integrated Laboratory Form Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs | *Version*:0.0.0 |
| Active as of 2026-07-28 | *Computable Name*:NgHivIntLabFormCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.54 | |

 
Local coded answer concepts transcribed or inferred from the Nigeria HIV Integrated Laboratory Order and Result Form revised November 2025. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivIntLabArvProphylaxisVS](ValueSet-ng-hiv-int-lab-arv-prophylaxis-vs.md)
* [NgHivIntLabCytologyMethodVS](ValueSet-ng-hiv-int-lab-cytology-method-vs.md)
* [NgHivIntLabEidAgeCategoryVS](ValueSet-ng-hiv-int-lab-eid-age-category-vs.md)
* [NgHivIntLabEidIndicationVS](ValueSet-ng-hiv-int-lab-eid-indication-vs.md)
* [NgHivIntLabEidResultVS](ValueSet-ng-hiv-int-lab-eid-result-vs.md)
* [NgHivIntLabOtherTestVS](ValueSet-ng-hiv-int-lab-other-test-vs.md)
* [NgHivIntLabPositiveNegativeResultVS](ValueSet-ng-hiv-int-lab-positive-negative-result-vs.md)
* [NgHivIntLabReactiveResultVS](ValueSet-ng-hiv-int-lab-reactive-result-vs.md)
* [NgHivIntLabRegimenLineVS](ValueSet-ng-hiv-int-lab-regimen-line-vs.md)
* [NgHivIntLabRegisterTestVS](ValueSet-ng-hiv-int-lab-register-test-vs.md)
* [NgHivIntLabRequestedTestTypeVS](ValueSet-ng-hiv-int-lab-requested-test-type-vs.md)
* [NgHivIntLabSpecimenTypeVS](ValueSet-ng-hiv-int-lab-specimen-type-vs.md)
* [NgHivIntLabViralLoadIndicationVS](ValueSet-ng-hiv-int-lab-viral-load-indication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-int-lab-form-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.54"
  }],
  "version" : "0.0.0",
  "name" : "NgHivIntLabFormCS",
  "title" : "NG HIV Integrated Laboratory Form Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-28",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Local coded answer concepts transcribed or inferred from the Nigeria HIV\nIntegrated Laboratory Order and Result Form revised November 2025.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 55,
  "concept" : [{
    "code" : "test-type-viral-load",
    "display" : "Viral load",
    "definition" : "A viral-load test is requested."
  },
  {
    "code" : "test-type-eid",
    "display" : "Early infant diagnosis",
    "definition" : "An early-infant-diagnosis test is requested."
  },
  {
    "code" : "test-type-other",
    "display" : "Other laboratory test",
    "definition" : "One or more other laboratory investigations are requested."
  },
  {
    "code" : "eid-age-less-than-or-equal-72-hours",
    "display" : "72 hours or younger",
    "definition" : "Infant age is 72 hours or younger at specimen collection."
  },
  {
    "code" : "eid-age-over-72-hours-under-2-months",
    "display" : "Older than 72 hours and younger than 2 months",
    "definition" : "Infant age is greater than 72 hours and less than 2 months."
  },
  {
    "code" : "eid-age-2-to-12-months",
    "display" : "2 to 12 months",
    "definition" : "Infant age is at least 2 months and not more than 12 months."
  },
  {
    "code" : "eid-age-over-12-months",
    "display" : "Older than 12 months",
    "definition" : "Infant age is greater than 12 months."
  },
  {
    "code" : "arv-prophylaxis-azt-nvp",
    "display" : "AZT + NVP",
    "definition" : "Zidovudine and nevirapine prophylaxis."
  },
  {
    "code" : "arv-prophylaxis-nvp",
    "display" : "NVP",
    "definition" : "Nevirapine prophylaxis."
  },
  {
    "code" : "arv-prophylaxis-azt-3tc-nvp-ral",
    "display" : "AZT + 3TC + NVP/RAL",
    "definition" : "Zidovudine, lamivudine and nevirapine or raltegravir prophylaxis as printed on the source form."
  },
  {
    "code" : "arv-prophylaxis-other",
    "display" : "Other ARV prophylaxis",
    "definition" : "An ARV-prophylaxis regimen not represented by another code; specify separately."
  },
  {
    "code" : "arv-prophylaxis-none",
    "display" : "No ARV prophylaxis",
    "definition" : "No ARV prophylaxis was received."
  },
  {
    "code" : "regimen-line-first",
    "display" : "First-line regimen",
    "definition" : "The client is receiving a first-line ART regimen."
  },
  {
    "code" : "regimen-line-second",
    "display" : "Second-line regimen",
    "definition" : "The client is receiving a second-line ART regimen."
  },
  {
    "code" : "regimen-line-third",
    "display" : "Third-line regimen",
    "definition" : "The client is receiving a third-line ART regimen."
  },
  {
    "code" : "vl-indication-baseline-six-months",
    "display" : "Baseline: six months after ART initiation",
    "definition" : "Baseline viral-load testing six months after ART initiation."
  },
  {
    "code" : "vl-indication-routine-annual",
    "display" : "Routine: every 12 months",
    "definition" : "Routine annual viral-load monitoring."
  },
  {
    "code" : "vl-indication-clinical-immunologic-failure",
    "display" : "Clinical or immunologic failure",
    "definition" : "Viral-load testing requested because of suspected clinical or immunologic treatment failure."
  },
  {
    "code" : "vl-indication-gestation-32-36-weeks",
    "display" : "32–36 weeks of gestation",
    "definition" : "Viral-load testing requested at 32–36 weeks of gestation."
  },
  {
    "code" : "vl-indication-confirmation-after-eac",
    "display" : "Confirmation: three to six months after EAC",
    "definition" : "Confirmatory viral-load testing three to six months after enhanced adherence counselling."
  },
  {
    "code" : "vl-indication-recent-infection",
    "display" : "Recent infection",
    "definition" : "Viral-load testing requested in the context of recent HIV infection."
  },
  {
    "code" : "vl-indication-early-hiv-detection",
    "display" : "Early HIV detection",
    "definition" : "Viral-load testing requested for early HIV detection."
  },
  {
    "code" : "eid-indication-at-birth",
    "display" : "EID at birth",
    "definition" : "Early infant diagnosis requested at birth."
  },
  {
    "code" : "eid-indication-six-eight-weeks",
    "display" : "EID at 6–8 weeks",
    "definition" : "Early infant diagnosis requested at six to eight weeks."
  },
  {
    "code" : "eid-indication-two-twelve-months",
    "display" : "EID at 2–12 months",
    "definition" : "Early infant diagnosis requested between two and twelve months."
  },
  {
    "code" : "eid-indication-repeat-invalid",
    "display" : "Repeat because of invalid test",
    "definition" : "The EID test is repeated because a previous result was invalid."
  },
  {
    "code" : "eid-indication-after-breastfeeding",
    "display" : "Repeat after cessation of breastfeeding",
    "definition" : "Repeat EID at least six weeks after the last exposure to breast milk."
  },
  {
    "code" : "specimen-whole-blood",
    "display" : "Whole blood",
    "definition" : "Whole-blood specimen."
  },
  {
    "code" : "specimen-plasma",
    "display" : "Plasma",
    "definition" : "Plasma specimen."
  },
  {
    "code" : "specimen-dbs",
    "display" : "DBS",
    "definition" : "Dried blood spot specimen."
  },
  {
    "code" : "specimen-pbs",
    "display" : "PBS",
    "definition" : "PBS as printed on the source form; the expansion is not specified by the source workbook."
  },
  {
    "code" : "other-test-cd4-count",
    "display" : "CD4+ cell count",
    "definition" : "Absolute CD4+ cell count."
  },
  {
    "code" : "other-test-cd4-percentage",
    "display" : "CD4 percentage",
    "definition" : "CD4 percentage."
  },
  {
    "code" : "other-test-cd4-lfa",
    "display" : "CD4 LFA",
    "definition" : "CD4 lateral-flow assay."
  },
  {
    "code" : "other-test-tb-lf-lam",
    "display" : "TB LF-LAM",
    "definition" : "Tuberculosis lateral-flow urine lipoarabinomannan test."
  },
  {
    "code" : "other-test-serum-crag",
    "display" : "Serum CrAg",
    "definition" : "Serum cryptococcal antigen test."
  },
  {
    "code" : "other-test-csf-crag",
    "display" : "CSF CrAg",
    "definition" : "Cerebrospinal-fluid cryptococcal antigen test."
  },
  {
    "code" : "other-test-csf-mcs",
    "display" : "CSF M/C/S",
    "definition" : "Cerebrospinal-fluid microscopy, culture and sensitivity."
  },
  {
    "code" : "other-test-hbsag",
    "display" : "HBsAg",
    "definition" : "Hepatitis B surface antigen test."
  },
  {
    "code" : "other-test-hcv-antibody",
    "display" : "HCV antibody",
    "definition" : "Hepatitis C virus antibody test."
  },
  {
    "code" : "other-test-hbv-viral-load",
    "display" : "HBV viral load",
    "definition" : "Hepatitis B virus viral-load test."
  },
  {
    "code" : "other-test-hcv-viral-load",
    "display" : "HCV viral load",
    "definition" : "Hepatitis C virus viral-load test."
  },
  {
    "code" : "other-test-syphilis",
    "display" : "Syphilis",
    "definition" : "Syphilis serology."
  },
  {
    "code" : "other-test-hpv",
    "display" : "HPV",
    "definition" : "Human papillomavirus test."
  },
  {
    "code" : "other-test-cytology",
    "display" : "Cytology",
    "definition" : "Cytology or cervical-screening test, including VIA or Pap smear as printed on the source form."
  },
  {
    "code" : "other-test-random-glucose",
    "display" : "Random glucose",
    "definition" : "Random blood-glucose test."
  },
  {
    "code" : "other-test-naat",
    "display" : "NAAT",
    "definition" : "Nucleic-acid amplification test; the target organism is not specified on the source form."
  },
  {
    "code" : "other-test-urinalysis",
    "display" : "Urinalysis",
    "definition" : "Urinalysis."
  },
  {
    "code" : "result-negative",
    "display" : "Negative",
    "definition" : "The qualitative laboratory result is negative."
  },
  {
    "code" : "result-positive",
    "display" : "Positive",
    "definition" : "The qualitative laboratory result is positive."
  },
  {
    "code" : "result-invalid",
    "display" : "Invalid",
    "definition" : "The test result is invalid."
  },
  {
    "code" : "result-non-reactive",
    "display" : "Non-reactive",
    "definition" : "The serology result is non-reactive."
  },
  {
    "code" : "result-reactive",
    "display" : "Reactive",
    "definition" : "The serology result is reactive."
  },
  {
    "code" : "cytology-method-via",
    "display" : "VIA",
    "definition" : "Visual inspection with acetic acid."
  },
  {
    "code" : "cytology-method-pap-smear",
    "display" : "Pap smear",
    "definition" : "Papanicolaou cervical cytology."
  }]
}

```
