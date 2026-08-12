# Nigeria HIV Local Concepts - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV Local Concepts**

## ValueSet: Nigeria HIV Local Concepts (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-local-concepts | *Version*:0.0.0 |
| Active as of 2026-07-24 | *Computable Name*:NgHivLocalConceptsVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.99 | |

 
Local HIV, TB/HIV, demographic and program concepts referenced by the supplied HIV ConceptMaps. Codes remain in their original local CodeSystems. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ng-hiv-local-concepts",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-local-concepts",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.99"
  }],
  "version" : "0.0.0",
  "name" : "NgHivLocalConceptsVS",
  "title" : "Nigeria HIV Local Concepts",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Local HIV, TB/HIV, demographic and program concepts referenced by the supplied HIV ConceptMaps. Codes remain in their original local CodeSystems.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-follow-up-status-cs",
      "concept" : [{
        "code" : "to",
        "display" : "Transfer out"
      },
      {
        "code" : "dead",
        "display" : "Dead"
      },
      {
        "code" : "drop",
        "display" : "Drop"
      },
      {
        "code" : "restart",
        "display" : "Restart"
      },
      {
        "code" : "lost",
        "display" : "Lost to follow-up"
      },
      {
        "code" : "stop",
        "display" : "Stopped treatment"
      },
      {
        "code" : "alive-on-art",
        "display" : "Alive on ART"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-adherence-cs",
      "concept" : [{
        "code" : "Stopped",
        "display" : "Stopped"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-yes-no-cs",
      "concept" : [{
        "code" : "true",
        "display" : "Yes"
      },
      {
        "code" : "false",
        "display" : "No"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-reason-for-category-change-cs",
      "concept" : [{
        "code" : "Dead",
        "display" : "Dead"
      },
      {
        "code" : "Lost",
        "display" : "Lost"
      },
      {
        "code" : "TO",
        "display" : "TO"
      },
      {
        "code" : "Unknown",
        "display" : "Unknown"
      },
      {
        "code" : "Other",
        "display" : "Other"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-education-level-cs",
      "concept" : [{
        "code" : "No-Education",
        "display" : "No education"
      },
      {
        "code" : "Primary",
        "display" : "Primary"
      },
      {
        "code" : "Secondary",
        "display" : "Secondary"
      },
      {
        "code" : "Tertiary",
        "display" : "Tertiary"
      },
      {
        "code" : "TVET",
        "display" : "TVET"
      },
      {
        "code" : "Other",
        "display" : "Other, specify"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs",
      "concept" : [{
        "code" : "Started-ART",
        "display" : "Started ART"
      },
      {
        "code" : "Final-Outcome",
        "display" : "Final outcome"
      },
      {
        "code" : "Linked-To-Care",
        "display" : "Linked to care and treatment"
      },
      {
        "code" : "Not-Started",
        "display" : "ART Not started"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-service-provider-cs",
      "concept" : [{
        "code" : "Health-Center",
        "display" : "Health center"
      },
      {
        "code" : "Public-Hospital",
        "display" : "Public hospital"
      },
      {
        "code" : "Private-Hospital",
        "display" : "Private hospital"
      },
      {
        "code" : "NBO-FBO-Hospital",
        "display" : "NBO/FBO hospital"
      },
      {
        "code" : "Private-Clinic",
        "display" : "Private clinic"
      },
      {
        "code" : "Self-referred",
        "display" : "Self-referred"
      },
      {
        "code" : "Community-Referred",
        "display" : "Community referred"
      },
      {
        "code" : "Other",
        "display" : "Other (Specify)"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-final-outcome-cs",
      "concept" : [{
        "code" : "started-art",
        "display" : "Started ART"
      },
      {
        "code" : "died",
        "display" : "Died"
      },
      {
        "code" : "confirmed-referral",
        "display" : "Confirmed referral"
      },
      {
        "code" : "started-art-in-other-hf",
        "display" : "Started ART in other HF"
      },
      {
        "code" : "lost-to-follow-up",
        "display" : "Lost to Follow up"
      },
      {
        "code" : "other",
        "display" : "Other"
      },
      {
        "code" : "declined",
        "display" : "Declined"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-prophylaxis-type-cs",
      "concept" : [{
        "code" : "inh",
        "display" : "INH"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-not-started-art-cs",
      "concept" : [{
        "code" : "referred-tx-not-initiated",
        "display" : "Referred TX not initiated"
      },
      {
        "code" : "died",
        "display" : "Died"
      },
      {
        "code" : "known-positive-on-art",
        "display" : "Known +VE on ART"
      },
      {
        "code" : "on-oi-management",
        "display" : "On OI management"
      },
      {
        "code" : "other",
        "display" : "Other Specify here"
      },
      {
        "code" : "declined",
        "display" : "Declined"
      },
      {
        "code" : "on-adherence-preparation",
        "display" : "On adherence preparation"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-target-population-category-cs",
      "concept" : [{
        "code" : "MSM",
        "display" : "MSM"
      },
      {
        "code" : "Female-Commercial-Sex-Workers",
        "display" : "Female commercial sex workers"
      },
      {
        "code" : "TG",
        "display" : "TG"
      },
      {
        "code" : "OVC-AIDS-Orphaned",
        "display" : "OVC or AIDS Orphaned"
      },
      {
        "code" : "Mobile-Daily-Laborers",
        "display" : "Mobile or Daily laborers"
      },
      {
        "code" : "Distance-Drivers",
        "display" : "Distance drivers"
      },
      {
        "code" : "Refugee",
        "display" : "Refugee"
      },
      {
        "code" : "People-Who-Inject-Drug",
        "display" : "People who Inject drug"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-enhanced-adherence-counselling-status-cs",
      "concept" : [{
        "code" : "eac",
        "display" : "Enhanced Adherence Counselling"
      }]
    }]
  }
}

```
