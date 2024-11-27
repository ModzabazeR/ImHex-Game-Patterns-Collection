u16 count @ 0x00;

struct KerningEntry {
    char16 first;
    char16 second;
    s16 kern;
};

KerningEntry entries[count] @ 0x02;