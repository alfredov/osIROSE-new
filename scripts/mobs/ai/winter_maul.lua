registerNpc(368, {
  walk_speed        = 245,
  run_speed         = 780,
  scale             = 155,
  r_weapon          = 0,
  l_weapon          = 0,
  level             = 105,
  hp                = 35,
  attack            = 540,
  hit               = 263,
  def               = 619,
  res               = 179,
  avoid             = 115,
  attack_spd        = 130,
  is_magic_damage   = 0,
  ai_type           = 143,
  give_exp          = 88,
  drop_type         = 383,
  drop_money        = 23,
  drop_item         = 48,
  union_number      = 48,
  need_summon_count = 0,
  sell_tab0         = 0,
  sell_tab1         = 0,
  sell_tab2         = 0,
  sell_tab3         = 0,
  can_target        = 0,
  attack_range      = 250,
  npc_type          = 3,
  hit_material_type = 0,
  face_icon         = 0,
  summon_mob_type   = 0,
  quest_type        = 0,
  height            = 0
});

function OnInit(entity)
  return true
end

function OnCreate(entity)
  return true
end

function OnDelete(entity)
  return true
end

function OnDead(entity)
end

function OnDamaged(entity)
end