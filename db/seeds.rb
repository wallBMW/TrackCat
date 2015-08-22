area1 = Area.create(name: "Tech Services Storage", description: "PC bays", location: "Room 27 Forney")
area2 = Area.create(name: "Floor 4 Surplus Closet", description: "PCs and Keyboards, various cables", location: "Fourth Floor, Room 57")
area3 = Area.create(name: "Floor 8 Empty Cube", description: "Spare monitors, cables", location: "Eight Floor, Cube 23")

item_type1 = ItemType.create(name: "CPU", description: "The central processing unit of a computer.")
item_type2 = ItemType.create(name: "RAM", description: "On board memory.")
item_type3 = ItemType.create(name: "Monitor", description: "Visual output of the computer.")
item_type4 = ItemType.create(name: "Keyboard", description: "Input mechanism for the computer.")
item_type5 = ItemType.create(name: "Mouse", description: "Input mechanism for the computer.")

item_prop_def1 = ItemPropertyDefinition.create(name: "BRAND", item_type: item_type1)
item_prop_def2 = ItemPropertyDefinition.create(name: "CLOCKSPEED", item_type: item_type1)
item_prop_def3 = ItemPropertyDefinition.create(name: "NUM CORES", item_type: item_type1)
item_prop_def4 = ItemPropertyDefinition.create(name: "MODEL", item_type: item_type1)

item_prop_def5 = ItemPropertyDefinition.create(name: "BRAND", item_type: item_type2)
item_prop_def6 = ItemPropertyDefinition.create(name: "MODEL", item_type: item_type2)
item_prop_def7 = ItemPropertyDefinition.create(name: "SPEED", item_type: item_type2)

item_prop_def8 = ItemPropertyDefinition.create(name: "BRAND", item_type: item_type3)
item_prop_def9 = ItemPropertyDefinition.create(name: "MODEL", item_type: item_type3)
item_prop_def10 = ItemPropertyDefinition.create(name: "TYPE", item_type: item_type3)
item_prop_def11 = ItemPropertyDefinition.create(name: "NATIVE_RES", item_type: item_type3)

item_prop_def12 = ItemPropertyDefinition.create(name: "BRAND", item_type: item_type4)
item_prop_def13 = ItemPropertyDefinition.create(name: "MODEL", item_type: item_type4)

item_prop_def14 = ItemPropertyDefinition.create(name: "BRAND", item_type: item_type5)
item_prop_def15 = ItemPropertyDefinition.create(name: "MODEL", item_type: item_type5)
item_prop_def16 = ItemPropertyDefinition.create(name: "NUM BUTTONS", item_type: item_type5)
item_prop_def17 = ItemPropertyDefinition.create(name: "TYPE", item_type: item_type5)
