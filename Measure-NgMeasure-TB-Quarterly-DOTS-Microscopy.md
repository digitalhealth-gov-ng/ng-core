# NG TB Quarterly DOTS and Microscopy Centre Measure - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Quarterly DOTS and Microscopy Centre Measure**

## Measure: NG TB Quarterly DOTS and Microscopy Centre Measure (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Measure/NgMeasure-TB-Quarterly-DOTS-Microscopy | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgTBQuarterlyDotsMicroscopyCentreMeasure |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.29.3 | |

 
Aggregate reporting contract corresponding to NTBLCP/TB 18. The current population criteria are placeholders and do not constitute executable calculation logic. 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: NgTBQuarterlyDotsMicroscopyCentreMeasure
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: Nigeria TB Quarterly DOTS and Microscopy Centre Measure
* Knowledge Artifact Metadata: Status
  * ?: Draft
* Knowledge Artifact Metadata: Experimental
  * ?: true
* Knowledge Artifact Metadata: Description
  * ?: Aggregate reporting contract corresponding to NTBLCP/TB 18. The current population criteria are placeholders and do not constitute executable calculation logic.
* Knowledge Artifact Metadata: Measure Steward
  * ?: NDHI
* Knowledge Artifact Metadata: Steward Contact Details
  * ?: NDHI:[https://digitalhealth.gov.ng](https://digitalhealth.gov.ng)
* Knowledge Artifact Metadata: Measure Metadata
* Knowledge Artifact Metadata: Version Number
  * ?: 0.0.0
* Knowledge Artifact Metadata: Measure Scoring
  * ?: Continuous Variable
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Population covered by the quarterly State or LGA report.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Population covered by the quarterly State or LGA report.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Number of newly established DOTS centres during the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Number of newly established DOTS centres during the reporting quarter.
* Knowledge Artifact Metadata: Stratifier
  * ?: **Code**: Centre type**Description**: Centre type: Public, Prison or Private.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Number of newly established AFB microscopy centres during the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Number of newly established AFB microscopy centres during the reporting quarter.
* Knowledge Artifact Metadata: Stratifier
  * ?: **Code**: Centre type**Description**: Centre type: Public, Prison or Private.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Number of DOTS centres at the beginning of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Number of DOTS centres at the beginning of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Number of DOTS centres at the end of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Number of DOTS centres at the end of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Population-to-DOTS-centre ratio at the end of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Population-to-DOTS-centre ratio at the end of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Number of AFB microscopy centres at the beginning of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Number of AFB microscopy centres at the beginning of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Number of AFB microscopy centres at the end of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Number of AFB microscopy centres at the end of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Population-to-AFB-microscopy-centre ratio at the end of the reporting quarter.
* Knowledge Artifact Metadata: Measure Population
  * ?: **Description**:Population-to-AFB-microscopy-centre ratio at the end of the reporting quarter.
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "NgMeasure-TB-Quarterly-DOTS-Microscopy",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Measure/NgMeasure-TB-Quarterly-DOTS-Microscopy",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.29.3"
  }],
  "version" : "0.0.0",
  "name" : "NgTBQuarterlyDotsMicroscopyCentreMeasure",
  "title" : "Nigeria TB Quarterly DOTS and Microscopy Centre Measure",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-18",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Aggregate reporting contract corresponding to NTBLCP/TB 18. The current\npopulation criteria are placeholders and do not constitute executable\ncalculation logic.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "scoring" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/measure-scoring",
      "code" : "continuous-variable",
      "display" : "Continuous Variable"
    }]
  },
  "group" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "reporting-population",
        "display" : "Reporting population"
      }]
    },
    "description" : "Population covered by the quarterly State or LGA report.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Population covered by the quarterly State or LGA report.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "new-dots-centres",
        "display" : "Newly established DOTS centres"
      }]
    },
    "description" : "Number of newly established DOTS centres during the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Number of newly established DOTS centres during the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }],
    "stratifier" : [{
      "code" : {
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
          "code" : "centre-type",
          "display" : "Centre type"
        }]
      },
      "description" : "Centre type: Public, Prison or Private.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "new-afb-microscopy-centres",
        "display" : "Newly established AFB microscopy centres"
      }]
    },
    "description" : "Number of newly established AFB microscopy centres during the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Number of newly established AFB microscopy centres during the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }],
    "stratifier" : [{
      "code" : {
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
          "code" : "centre-type",
          "display" : "Centre type"
        }]
      },
      "description" : "Centre type: Public, Prison or Private.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "dots-centres-beginning",
        "display" : "DOTS centres at beginning of quarter"
      }]
    },
    "description" : "Number of DOTS centres at the beginning of the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Number of DOTS centres at the beginning of the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "dots-centres-end",
        "display" : "DOTS centres at end of quarter"
      }]
    },
    "description" : "Number of DOTS centres at the end of the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Number of DOTS centres at the end of the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "dots-coverage",
        "display" : "DOTS coverage per population"
      }]
    },
    "description" : "Population-to-DOTS-centre ratio at the end of the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Population-to-DOTS-centre ratio at the end of the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "microscopy-centres-beginning",
        "display" : "AFB microscopy centres at beginning of quarter"
      }]
    },
    "description" : "Number of AFB microscopy centres at the beginning of the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Number of AFB microscopy centres at the beginning of the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "microscopy-centres-end",
        "display" : "AFB microscopy centres at end of quarter"
      }]
    },
    "description" : "Number of AFB microscopy centres at the end of the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Number of AFB microscopy centres at the end of the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "microscopy-coverage",
        "display" : "AFB microscopy coverage per population"
      }]
    },
    "description" : "Population-to-AFB-microscopy-centre ratio at the end of the reporting quarter.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "description" : "Population-to-AFB-microscopy-centre ratio at the end of the reporting quarter.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  }]
}

```
