%dw 2.0
output application/json
---
vars.fullResults ++ 
(payload map() -> {
    queueId: $.destination,
    queueDepth: $.messages,
    inFlightMessages: $.inflightMessages
})

