%dw 2.0
import * from dw::test::Asserts
---
payload  must equalTo([
  {
    batchId: 1,
    "x-source": "BM",
    "x-target": "MKT_UK",
    "x-message-type": "FLI_UPD_RES",
    "x-message-id": "2863bd85-325e-36ae-7d11-89794757c971",
    "x-processing-time": "38ms",
    batchResult: {
      Status: "Failure",
      Errors: [
        {
          Error: {
            Summary: "FLI update error",
            Severity: "Severe",
            Messages: [
              "Missing FLI record"
            ],
            Code: "4"
          },
          EntityId: {
            Type: "FLI",
            ReferenceIds: [
              {
                SystemId: "BM",
                Id: "FLI-00002344-1-1"
              }
            ]
          }
        }
      ]
    }
  }
])