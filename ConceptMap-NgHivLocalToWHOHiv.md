# Nigeria HIV Local Concepts to WHO SMART HIV - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV Local Concepts to WHO SMART HIV**

## ConceptMap: Nigeria HIV Local Concepts to WHO SMART HIV (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLocalToWHOHiv | *Version*:0.0.0 |
| Active as of 2026-08-15 | *Computable Name*:NgHivLocalToWHOHiv |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.9 | |

 
Directional mapping from selected Nigeria HIV local programme concepts to WHO SMART HIV 1.0.0 concepts. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "NgHivLocalToWHOHiv",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLocalToWHOHiv",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.9"
  },
  "version" : "0.0.0",
  "name" : "NgHivLocalToWHOHiv",
  "title" : "Nigeria HIV Local Concepts → WHO SMART HIV",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-15",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Directional mapping from selected Nigeria HIV local programme concepts to WHO SMART HIV 1.0.0 concepts.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "sourceCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-local-concepts",
  "targetCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-who-hiv-concepts-vs",
  "group" : [{
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-follow-up-status-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "lost",
      "target" : [{
        "code" : "HIV.H.DE42",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "to",
      "target" : [{
        "code" : "HIV.H.DE43",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "dead",
      "target" : [{
        "code" : "HIV.H.DE44",
        "equivalence" : "narrower",
        "comment" : "WHO requires documented death; the local Dead concept does not itself assert documentation."
      }]
    },
    {
      "code" : "restart",
      "target" : [{
        "code" : "HIV.D.DE45",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "stop",
      "target" : [{
        "code" : "HIV.D.DE40",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "stop",
      "target" : [{
        "code" : "HIV.H.DE45",
        "equivalence" : "narrower",
        "comment" : "To add details later"
      }]
    },
    {
      "code" : "alive-on-art",
      "target" : [{
        "code" : "HIV.H.DE47",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-adherence-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "Stopped",
      "target" : [{
        "code" : "HIV.D.DE40",
        "equivalence" : "inexact",
        "comment" : "The local code is used in an adherence/status context, while the WHO concept explicitly represents ART treatment status."
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-reason-for-category-change-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "Dead",
      "target" : [{
        "code" : "HIV.H.DE44",
        "equivalence" : "narrower",
        "comment" : "WHO requires documented death; the local Dead concept is broader."
      }]
    },
    {
      "code" : "Lost",
      "target" : [{
        "code" : "HIV.H.DE42",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "TO",
      "target" : [{
        "code" : "HIV.H.DE43",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "Not-Started",
      "target" : [{
        "code" : "HIV.H.DE4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Started-ART",
      "target" : [{
        "code" : "HIV.D.DE382",
        "equivalence" : "narrower",
        "comment" : "WHO is narrower because it requires ART initiation within 7 days of diagnosis; the local code does not specify timing."
      }]
    },
    {
      "code" : "Linked-To-Care",
      "target" : [{
        "code" : "HIV.B.DE147",
        "equivalence" : "narrower",
        "comment" : "WHO additionally specifies enrolment in care and ART initiation; the local linkage concept is broader."
      }]
    },
    {
      "code" : "Final-Outcome",
      "target" : [{
        "code" : "HIV.H.DE41",
        "equivalence" : "inexact",
        "comment" : "The local concept identifies a final tracking outcome, while WHO identifies the HIV treatment outcome data element."
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-final-outcome-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "lost-to-follow-up",
      "target" : [{
        "code" : "HIV.H.DE42",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "died",
      "target" : [{
        "code" : "HIV.H.DE44",
        "equivalence" : "narrower",
        "comment" : "WHO requires documented death; the local Died concept is broader."
      }]
    },
    {
      "code" : "declined",
      "target" : [{
        "code" : "HIV.H.DE45",
        "equivalence" : "narrower",
        "comment" : "WHO specifically represents refusal with stopped treatment; the local Declined outcome is broader."
      }]
    },
    {
      "code" : "started-art",
      "target" : [{
        "code" : "HIV.D.DE382",
        "equivalence" : "narrower",
        "comment" : "WHO is narrower because it limits initiation to within 7 days of diagnosis."
      }]
    },
    {
      "code" : "confirmed-referral",
      "target" : [{
        "code" : "HIV.H.DE49",
        "equivalence" : "inexact",
        "comment" : "The local concept represents a confirmed referral, while WHO represents a confirmed transfer."
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-not-started-art-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "declined",
      "target" : [{
        "code" : "HIV.D.DE371",
        "equivalence" : "narrower",
        "comment" : "WHO specifically states that the patient self-reported not being ready or willing; the local Declined category is broader."
      }]
    },
    {
      "code" : "on-adherence-preparation",
      "target" : [{
        "code" : "HIV.D.DE372",
        "equivalence" : "inexact",
        "comment" : "Both refer to preparation before ART initiation, but the local status and WHO reason-for-delay concepts are not identical."
      }]
    },
    {
      "code" : "known-positive-on-art",
      "target" : [{
        "code" : "HIV.H.DE47",
        "equivalence" : "wider",
        "comment" : "WHO On ART is broader because it does not additionally encode the local known-positive context."
      }]
    },
    {
      "code" : "on-oi-management",
      "target" : [{
        "code" : "HIV.D.DE377",
        "equivalence" : "narrower",
        "comment" : "Cryptococcal meningitis is one specific reason within the broader local On OI management category. Do not automatically select this target without diagnosis context."
      }]
    },
    {
      "code" : "on-oi-management",
      "target" : [{
        "code" : "HIV.D.DE378",
        "equivalence" : "narrower",
        "comment" : "Histoplasmosis is one specific reason within the broader local On OI management category. Do not automatically select this target without diagnosis context."
      }]
    },
    {
      "code" : "other",
      "target" : [{
        "code" : "HIV.D.DE380",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-target-population-category-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "Female-Commercial-Sex-Workers",
      "target" : [{
        "code" : "HIV.B.DE51",
        "equivalence" : "wider",
        "comment" : "WHO Sex worker is broader because it is not restricted to female sex workers."
      }]
    },
    {
      "code" : "MSM",
      "target" : [{
        "code" : "HIV.B.DE52",
        "equivalence" : "equivalent",
        "comment" : "WHO includes both trans and gender-diverse people; the local TG category is narrower."
      }]
    },
    {
      "code" : "TG",
      "target" : [{
        "code" : "HIV.B.DE53",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "People-Who-Inject-Drug",
      "target" : [{
        "code" : "HIV.B.DE54",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "OVC-AIDS-Orphaned",
      "target" : [{
        "code" : "HIV.B.DE58",
        "equivalence" : "wider",
        "comment" : "WHO Orphan or vulnerable child is broader than the local HIV/AIDS-oriented OVC category."
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-prophylaxis-type-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "inh",
      "target" : [{
        "code" : "HIV.D.DE250",
        "equivalence" : "inexact",
        "comment" : "The local code identifies isoniazid prophylaxis type; WHO represents the action of providing isoniazid preventive therapy."
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-enhanced-adherence-counselling-status-cs",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-who-hiv-concepts-cs",
    "element" : [{
      "code" : "eac",
      "target" : [{
        "code" : "HIV.D.DE496",
        "equivalence" : "inexact",
        "comment" : "The local concept identifies enhanced adherence counselling; WHO explicitly represents that counselling was provided."
      }]
    }]
  }]
}

```
