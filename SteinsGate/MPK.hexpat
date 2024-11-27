#pragma magic [4D 50 4B 00] @ 0x00

import std.io;

fn hex_format(auto input) {
    return std::format("0x{:08X}", input);
};

fn boolean_format(auto input) {
    if (input == 1)
        return "true";
    return "false";
};

fn filesize_format(auto input) {
    if (input < 1024)
        return std::format("{} B", input);
    if (input < 1024 * 1024)
        return std::format("{:.2f} KB", input / 1024.0);
    if (input < 1024 * 1024 * 1024)
        return std::format("{:.2f} MB", input / (1024.0 * 1024.0));
    return std::format("{:.2f} GB", input / (1024.0 * 1024.0 * 1024.0));
};

struct Header {
    char magic[4];
    char pad[2];
    u16 two;
    u64 fileCount [[comment("Amount of files in the archive")]];
};

struct File {
    u32 isCompressed [[format("boolean_format")]];
    u32 index [[comment("Index of in the file in the archive")]];
    u64 position [[format("hex_format"), comment("Offset of the raw file data in the archive")]];
    u64 size [[format("filesize_format"), comment("Size of the file in the archive")]];
    u64 uncompressedSize [[format("filesize_format")]];
    char fileName[224] [[comment("Null terminated file name")]];
    char data[size] @ position [[comment("Raw file data")]];
};

Header header @ 0x00;
char pad[48] @ 0x10;
File files[header.fileCount] @ 0x40;