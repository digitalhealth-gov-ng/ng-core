# Nigeria HIV Local Concepts → LOINC - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV Local Concepts → LOINC**

## ConceptMap: Nigeria HIV Local Concepts → LOINC 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLocalToLOINC | *Version*:0.0.0 |
| Active as of 2026-07-24 | *Computable Name*:NgHivLocalToLOINC |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.2 | |

 
Unidirectional mapping from local HIV-related concepts to LOINC, inferred from the supplied bidirectional ConceptMap groups. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "NgHivLocalToLOINC",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLocalToLOINC",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.2"
  },
  "version" : "0.0.0",
  "name" : "NgHivLocalToLOINC",
  "title" : "Nigeria HIV Local Concepts to LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-24",
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
  "description" : "Unidirectional mapping from local HIV-related concepts to LOINC, inferred from the supplied bidirectional ConceptMap groups.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "sourceCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-local-concepts",
  "targetCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-loinc-concepts",
  "group" : [{
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-follow-up-status-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "to",
      "target" : [{
        "code" : "45256-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "dead",
      "target" : [{
        "code" : "77978-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "drop",
      "target" : [{
        "code" : "45257-3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "restart",
      "target" : [{
        "code" : "63936-9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "lost",
      "target" : [{
        "code" : "45237-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "stop",
      "target" : [{
        "code" : "91382-2",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-adherence-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "Stopped",
      "target" : [{
        "code" : "91382-2",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-yes-no-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "true",
      "target" : [{
        "code" : "LA29252-6",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "false",
      "target" : [{
        "code" : "LA29253-4",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-reason-for-category-change-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "Dead",
      "target" : [{
        "code" : "77978-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Lost",
      "target" : [{
        "code" : "45237-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "TO",
      "target" : [{
        "code" : "45256-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Unknown",
      "target" : [{
        "code" : "LA29947-1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Other",
      "target" : [{
        "code" : "LA46-8",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-education-level-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "No-Education",
      "target" : [{
        "code" : "LA35-1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Primary",
      "target" : [{
        "code" : "LA32466-7",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Secondary",
      "target" : [{
        "code" : "LA32467-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tertiary",
      "target" : [{
        "code" : "LA15568-1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "TVET",
      "target" : [{
        "code" : "LA39-3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Other",
      "target" : [{
        "code" : "LA46-8",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "Started-ART",
      "target" : [{
        "code" : "63936-9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Final-Outcome",
      "target" : [{
        "code" : "63939-3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Linked-To-Care",
      "target" : [{
        "code" : "67723-7",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-yes-no-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "true",
      "target" : [{
        "code" : "LA26438-4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "false",
      "target" : [{
        "code" : "LA26440-0",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-yes-no-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "true",
      "target" : [{
        "code" : "LA15173-0",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "false",
      "target" : [{
        "code" : "LA26683-5",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-service-provider-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "Other",
      "target" : [{
        "code" : "LA46-8",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-final-outcome-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "started-art",
      "target" : [{
        "code" : "63936-9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "died",
      "target" : [{
        "code" : "81954-0",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "confirmed-referral",
      "target" : [{
        "code" : "39266-2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "started-art-in-other-hf",
      "target" : [{
        "code" : "45235-9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "lost-to-follow-up",
      "target" : [{
        "code" : "45237-5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "other",
      "target" : [{
        "code" : "LA46-8",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-prophylaxis-type-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "inh",
      "target" : [{
        "code" : "18934-0",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-not-started-art-cs",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "referred-tx-not-initiated",
      "target" : [{
        "code" : "LP73973-7",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "died",
      "target" : [{
        "code" : "LA4645-3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "known-positive-on-art",
      "target" : [{
        "code" : "45231-8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "on-oi-management",
      "target" : [{
        "code" : "47244-9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "other",
      "target" : [{
        "code" : "LA46-8",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
