# NG TB Specimen Examination Result Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Specimen Examination Result Questionnaire**

## Questionnaire: NG TB Specimen Examination Result Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-specimen-examination-result-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBSpecimenExamnRxQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.21 | |

 
Questionnaire representing the NTBLCP/TB 02B Specimen Examination Result Form, Version 2, 2019. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-specimen-examination-result-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-specimen-examination-result-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.21"
  }],
  "version" : "0.0.0",
  "name" : "NgTBSpecimenExamnRxQuestionnaire",
  "title" : "NG TB Specimen Examination Result Questionnaire",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-18",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire representing the NTBLCP/TB 02B Specimen Examination Result Form, Version 2, 2019.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "patient-specimen-identification",
    "text" : "Patient and specimen identification",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "specimen-identification-number",
      "text" : "Specimen identification number",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "patient-name",
      "text" : "Name of patient",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "sex",
      "text" : "Sex",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female",
          "display" : "Female"
        }
      }]
    },
    {
      "linkId" : "age",
      "text" : "Age",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "patient-address",
      "text" : "Patient address",
      "type" : "string"
    },
    {
      "linkId" : "patient-phone-number",
      "text" : "Patient telephone number",
      "type" : "string"
    },
    {
      "linkId" : "lga-tb-number",
      "text" : "LGA/TB number",
      "type" : "string"
    },
    {
      "linkId" : "requesting-health-facility-and-state",
      "text" : "Name of requesting health facility and state",
      "type" : "string",
      "required" : true
    }]
  },
  {
    "linkId" : "laboratory-information",
    "text" : "Laboratory information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "laboratory-name",
      "text" : "Name of laboratory",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "laboratory-serial-number",
      "text" : "Laboratory serial number",
      "type" : "string",
      "required" : true
    }]
  },
  {
    "linkId" : "xpert-mtb-rif-result",
    "text" : "Results of Xpert MTB/RIF test",
    "type" : "group",
    "item" : [{
      "linkId" : "xpert-mtb-result",
      "text" : "MTB result",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "MTB not detected"
      },
      {
        "valueString" : "MTB detected"
      }]
    },
    {
      "linkId" : "xpert-rif-resistance-result",
      "text" : "Rifampicin resistance result",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "xpert-mtb-result",
        "operator" : "=",
        "answerString" : "MTB detected"
      }],
      "answerOption" : [{
        "valueString" : "RIF resistance detected"
      },
      {
        "valueString" : "RIF resistance not detected"
      },
      {
        "valueString" : "RIF resistance indeterminate"
      }]
    }]
  },
  {
    "linkId" : "other-test-result",
    "text" : "Results of other test",
    "type" : "group",
    "item" : [{
      "linkId" : "other-test-type",
      "text" : "Specify type of test",
      "type" : "string"
    },
    {
      "linkId" : "other-test-result-value",
      "text" : "Result",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Positive"
      },
      {
        "valueString" : "Negative"
      },
      {
        "valueString" : "Indeterminate"
      }]
    }]
  },
  {
    "linkId" : "afb-smear-microscopy",
    "text" : "AFB smear microscopy result",
    "type" : "group",
    "item" : [{
      "linkId" : "afb-specimen-result",
      "text" : "AFB smear specimen result",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "afb-specimen-number",
        "text" : "Specimen number",
        "type" : "choice",
        "answerOption" : [{
          "valueInteger" : 1
        },
        {
          "valueInteger" : 2
        }]
      },
      {
        "linkId" : "afb-examination-date",
        "text" : "Date",
        "type" : "date"
      },
      {
        "linkId" : "afb-specimen-appearance",
        "text" : "Appearance - describe visual appearance of sputum",
        "type" : "string"
      },
      {
        "linkId" : "afb-smear-result",
        "text" : "AFB smear microscopy result",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Negative"
        },
        {
          "valueString" : "Scanty"
        },
        {
          "valueString" : "1+"
        },
        {
          "valueString" : "2+"
        },
        {
          "valueString" : "3+"
        }]
      },
      {
        "linkId" : "afb-scanty-actual-number",
        "text" : "Actual number of AFB when result is scanty (1-9)",
        "type" : "integer",
        "enableWhen" : [{
          "question" : "afb-smear-result",
          "operator" : "=",
          "answerString" : "Scanty"
        }]
      }]
    },
    {
      "linkId" : "afb-examiner",
      "text" : "AFB smear microscopy examiner",
      "type" : "group",
      "item" : [{
        "linkId" : "afb-examined-by",
        "text" : "Examined by",
        "type" : "string"
      },
      {
        "linkId" : "afb-examiner-signature",
        "text" : "Signature",
        "type" : "string"
      },
      {
        "linkId" : "afb-result-date",
        "text" : "Date",
        "type" : "date"
      }]
    }]
  },
  {
    "linkId" : "culture-result",
    "text" : "Results of culture",
    "type" : "group",
    "item" : [{
      "linkId" : "culture-purpose",
      "text" : "Culture examination type",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Baseline culture"
      },
      {
        "valueString" : "Follow-up"
      }]
    },
    {
      "linkId" : "culture-follow-up-month",
      "text" : "Month of follow-up",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "culture-purpose",
        "operator" : "=",
        "answerString" : "Follow-up"
      }]
    },
    {
      "linkId" : "culture-sample-result",
      "text" : "Culture sample result",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "culture-sample-received-date",
        "text" : "Date sample received",
        "type" : "date"
      },
      {
        "linkId" : "culture-specimen",
        "text" : "Specimen",
        "type" : "string"
      },
      {
        "linkId" : "solid-culture-result",
        "text" : "Solid culture result",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Negative"
        },
        {
          "valueString" : "Scanty"
        },
        {
          "valueString" : "1+"
        },
        {
          "valueString" : "2+"
        },
        {
          "valueString" : "3+"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "solid-culture-scanty-number",
        "text" : "Actual number when solid culture result is scanty (1-9)",
        "type" : "integer",
        "enableWhen" : [{
          "question" : "solid-culture-result",
          "operator" : "=",
          "answerString" : "Scanty"
        }]
      },
      {
        "linkId" : "liquid-culture-result",
        "text" : "Liquid culture result",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Negative"
        },
        {
          "valueString" : "Positive"
        },
        {
          "valueString" : "Contaminated"
        }]
      }]
    },
    {
      "linkId" : "confirmatory-test-for-mtb-result",
      "text" : "Result of confirmatory test for MTB",
      "type" : "string"
    },
    {
      "linkId" : "culture-examiner",
      "text" : "Culture examiner",
      "type" : "group",
      "item" : [{
        "linkId" : "culture-examined-by",
        "text" : "Examined by",
        "type" : "string"
      },
      {
        "linkId" : "culture-examination-date",
        "text" : "Date",
        "type" : "date"
      },
      {
        "linkId" : "culture-examiner-signature",
        "text" : "Signature",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "lpa-dst-results",
    "text" : "Results of LPA and DST",
    "type" : "group",
    "item" : [{
      "linkId" : "lpa-dst-method",
      "text" : "Type of method used",
      "type" : "choice",
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "LPA"
      },
      {
        "valueString" : "Solid culture DST"
      },
      {
        "valueString" : "Liquid culture DST"
      }]
    },
    {
      "linkId" : "lpa-dst-specimen-result",
      "text" : "LPA and DST specimen result",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "lpa-dst-specimen-number",
        "text" : "Specimen number",
        "type" : "choice",
        "answerOption" : [{
          "valueInteger" : 1
        },
        {
          "valueInteger" : 2
        }]
      },
      {
        "linkId" : "lpa-dst-sample-received-date",
        "text" : "Date sample received",
        "type" : "date"
      },
      {
        "linkId" : "lpa-dst-specimen",
        "text" : "Specimen",
        "type" : "string"
      },
      {
        "linkId" : "lpa-rifampicin-result",
        "text" : "LPA result - Rifampicin (R)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Indeterminate"
        }]
      },
      {
        "linkId" : "lpa-isoniazid-result",
        "text" : "LPA result - Isoniazid (H)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Indeterminate"
        }]
      },
      {
        "linkId" : "lpa-fluoroquinolone-result",
        "text" : "LPA result - Fluoroquinolone",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Indeterminate"
        }]
      },
      {
        "linkId" : "lpa-aminoglycoside-cyclic-peptide-result",
        "text" : "LPA result - Aminoglycoside/Cyclic peptide, low-level Kanamycin (KM)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Indeterminate"
        }]
      },
      {
        "linkId" : "dst-isoniazid-result",
        "text" : "DST result - Isoniazid (H)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-rifampicin-result",
        "text" : "DST result - Rifampicin (R)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-ethambutol-result",
        "text" : "DST result - Ethambutol (E)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-pyrazinamide-result",
        "text" : "DST result - Pyrazinamide (Z)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-kanamycin-result",
        "text" : "DST result - Kanamycin (Km)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-amikacin-result",
        "text" : "DST result - Amikacin (Am)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-capreomycin-result",
        "text" : "DST result - Capreomycin (Cm)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-levofloxacin-result",
        "text" : "DST result - Levofloxacin (Lfx)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-moxifloxacin-result",
        "text" : "DST result - Moxifloxacin (Mfx)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-protionamide-ethionamide-result",
        "text" : "DST result - Protionamide (Pto) / Ethionamide (Eto)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-cycloserine-terizidone-result",
        "text" : "DST result - Cycloserine (Cs) / Terizidone (Trd)",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      },
      {
        "linkId" : "dst-other-drug-name",
        "text" : "Other drug",
        "type" : "string"
      },
      {
        "linkId" : "dst-other-drug-result",
        "text" : "DST result for other drug",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Resistant"
        },
        {
          "valueString" : "Susceptible"
        },
        {
          "valueString" : "Contaminated"
        }]
      }]
    },
    {
      "linkId" : "lpa-dst-examiner",
      "text" : "LPA and DST examiner",
      "type" : "group",
      "item" : [{
        "linkId" : "lpa-dst-examined-by",
        "text" : "Examined by",
        "type" : "string"
      },
      {
        "linkId" : "lpa-dst-examiner-signature",
        "text" : "Signature",
        "type" : "string"
      },
      {
        "linkId" : "lpa-dst-examination-date",
        "text" : "Date",
        "type" : "date"
      }]
    }]
  },
  {
    "linkId" : "hiv-test",
    "text" : "HIV test result",
    "type" : "group",
    "item" : [{
      "linkId" : "hiv-test-result",
      "text" : "HIV test result",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Positive"
      },
      {
        "valueString" : "Negative"
      },
      {
        "valueString" : "Not tested"
      }]
    },
    {
      "linkId" : "hiv-test-date",
      "text" : "HIV test date",
      "type" : "date"
    }]
  },
  {
    "linkId" : "laboratory-remarks",
    "text" : "Laboratory remarks",
    "type" : "group",
    "item" : [{
      "linkId" : "repeat-sample-needed",
      "text" : "Is a repeat sample needed from the patient?",
      "type" : "boolean"
    },
    {
      "linkId" : "repeat-sample-remark",
      "text" : "Remark, including reason a repeat sample is needed",
      "type" : "text"
    }]
  },
  {
    "linkId" : "result-release",
    "text" : "Result verification and release",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "result-checked-released-by",
      "text" : "Result checked and released by",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "result-release-signature",
      "text" : "Signature",
      "type" : "string"
    },
    {
      "linkId" : "result-release-date",
      "text" : "Date",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "result-release-remark",
      "text" : "Remark, including whether a repeat sample is needed from the patient",
      "type" : "text"
    }]
  }]
}

```
