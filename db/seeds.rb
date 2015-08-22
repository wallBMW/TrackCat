area1 = Area.create(name: "Tech Services Storage", description: "PC bays", location: "Room 27 Forney")
area2 = Area.create(name: "AV Area", description: "Projectos/Control Panels", location: "Room 22 McIver")
area3 = Area.create(name: "Floor 4 Surplus Closet", description: "PCs and Keyboards, various cables", location: "Fourth Floor, Room 57")
area4 = Area.create(name: "Floor 8 Empty Cube", description: "Spare monitors, cables", location: "Eight Floor, Cube 23")

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
item_prop_def7 = ItemPropertyDefinition.create(name: "CAPACITY", item_type: item_type2)

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

item1 = Item.create(item_type: item_type1, area: area1)
item2 = Item.create(item_type: item_type1, area: area1)
item3 = Item.create(item_type: item_type1, area: area3)
item4 = Item.create(item_type: item_type2, area: area2)
item5 = Item.create(item_type: item_type2, area: area2)
item6 = Item.create(item_type: item_type3, area: area3)
item7 = Item.create(item_type: item_type3, area: area3)
item8 = Item.create(item_type: item_type4, area: area1)
item9 = Item.create(item_type: item_type5, area: area2)

item_prop1 = ItemProperty.create(item: item1, item_property_definition: item_prop_def1, value: "Intel")
item_prop2 = ItemProperty.create(item: item1, item_property_definition: item_prop_def2, value: "2.2 GHz")
item_prop3 = ItemProperty.create(item: item1, item_property_definition: item_prop_def3, value: "2")
item_prop4 = ItemProperty.create(item: item1, item_property_definition: item_prop_def4, value: "Core i5-5200U")

item_prop5 = ItemProperty.create(item: item2, item_property_definition: item_prop_def1, value: "Intel")
item_prop6 = ItemProperty.create(item: item2, item_property_definition: item_prop_def2, value: "3.1 GHz")
item_prop7 = ItemProperty.create(item: item2, item_property_definition: item_prop_def3, value: "2")
item_prop8 = ItemProperty.create(item: item2, item_property_definition: item_prop_def4, value: "Core i7-5557U")

item_prop9 = ItemProperty.create(item: item3, item_property_definition: item_prop_def1, value: "AMD")
item_prop10 = ItemProperty.create(item: item3, item_property_definition: item_prop_def2, value: "4.0 GHz")
item_prop11 = ItemProperty.create(item: item3, item_property_definition: item_prop_def3, value: "8")
item_prop12 = ItemProperty.create(item: item3, item_property_definition: item_prop_def4, value: "FX-8350")

item_prop13 = ItemProperty.create(item: item4, item_property_definition: item_prop_def5, value: "Corsair")
item_prop14 = ItemProperty.create(item: item4, item_property_definition: item_prop_def6, value: "CML8GX3M2A1600C9")
item_prop15 = ItemProperty.create(item: item4, item_property_definition: item_prop_def7, value: "8GB (2x4GB)")

item_prop16 = ItemProperty.create(item: item5, item_property_definition: item_prop_def5, value: "Corsair")
item_prop17 = ItemProperty.create(item: item5, item_property_definition: item_prop_def6, value: "TW3X4G1333C9DHX")
item_prop18 = ItemProperty.create(item: item5, item_property_definition: item_prop_def7, value: "4GB (2x2GB)")

item_prop19 = ItemProperty.create(item: item6, item_property_definition: item_prop_def8, value: "Asus")
item_prop20 = ItemProperty.create(item: item6, item_property_definition: item_prop_def9, value: "MX299Q")
item_prop21 = ItemProperty.create(item: item6, item_property_definition: item_prop_def10, value: "LCD")
item_prop22 = ItemProperty.create(item: item6, item_property_definition: item_prop_def11, value: "2560 x 1080")

item_prop23 = ItemProperty.create(item: item7, item_property_definition: item_prop_def8, value: "LG")
item_prop24 = ItemProperty.create(item: item7, item_property_definition: item_prop_def9, value: "25UM56-P")
item_prop25 = ItemProperty.create(item: item7, item_property_definition: item_prop_def10, value: "LED")
item_prop26 = ItemProperty.create(item: item7, item_property_definition: item_prop_def11, value: "2560 x 1080")

item_prop27 = ItemProperty.create(item: item8, item_property_definition: item_prop_def12, value: "Logitech")
item_prop28 = ItemProperty.create(item: item8, item_property_definition: item_prop_def13, value: "G710")

item_prop29 = ItemProperty.create(item: item9, item_property_definition: item_prop_def14, value: "SteelSeries")
item_prop30 = ItemProperty.create(item: item9, item_property_definition: item_prop_def15, value: "62271")
item_prop31 = ItemProperty.create(item: item9, item_property_definition: item_prop_def16, value: "6")
item_prop32 = ItemProperty.create(item: item9, item_property_definition: item_prop_def17, value: "Optical")
