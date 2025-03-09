struct Entry {
	char16 id[0x40];
	u64 indexX10;
	char16 text[0x400];
};

u32 count @ 0x00;
Entry entry[count] @ 0x04;