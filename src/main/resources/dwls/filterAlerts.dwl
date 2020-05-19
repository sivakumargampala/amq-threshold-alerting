%dw 2.0
output application/java
---
((payload filter() -> $.alert == vars.alertLevel) map() -> $.queueId ++ " has a depth of " ++ $.depth) joinBy "\r\n"
