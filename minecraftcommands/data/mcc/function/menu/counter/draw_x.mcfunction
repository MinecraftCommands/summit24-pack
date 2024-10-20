

execute if score COUNTER mcc.MENU matches ..300 if predicate mcc:low run return 1
execute if score COUNTER mcc.MENU matches 301..600 if predicate mcc:mid run return 1
execute if score COUNTER mcc.MENU matches 601.. if predicate mcc:high run return 1


return fail