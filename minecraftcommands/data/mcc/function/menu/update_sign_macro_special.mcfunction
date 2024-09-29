$data modify storage mcc temp.t set value "$(t1)"
data modify storage mcc temp.title set string storage mcc temp.t 1 27

$data modify block 30 83 -15 front_text.messages set value ['{"text":"","clickEvent":{"action":"run_command","value":"function mcc:menu/update_sign"},"extra":[{"text":"<"}, {"storage":"mcc","nbt":"temp.title"},{"text":">"}]}', '"$(t2)"', '"$(t3)"', '"$(t4)"']