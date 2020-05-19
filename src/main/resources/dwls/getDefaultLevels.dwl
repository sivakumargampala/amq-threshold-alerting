%dw 2.0
output application/json
---
{
	"warning": p('mq.alert.default.warning') as Number,
	"critical": p('mq.alert.default.critical') as Number
}