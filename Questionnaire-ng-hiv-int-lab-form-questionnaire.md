# NG HIV Integrated Laboratory Order and Result Form Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Integrated Laboratory Order and Result Form Questionnaire**

## Questionnaire: NG HIV Integrated Laboratory Order and Result Form Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-int-lab-form-questionnaire | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivIntLabFormQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.4 | |

 
Questionnaire representing the Nigeria HIV Integrated Laboratory Order and Result Form revised November 2025. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-hiv-int-lab-form-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-hiv-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-int-lab-form-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.4"
  }],
  "version" : "0.0.0",
  "name" : "NgHivIntLabFormQuestionnaire",
  "title" : "NG HIV Integrated Laboratory Order and Result Form Questionnaire",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
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
  "description" : "Questionnaire representing the Nigeria HIV Integrated Laboratory Order and Result Form revised November 2025.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "laboratory-request-and-client-information",
    "text" : "Laboratory request and client information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "specimen-collection-date",
      "prefix" : "1.",
      "text" : "Specimen collection date",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "requested-test-types",
      "prefix" : "2.",
      "text" : "Type of test requested",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-requested-test-type-vs"
    },
    {
      "linkId" : "state",
      "prefix" : "3.",
      "text" : "State where the requesting facility is located",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "lga",
      "prefix" : "4.",
      "text" : "Local Government Area where the requesting facility is located",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "facility-name",
      "prefix" : "5.",
      "text" : "Facility name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "client-name",
      "prefix" : "6.",
      "text" : "Client name",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "client-surname",
        "text" : "Surname",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "client-other-names",
        "text" : "Other name or names",
        "type" : "string"
      }]
    },
    {
      "linkId" : "sex",
      "prefix" : "7.",
      "text" : "Sex",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
    },
    {
      "linkId" : "pregnant",
      "prefix" : "8a.",
      "text" : "Pregnant",
      "type" : "boolean"
    },
    {
      "linkId" : "breastfeeding",
      "prefix" : "8b.",
      "text" : "Breastfeeding",
      "type" : "boolean"
    },
    {
      "linkId" : "age-years",
      "prefix" : "9a.",
      "text" : "Age in completed years",
      "type" : "integer"
    },
    {
      "linkId" : "age-months-under-five",
      "prefix" : "9b.",
      "text" : "Age in completed months, if younger than five years",
      "type" : "integer"
    },
    {
      "linkId" : "eid-age-category",
      "prefix" : "10.",
      "text" : "EID age category at specimen collection",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-eid"
        }
      }],
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-eid-age-category-vs"
    },
    {
      "linkId" : "date-of-birth",
      "prefix" : "11.",
      "text" : "Date of birth",
      "type" : "date"
    },
    {
      "linkId" : "art-start-date",
      "prefix" : "12.",
      "text" : "ART start date",
      "type" : "date",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-viral-load"
        }
      }]
    },
    {
      "linkId" : "arv-prophylaxis-received",
      "prefix" : "13.",
      "text" : "ARV prophylaxis received",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-eid"
        }
      }],
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-arv-prophylaxis-vs"
    },
    {
      "linkId" : "arv-prophylaxis-other",
      "text" : "Specify other ARV prophylaxis received",
      "type" : "string",
      "enableWhen" : [{
        "question" : "arv-prophylaxis-received",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "arv-prophylaxis-other"
        }
      }]
    },
    {
      "linkId" : "lab-registration-number",
      "prefix" : "14.",
      "text" : "Laboratory registration number",
      "type" : "string"
    },
    {
      "linkId" : "hospital-number",
      "prefix" : "15.",
      "text" : "Hospital number",
      "type" : "string"
    },
    {
      "linkId" : "client-unique-identifier",
      "prefix" : "16.",
      "text" : "Client unique identifier",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "identifier-state-code",
        "text" : "State component of the client unique identifier",
        "type" : "string"
      },
      {
        "linkId" : "identifier-lga-code",
        "text" : "LGA component of the client unique identifier",
        "type" : "string"
      },
      {
        "linkId" : "identifier-facility-number",
        "text" : "Facility-number component of the client unique identifier",
        "type" : "string"
      },
      {
        "linkId" : "identifier-client-unique-number",
        "text" : "Client unique-number component",
        "type" : "string",
        "required" : true
      }]
    },
    {
      "linkId" : "pcr-poc-lab-name",
      "prefix" : "17.",
      "text" : "PCR or point-of-care laboratory name",
      "type" : "string"
    },
    {
      "linkId" : "eid-entry-point",
      "text" : "EID entry point",
      "type" : "string",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-eid"
        }
      }]
    },
    {
      "linkId" : "current-art-regimen-line",
      "prefix" : "18a.",
      "text" : "Current ART regimen line",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-regimen-line-vs"
    },
    {
      "linkId" : "current-art-regimen",
      "prefix" : "18b.",
      "text" : "Current ART regimen code or description",
      "type" : "string"
    }]
  },
  {
    "linkId" : "laboratory-orders",
    "text" : "Laboratory orders",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "viral-load-indication",
      "prefix" : "19.",
      "text" : "Indication for viral-load testing",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-viral-load"
        }
      }],
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-viral-load-indication-vs"
    },
    {
      "linkId" : "eid-indication",
      "prefix" : "20.",
      "text" : "Indication for early infant diagnosis",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-eid"
        }
      }],
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-eid-indication-vs"
    },
    {
      "linkId" : "other-tests-requested",
      "prefix" : "29.",
      "text" : "Other laboratory tests requested",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-other"
        }
      }],
      "repeats" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-other-test-vs"
    }]
  },
  {
    "linkId" : "specimen-processing",
    "text" : "Specimen processing",
    "type" : "group",
    "item" : [{
      "linkId" : "pcr-poc-lab-sample-number",
      "prefix" : "21.",
      "text" : "PCR or point-of-care laboratory sample number",
      "type" : "string"
    },
    {
      "linkId" : "specimen-type",
      "prefix" : "22.",
      "text" : "Specimen type",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-specimen-type-vs"
    },
    {
      "linkId" : "sample-tested-date",
      "prefix" : "23a.",
      "text" : "Date the sample was tested",
      "type" : "date"
    },
    {
      "linkId" : "sample-tested-time",
      "prefix" : "23b.",
      "text" : "Time the sample was tested",
      "type" : "time"
    },
    {
      "linkId" : "sample-logged-remotely",
      "prefix" : "24a.",
      "text" : "Sample logged in remotely",
      "type" : "boolean"
    },
    {
      "linkId" : "remote-log-date",
      "prefix" : "24b.",
      "text" : "Date the sample was logged remotely",
      "type" : "date",
      "enableWhen" : [{
        "question" : "sample-logged-remotely",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "sample-received-at-pcr-poc-lab-date",
      "prefix" : "25a.",
      "text" : "Date the sample was received at the PCR or point-of-care laboratory",
      "type" : "date"
    },
    {
      "linkId" : "sample-received-at-pcr-poc-lab-time",
      "prefix" : "25b.",
      "text" : "Time the sample was received at the PCR or point-of-care laboratory",
      "type" : "time"
    }]
  },
  {
    "linkId" : "laboratory-results",
    "text" : "Laboratory results",
    "type" : "group",
    "item" : [{
      "linkId" : "viral-load-result-group",
      "text" : "Viral-load result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-viral-load"
        }
      }],
      "item" : [{
        "linkId" : "viral-load-result-copies-per-ml",
        "prefix" : "26a.",
        "text" : "Viral-load result in copies/mL",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "eid-result-group",
      "text" : "Early infant diagnosis result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "requested-test-types",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "test-type-eid"
        }
      }],
      "item" : [{
        "linkId" : "eid-result",
        "prefix" : "26b.",
        "text" : "Early infant diagnosis result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-eid-result-vs"
      }]
    },
    {
      "linkId" : "result-release-date",
      "prefix" : "27.",
      "text" : "Date the result was released",
      "type" : "date"
    },
    {
      "linkId" : "result-comments",
      "prefix" : "28.",
      "text" : "Comments",
      "type" : "text"
    },
    {
      "linkId" : "cd4-count-result-group",
      "text" : "CD4+ cell-count result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-cd4-count"
        }
      }],
      "item" : [{
        "linkId" : "cd4-count-cells-per-mm3",
        "text" : "CD4+ cell count in cells/mm3",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "cd4-percentage-result-group",
      "text" : "CD4 percentage result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-cd4-percentage"
        }
      }],
      "item" : [{
        "linkId" : "cd4-percentage",
        "text" : "CD4 percentage",
        "type" : "decimal"
      }]
    },
    {
      "linkId" : "cd4-lfa-result-group",
      "text" : "CD4 lateral-flow-assay result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-cd4-lfa"
        }
      }],
      "item" : [{
        "linkId" : "cd4-lfa-result",
        "text" : "CD4 lateral-flow-assay result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-cd4-reference-vs"
      }]
    },
    {
      "linkId" : "tb-lf-lam-result-group",
      "text" : "TB LF-LAM result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-tb-lf-lam"
        }
      }],
      "item" : [{
        "linkId" : "tb-lf-lam-result",
        "text" : "TB LF-LAM qualitative result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      }]
    },
    {
      "linkId" : "serum-crag-result-group",
      "text" : "Serum cryptococcal antigen result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-serum-crag"
        }
      }],
      "item" : [{
        "linkId" : "serum-crag-result",
        "text" : "Serum cryptococcal antigen qualitative result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      }]
    },
    {
      "linkId" : "csf-crag-result-group",
      "text" : "CSF cryptococcal antigen result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-csf-crag"
        }
      }],
      "item" : [{
        "linkId" : "csf-crag-result",
        "text" : "CSF cryptococcal antigen qualitative result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      }]
    },
    {
      "linkId" : "csf-mcs-result-group",
      "text" : "CSF microscopy, culture and sensitivity result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-csf-mcs"
        }
      }],
      "item" : [{
        "linkId" : "csf-mcs-result",
        "text" : "CSF microscopy, culture and sensitivity result",
        "type" : "text"
      }]
    },
    {
      "linkId" : "hbsag-result-group",
      "text" : "Hepatitis B surface antigen result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-hbsag"
        }
      }],
      "item" : [{
        "linkId" : "hbsag-result",
        "text" : "Hepatitis B surface antigen qualitative result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      }]
    },
    {
      "linkId" : "hcv-antibody-result-group",
      "text" : "Hepatitis C virus antibody result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-hcv-antibody"
        }
      }],
      "item" : [{
        "linkId" : "hcv-antibody-result",
        "text" : "Hepatitis C virus antibody qualitative result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      }]
    },
    {
      "linkId" : "hbv-viral-load-result-group",
      "text" : "Hepatitis B virus viral-load result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-hbv-viral-load"
        }
      }],
      "item" : [{
        "linkId" : "hbv-viral-load-result",
        "text" : "Hepatitis B virus viral-load result",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "hcv-viral-load-result-group",
      "text" : "Hepatitis C virus viral-load result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-hcv-viral-load"
        }
      }],
      "item" : [{
        "linkId" : "hcv-viral-load-result",
        "text" : "Hepatitis C virus viral-load result",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "syphilis-result-group",
      "text" : "Syphilis result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-syphilis"
        }
      }],
      "item" : [{
        "linkId" : "syphilis-result",
        "text" : "Syphilis qualitative result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-reactive-result-vs"
      }]
    },
    {
      "linkId" : "hpv-result-group",
      "text" : "Human papillomavirus result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-hpv"
        }
      }],
      "item" : [{
        "linkId" : "hpv-result",
        "text" : "Human papillomavirus qualitative result",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      }]
    },
    {
      "linkId" : "cytology-result-group",
      "text" : "Cytology result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-cytology"
        }
      }],
      "item" : [{
        "linkId" : "cytology-method",
        "text" : "Cytology or cervical-screening method",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-cytology-method-vs"
      },
      {
        "linkId" : "cytology-result",
        "text" : "Cytology or cervical-screening result",
        "type" : "text"
      }]
    },
    {
      "linkId" : "random-glucose-result-group",
      "text" : "Random glucose result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-random-glucose"
        }
      }],
      "item" : [{
        "linkId" : "random-glucose-mmol-per-l",
        "text" : "Random glucose in mmol/L",
        "type" : "decimal"
      }]
    },
    {
      "linkId" : "naat-result-group",
      "text" : "Nucleic-acid amplification test result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-naat"
        }
      }],
      "item" : [{
        "linkId" : "naat-result",
        "text" : "Nucleic-acid amplification test result",
        "type" : "text"
      }]
    },
    {
      "linkId" : "urinalysis-result-group",
      "text" : "Urinalysis result",
      "type" : "group",
      "enableWhen" : [{
        "question" : "other-tests-requested",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
          "code" : "other-test-urinalysis"
        }
      }],
      "item" : [{
        "linkId" : "urinalysis-result",
        "text" : "Urinalysis result",
        "type" : "text"
      }]
    }]
  },
  {
    "linkId" : "workflow-sign-off",
    "text" : "Laboratory workflow sign-off",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "ordered-by",
      "prefix" : "30.",
      "text" : "Ordered by",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "ordered-by-name",
        "text" : "Ordering clinician's printed name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "ordered-by-signature",
        "text" : "Ordering clinician's signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "ordered-date",
        "text" : "Date ordered",
        "type" : "date",
        "required" : true
      }]
    },
    {
      "linkId" : "collected-by",
      "prefix" : "31.",
      "text" : "Collected by",
      "type" : "group",
      "item" : [{
        "linkId" : "collected-by-name",
        "text" : "Specimen collector's printed name",
        "type" : "string"
      },
      {
        "linkId" : "collected-by-signature",
        "text" : "Specimen collector's signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "collected-date",
        "text" : "Date collected",
        "type" : "date"
      }]
    },
    {
      "linkId" : "assayed-by",
      "prefix" : "32.",
      "text" : "Assayed by",
      "type" : "group",
      "item" : [{
        "linkId" : "assayed-by-name",
        "text" : "Assaying laboratory scientist's printed name",
        "type" : "string"
      },
      {
        "linkId" : "assayed-by-signature",
        "text" : "Assaying laboratory scientist's signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "assayed-date",
        "text" : "Date assayed",
        "type" : "date"
      }]
    },
    {
      "linkId" : "checked-by",
      "prefix" : "33.",
      "text" : "Checked by",
      "type" : "group",
      "item" : [{
        "linkId" : "checked-by-name",
        "text" : "Result checker's printed name",
        "type" : "string"
      },
      {
        "linkId" : "checked-by-signature",
        "text" : "Result checker's signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "checked-date",
        "text" : "Date checked",
        "type" : "date"
      }]
    },
    {
      "linkId" : "approved-by",
      "prefix" : "34.",
      "text" : "Approved by",
      "type" : "group",
      "item" : [{
        "linkId" : "approved-by-name",
        "text" : "Approving authority's printed name",
        "type" : "string"
      },
      {
        "linkId" : "approved-by-signature",
        "text" : "Approving authority's signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "approved-date",
        "text" : "Date approved",
        "type" : "date"
      }]
    }]
  }]
}

```
