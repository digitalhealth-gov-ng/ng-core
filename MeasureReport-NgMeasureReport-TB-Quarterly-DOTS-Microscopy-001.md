# NG TB Quarterly DOTS and Microscopy Centre MeasureReport Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Quarterly DOTS and Microscopy Centre MeasureReport Example**

## Example MeasureReport: NG TB Quarterly DOTS and Microscopy Centre MeasureReport Example

Profile: [NG Measure Report](StructureDefinition-ng-measure-report.md)

**status**: Complete

**type**: Summary

**measure**: [Nigeria TB Quarterly DOTS and Microscopy Centre Measure](Measure-NgMeasure-TB-Quarterly-DOTS-Microscopy.md)

**date**: 2026-07-10 10:00:00+0100

**reporter**: [TB programme reporting unit (fictional)](Organization-NgOrganization-001.md)

**period**: 2026-04-01 00:00:00+0100 --> 2026-06-30 23:59:59+0100

> **group****code**: Reporting population

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 500000 persons

> **group****code**: Newly established DOTS centres

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 5 centres
> **stratifier****code**: Centre type
> **stratum****value**: Public

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 3 centres

> **stratum****value**: Prison

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 1 centres

> **stratum****value**: Private

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 1 centres


> **group****code**: Newly established AFB microscopy centres

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 4 centres
> **stratifier****code**: Centre type
> **stratum****value**: Public

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 2 centres

> **stratum****value**: Prison

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 1 centres

> **stratum****value**: Private

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 1 centres


> **group****code**: DOTS centres at beginning of quarter

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 18 centres

> **group****code**: DOTS centres at end of quarter

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 23 centres

> **group****code**: DOTS coverage per population

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 21739.13 persons per DOTS centre

> **group****code**: AFB microscopy centres at beginning of quarter

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 8 centres

> **group****code**: AFB microscopy centres at end of quarter

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 12 centres

> **group****code**: AFB microscopy coverage per population

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Measure Population | 1 |

**measureScore**: 41666.67 persons per AFB microscopy centre



## Resource Content

```json
{
  "resourceType" : "MeasureReport",
  "id" : "NgMeasureReport-TB-Quarterly-DOTS-Microscopy-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure-report"]
  },
  "status" : "complete",
  "type" : "summary",
  "measure" : "https://fhir-ig.digitalhealth.gov.ng/Measure/NgMeasure-TB-Quarterly-DOTS-Microscopy",
  "date" : "2026-07-10T10:00:00+01:00",
  "reporter" : {
    "reference" : "Organization/NgOrganization-001",
    "display" : "TB programme reporting unit (fictional)"
  },
  "period" : {
    "start" : "2026-04-01T00:00:00+01:00",
    "end" : "2026-06-30T23:59:59+01:00"
  },
  "group" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "reporting-population",
        "display" : "Reporting population"
      }]
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 500000,
      "unit" : "persons"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "new-dots-centres",
        "display" : "Newly established DOTS centres"
      }]
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 5,
      "unit" : "centres"
    },
    "stratifier" : [{
      "code" : [{
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
          "code" : "centre-type",
          "display" : "Centre type"
        }]
      }],
      "stratum" : [{
        "value" : {
          "coding" : [{
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
            "code" : "public",
            "display" : "Public"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
              "code" : "measure-population",
              "display" : "Measure Population"
            }]
          },
          "count" : 1
        }],
        "measureScore" : {
          "value" : 3,
          "unit" : "centres"
        }
      },
      {
        "value" : {
          "coding" : [{
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
            "code" : "prison",
            "display" : "Prison"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
              "code" : "measure-population",
              "display" : "Measure Population"
            }]
          },
          "count" : 1
        }],
        "measureScore" : {
          "value" : 1,
          "unit" : "centres"
        }
      },
      {
        "value" : {
          "coding" : [{
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
            "code" : "private",
            "display" : "Private"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
              "code" : "measure-population",
              "display" : "Measure Population"
            }]
          },
          "count" : 1
        }],
        "measureScore" : {
          "value" : 1,
          "unit" : "centres"
        }
      }]
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
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 4,
      "unit" : "centres"
    },
    "stratifier" : [{
      "code" : [{
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
          "code" : "centre-type",
          "display" : "Centre type"
        }]
      }],
      "stratum" : [{
        "value" : {
          "coding" : [{
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
            "code" : "public",
            "display" : "Public"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
              "code" : "measure-population",
              "display" : "Measure Population"
            }]
          },
          "count" : 1
        }],
        "measureScore" : {
          "value" : 2,
          "unit" : "centres"
        }
      },
      {
        "value" : {
          "coding" : [{
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
            "code" : "prison",
            "display" : "Prison"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
              "code" : "measure-population",
              "display" : "Measure Population"
            }]
          },
          "count" : 1
        }],
        "measureScore" : {
          "value" : 1,
          "unit" : "centres"
        }
      },
      {
        "value" : {
          "coding" : [{
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
            "code" : "private",
            "display" : "Private"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
              "code" : "measure-population",
              "display" : "Measure Population"
            }]
          },
          "count" : 1
        }],
        "measureScore" : {
          "value" : 1,
          "unit" : "centres"
        }
      }]
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
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 18,
      "unit" : "centres"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "dots-centres-end",
        "display" : "DOTS centres at end of quarter"
      }]
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 23,
      "unit" : "centres"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "dots-coverage",
        "display" : "DOTS coverage per population"
      }]
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 21739.13,
      "unit" : "persons per DOTS centre"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "microscopy-centres-beginning",
        "display" : "AFB microscopy centres at beginning of quarter"
      }]
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 8,
      "unit" : "centres"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "microscopy-centres-end",
        "display" : "AFB microscopy centres at end of quarter"
      }]
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 12,
      "unit" : "centres"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-quarterly-centre-report-cs",
        "code" : "microscopy-coverage",
        "display" : "AFB microscopy coverage per population"
      }]
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "measure-population",
          "display" : "Measure Population"
        }]
      },
      "count" : 1
    }],
    "measureScore" : {
      "value" : 41666.67,
      "unit" : "persons per AFB microscopy centre"
    }
  }]
}

```
