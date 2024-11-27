#pragma magic [4D 50 4B 00] @ 0x00

import std.io;

fn hex_format(auto input) {
    return std::format("0x{:X}", input);
};

struct Header {
    char magic[4];
    u16 pad;
    u16 two;
    u64 fileCount [[comment("Amount of files in the archive")]];
};

struct File {
    u32 isCompressed [[comment("1 if compressed, 0 if not")]];
    u32 index [[comment("")]];
    u64 position [[format("hex_format"), comment("Offset of the raw file data in the archive")]];
    u64 size [[comment("Size of the file in the archive")]];
    u64 uncompressedSize;
    char fileName[224] [[comment("Null terminated file name")]];
};

Header header @ 0x00;
u8 pad[48] @ 0x10;
File files[header.fileCount] @ 0x40;