// ===========================================
// POSITRON RING OCTUPOLES DEFINITION
// ===========================================
//
// Notes:
// ------

KOCTPS104 := 8.388 * IOCTPS104;
KOCTPL210 := 8.388 * IOCTPL210;
KOCTPL101 := 8.388 * IOCTPL101;

OCTPS104: MULTIPOLE,KNL:={0,0,0,KOCTPS104};
OCTPL210: MULTIPOLE,KNL:={0,0,0,KOCTPL210};
OCTPL101: MULTIPOLE,KNL:={0,0,0,KOCTPL101};
OCTPL201: MULTIPOLE,KNL:={0,0,0,KOCTPL201};

return;
