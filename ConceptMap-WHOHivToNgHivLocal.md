# WHO HIV to Nigeria HIV Local Concepts - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO HIV to Nigeria HIV Local Concepts**

## ConceptMap: WHO HIV to Nigeria HIV Local Concepts (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/WHOHivToNgHivLocal | *Version*:0.0.0 |
| Draft as of 2026-08-12 | *Computable Name*:WHOHivToNgHicLocal |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.6 | |

 
Directional ConceptMap from the WHO SMART Guidelines HIV Concepts CodeSystem version 1.0.0 to Nigeria HIV local programme CodeSystems. Only mappings with a defensible semantic relationship are included. `equivalent` is used where the source and target meanings substantially correspond; `inexact` is used where one concept is broader, narrower, contextual, or represents an action rather than the local programme category. Unlisted WHO concepts are intentionally left unmapped pending programme and terminology review. 

 
Supports country adaptation, terminology translation, interoperability, and traceability between WHO SMART HIV DAK concepts and Nigeria HIV programme terminology. This map is directional (WHO to Nigeria) and SHALL NOT be assumed to provide lossless reverse translation. Clinical or reporting use of mappings marked `inexact` requires review of the source context. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "WHOHivToNgHivLocal",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/WHOHivToNgHivLocal",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.6"
  },
  "version" : "0.0.0",
  "name" : "WHOHivToNgHicLocal",
  "title" : "WHO HIV to Nigeria HIV Local Concepts",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-12",
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
  "description" : "Directional ConceptMap from the WHO SMART Guidelines HIV Concepts CodeSystem\nversion 1.0.0 to Nigeria HIV local programme CodeSystems. Only mappings with\na defensible semantic relationship are included. `equivalent` is used where\nthe source and target meanings substantially correspond; `inexact` is used\nwhere one concept is broader, narrower, contextual, or represents an action\nrather than the local programme category. Unlisted WHO concepts are intentionally\nleft unmapped pending programme and terminology review.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "purpose" : "Supports country adaptation, terminology translation, interoperability, and\ntraceability between WHO SMART HIV DAK concepts and Nigeria HIV programme\nterminology. This map is directional (WHO to Nigeria) and SHALL NOT be assumed\nto provide lossless reverse translation. Clinical or reporting use of mappings\nmarked `inexact` requires review of the source context.",
  "sourceUri" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
  "group" : [{
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-follow-up-status-cs",
    "element" : [{
      "code" : "HIV.H.DE42",
      "display" : "Lost to follow-up",
      "target" : [{
        "code" : "lost",
        "display" : "Lost to follow-up",
        "equivalence" : "equivalent",
        "comment" : "WHO and Nigeria concepts represent loss to follow-up in HIV treatment follow-up."
      }]
    },
    {
      "code" : "HIV.H.DE43",
      "display" : "Transferred out",
      "target" : [{
        "code" : "to",
        "display" : "Transferred out",
        "equivalence" : "equivalent",
        "comment" : "Nigeria 'to' is the established local code for transferred out."
      }]
    },
    {
      "code" : "HIV.H.DE44",
      "display" : "Death (documented)",
      "target" : [{
        "code" : "dead",
        "display" : "Dead",
        "equivalence" : "inexact",
        "comment" : "WHO explicitly requires documented death; the Nigeria local concept is broader."
      }]
    },
    {
      "code" : "HIV.D.DE45",
      "display" : "Restarting ART",
      "target" : [{
        "code" : "restart",
        "display" : "Restart ART",
        "equivalence" : "equivalent",
        "comment" : "Both represent restarting ART after an interruption."
      }]
    },
    {
      "code" : "HIV.D.DE40",
      "display" : "Stopped ART",
      "target" : [{
        "code" : "stop",
        "display" : "Stopped ART",
        "equivalence" : "equivalent",
        "comment" : "Both represent ART having been stopped."
      }]
    },
    {
      "code" : "HIV.H.DE45",
      "display" : "Refused (stopped) treatment",
      "target" : [{
        "code" : "stop",
        "display" : "Stopped ART",
        "equivalence" : "inexact",
        "comment" : "WHO is narrower because it specifies confirmed refusal/stopping treatment."
      }]
    },
    {
      "code" : "HIV.H.DE47",
      "display" : "On ART",
      "target" : [{
        "code" : "alive-on-art",
        "display" : "Alive on ART",
        "equivalence" : "equivalent",
        "comment" : "Both indicate that the client is currently alive and receiving ART."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-adherence-cs",
    "element" : [{
      "code" : "HIV.D.DE40",
      "display" : "Stopped ART",
      "target" : [{
        "code" : "Stopped",
        "display" : "Stopped",
        "equivalence" : "inexact",
        "comment" : "The Nigeria code is used in an adherence/status context while WHO states treatment status."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-reason-for-category-change-cs",
    "element" : [{
      "code" : "HIV.H.DE42",
      "display" : "Lost to follow-up",
      "target" : [{
        "code" : "Lost",
        "display" : "Lost",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HIV.H.DE43",
      "display" : "Transferred out",
      "target" : [{
        "code" : "TO",
        "display" : "Transferred out",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HIV.H.DE44",
      "display" : "Death (documented)",
      "target" : [{
        "code" : "Dead",
        "display" : "Dead",
        "equivalence" : "inexact",
        "comment" : "WHO is narrower because it specifies documented death."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs",
    "element" : [{
      "code" : "HIV.H.DE4",
      "display" : "Did not initiate ART",
      "target" : [{
        "code" : "Not-Started",
        "display" : "ART not started",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HIV.D.DE382",
      "display" : "ART initiated within 7 days of diagnosis",
      "target" : [{
        "code" : "Started-ART",
        "display" : "Started ART",
        "equivalence" : "inexact",
        "comment" : "Nigeria is broader because it does not restrict ART initiation to seven days."
      }]
    },
    {
      "code" : "HIV.B.DE147",
      "display" : "Linked to enrolment in care and ART initiation",
      "target" : [{
        "code" : "Linked-To-Care",
        "display" : "Linked to care",
        "equivalence" : "inexact",
        "comment" : "WHO includes enrolment linkage and ART initiation; the Nigeria concept represents linkage to care."
      }]
    },
    {
      "code" : "HIV.H.DE41",
      "display" : "HIV treatment outcome",
      "target" : [{
        "code" : "Final-Outcome",
        "display" : "Final outcome",
        "equivalence" : "inexact",
        "comment" : "Nigeria represents the final tracking outcome; WHO represents the treatment outcome used for retention/attrition."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-final-outcome-cs",
    "element" : [{
      "code" : "HIV.H.DE42",
      "display" : "Lost to follow-up",
      "target" : [{
        "code" : "lost-to-follow-up",
        "display" : "Lost to follow-up",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HIV.H.DE44",
      "display" : "Death (documented)",
      "target" : [{
        "code" : "died",
        "display" : "Died",
        "equivalence" : "inexact",
        "comment" : "WHO explicitly requires documented death; the Nigeria outcome is broader."
      }]
    },
    {
      "code" : "HIV.H.DE45",
      "display" : "Refused (stopped) treatment",
      "target" : [{
        "code" : "declined",
        "display" : "Declined",
        "equivalence" : "inexact",
        "comment" : "Nigeria 'declined' is broader than WHO's confirmed refusal/stopping treatment."
      }]
    },
    {
      "code" : "HIV.D.DE382",
      "display" : "ART initiated within 7 days of diagnosis",
      "target" : [{
        "code" : "started-art",
        "display" : "Started ART",
        "equivalence" : "inexact",
        "comment" : "Nigeria is broader because it does not specify the seven-day initiation window."
      }]
    },
    {
      "code" : "HIV.H.DE49",
      "display" : "Transfer confirmed",
      "target" : [{
        "code" : "confirmed-referral",
        "display" : "Confirmed referral",
        "equivalence" : "inexact",
        "comment" : "Both describe confirmed onward movement, but WHO is specifically a confirmed transfer."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-not-started-art-cs",
    "element" : [{
      "code" : "HIV.D.DE371",
      "display" : "Patient self-reported as not ready/willing",
      "target" : [{
        "code" : "declined",
        "display" : "Declined",
        "equivalence" : "inexact",
        "comment" : "Not ready/willing is narrower than the local declined category."
      }]
    },
    {
      "code" : "HIV.D.DE372",
      "display" : "Not completed education, support and preparation for ART",
      "target" : [{
        "code" : "on-adherence-preparation",
        "display" : "On adherence preparation",
        "equivalence" : "inexact",
        "comment" : "Both describe preparation/support before ART initiation, but the local category is broader."
      }]
    },
    {
      "code" : "HIV.H.DE47",
      "display" : "On ART",
      "target" : [{
        "code" : "known-positive-on-art",
        "display" : "Known positive on ART",
        "equivalence" : "inexact",
        "comment" : "Local code is used as a reason not to newly initiate a person already known to be on ART."
      }]
    },
    {
      "code" : "HIV.D.DE377",
      "display" : "Patient diagnosed with cryptococcal meningitis",
      "target" : [{
        "code" : "on-oi-management",
        "display" : "On OI management",
        "equivalence" : "inexact",
        "comment" : "Cryptococcal meningitis is a specific opportunistic infection within the broader local OI-management category."
      }]
    },
    {
      "code" : "HIV.D.DE378",
      "display" : "Patient diagnosed with histoplasmosis",
      "target" : [{
        "code" : "on-oi-management",
        "display" : "On OI management",
        "equivalence" : "inexact",
        "comment" : "Histoplasmosis is a specific opportunistic infection within the broader local OI-management category."
      }]
    },
    {
      "code" : "HIV.D.DE380",
      "display" : "Other",
      "target" : [{
        "code" : "other",
        "display" : "Other",
        "equivalence" : "equivalent",
        "comment" : "Both are the residual other-reason category for delayed/non-initiation of ART."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-target-population-category-cs",
    "element" : [{
      "code" : "HIV.B.DE51",
      "display" : "Sex worker",
      "target" : [{
        "code" : "Female-Commercial-Sex-Workers",
        "display" : "Female commercial sex workers",
        "equivalence" : "inexact",
        "comment" : "WHO includes sex workers generally; the Nigeria target category is female-specific."
      }]
    },
    {
      "code" : "HIV.B.DE52",
      "display" : "Men who have sex with men",
      "target" : [{
        "code" : "MSM",
        "display" : "Men who have sex with men",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HIV.B.DE53",
      "display" : "Trans and gender-diverse people",
      "target" : [{
        "code" : "TG",
        "display" : "Transgender",
        "equivalence" : "inexact",
        "comment" : "WHO explicitly includes gender-diverse people in addition to transgender people."
      }]
    },
    {
      "code" : "HIV.B.DE54",
      "display" : "People who inject drugs",
      "target" : [{
        "code" : "People-Who-Inject-Drug",
        "display" : "People who inject drugs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HIV.B.DE58",
      "display" : "Orphan or vulnerable child",
      "target" : [{
        "code" : "OVC-AIDS-Orphaned",
        "display" : "OVC/AIDS orphaned",
        "equivalence" : "inexact",
        "comment" : "WHO is broader than the Nigeria category, which is specifically HIV/AIDS-oriented."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-prophylaxis-type-cs",
    "element" : [{
      "code" : "HIV.D.DE250",
      "display" : "Provide isoniazid preventive therapy",
      "target" : [{
        "code" : "inh",
        "display" : "Isoniazid preventive therapy",
        "equivalence" : "inexact",
        "comment" : "WHO represents the service/action; Nigeria represents the local prophylaxis type."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-enhanced-adherence-counselling-status-cs",
    "element" : [{
      "code" : "HIV.D.DE496",
      "display" : "Enhanced adherence counselling provided",
      "target" : [{
        "code" : "eac",
        "display" : "Enhanced adherence counselling",
        "equivalence" : "inexact",
        "comment" : "WHO represents provision of EAC; Nigeria represents the EAC concept itself."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
    "element" : [{
      "code" : "HIV.D.DE223",
      "display" : "Other reason for stopping ART",
      "target" : [{
        "code" : "art-stop-reason-10",
        "display" : "Other reason for stopping ART",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HIV.D.DE425",
      "display" : "Other reason for regimen substitution",
      "target" : [{
        "code" : "regimen-change-reason-10",
        "display" : "Other regimen change reason",
        "equivalence" : "inexact",
        "comment" : "Nigeria combines substitution/switch reasons; WHO is specifically substitution."
      }]
    },
    {
      "code" : "HIV.D.DE434",
      "display" : "Other",
      "target" : [{
        "code" : "regimen-change-reason-10",
        "display" : "Other regimen change reason",
        "equivalence" : "inexact",
        "comment" : "WHO code is specifically other within regimen switch; Nigeria combines substitution/switch reasons."
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-form-cs",
    "element" : [{
      "code" : "HIV.D.DE215",
      "display" : "Other reason for nonadherence",
      "target" : [{
        "code" : "barrier-other",
        "display" : "Other adherence barrier",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
    "sourceVersion" : "1.0.0",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-form-cs",
    "element" : [{
      "code" : "HIV.B.DE84",
      "display" : "Nucleic acid test for HIV",
      "target" : [{
        "code" : "test-type-eid",
        "display" : "Early infant diagnosis",
        "equivalence" : "inexact",
        "comment" : "WHO describes the virological test method; Nigeria uses an EID programme test-type category."
      }]
    },
    {
      "code" : "HIV.D.DE406",
      "display" : "HIV viral load test ordered",
      "target" : [{
        "code" : "test-type-viral-load",
        "display" : "Viral load",
        "equivalence" : "inexact",
        "comment" : "WHO represents the order action; Nigeria represents the requested test type."
      }]
    },
    {
      "code" : "HIV.D.DE364",
      "display" : "CD4 count",
      "target" : [{
        "code" : "other-test-cd4-count",
        "display" : "CD4 count",
        "equivalence" : "inexact",
        "comment" : "WHO represents the CD4 count data element; Nigeria code identifies the requested/recorded test type."
      }]
    },
    {
      "code" : "HIV.D.DE365",
      "display" : "CD4 cell percentage",
      "target" : [{
        "code" : "other-test-cd4-percentage",
        "display" : "CD4 percentage",
        "equivalence" : "inexact",
        "comment" : "WHO represents the CD4 percentage data element; Nigeria code identifies the requested/recorded test type."
      }]
    }]
  }]
}

```
