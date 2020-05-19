%dw 2.0
output application/json 
fun getThreshold(qName) = (vars.queueThresholds filter() -> $.name == qName)[0]
fun getAlertLevel(qName, qDepth) = 
    if (qDepth > getThreshold(qName).criticalThreshold and getThreshold(qName).criticalThreshold > 0)
        "CRITICAL"
    else if (qDepth > getThreshold(qName).warningThreshold and getThreshold(qName).warningThreshold > 0) 
        "WARNING"
    else 
        null
---
(payload map() -> {
    queueId: $.queueId,
    depth: $.queueDepth,
    alert: getAlertLevel($.queueId, $.queueDepth)
}) filter not isBlank($.alert)