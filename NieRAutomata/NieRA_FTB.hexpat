#pragma magic [[46 54 42 20]] @ 0x00

import std.io;

fn format_offset(auto input) {
    return std::format("0x{:08X}", input);
};

struct Header
{
    char magic[4];
    u32 two;
    char uuid[36];
    u8 nullByte;
    char fileName[32];
    char fontName[32];
    u8;
    u8;
    u8;
    u16 newline_amount;
    u16 characters_padding;
    u16 line_height;
    u16 textures_count;
    u16;
    u16 chars_count;
    u32 textures_offset [[format("format_offset")]];
    u32 chars_offset [[format("format_offset")]];
    u32 chars_offset2 [[format("format_offset")]];
};

struct Texture
{
	u16 index;
	u16 width;
	u16 height;
	u16 u_0;
	u32 u_2 [[format("format_offset")]];
	u32 u_22 [[format("format_offset")]];
};

struct Char
{
	char16 c;
	u16 texId;
	u16 width;
	u16 height;
	u16 u;
	u16 v;
};

Header header @ 0x00;
Texture textures[header.textures_count] @ header.textures_offset;
Char chars[header.chars_count] @ header.chars_offset;