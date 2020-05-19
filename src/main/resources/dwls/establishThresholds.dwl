%dw 2.0
output application/json
---
p('mq.individual.thresholds') splitBy(",") map() -> {
    name: ($ splitBy(":"))[0],
    warningThreshold: ($ splitBy(":"))[1] as Number default vars.defaultLevels.warning,
    criticalThreshold: ($ splitBy(":"))[2] as Number default vars.defaultLevels.critical,
}