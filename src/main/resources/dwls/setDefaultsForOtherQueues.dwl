%dw 2.0
output application/json
fun getWarningThreshold(name) = (vars.queueThresholds filter() -> $.name == name).warningThreshold[0]
fun getCriticalThreshold(name) = (vars.queueThresholds filter() -> $.name == name).criticalThreshold[0]
---
payload map() -> {
    name: $.queueId,
    warningThreshold: getWarningThreshold($.queueId) default vars.defaultLevels.warning,
    criticalThreshold: getCriticalThreshold($.queueId) default vars.defaultLevels.critical
}