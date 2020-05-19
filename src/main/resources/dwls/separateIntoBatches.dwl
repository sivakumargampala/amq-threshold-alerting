%dw 2.0
import * from dw::core::Arrays
output application/json
---
((payload filter() -> $."type" == "queue") map() -> $.queueId) divideBy 10