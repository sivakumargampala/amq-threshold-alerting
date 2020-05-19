%dw 2.0
output application/java
---
(vars.envs filter ((itm, ndx) -> itm.id == lower(p('secure::clarios.env.id'))))[0]