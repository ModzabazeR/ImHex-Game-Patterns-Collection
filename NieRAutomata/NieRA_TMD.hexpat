struct Entry {
    u32 idSize;
    char16 id[idSize];
    u32 textSize;
    char16 text[textSize];
};

u32 count @ 0x00;
Entry entries[count] @ 0x04;