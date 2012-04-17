.class public final Lmyorg/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .locals 14
    .parameter "bytes"

    .prologue
    const/16 v13, 0xf0

    const/16 v12, 0xe0

    const/16 v11, 0xc0

    .line 9
    const/4 v6, 0x0

    .line 10
    .local v6, i:I
    const/4 v7, 0x0

    .line 12
    .local v7, length:I
    :goto_0
    array-length v9, p0

    if-ge v6, v9, :cond_3

    .line 13
    add-int/lit8 v7, v7, 0x1

    .line 14
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_0

    .line 16
    add-int/lit8 v7, v7, 0x1

    .line 17
    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 18
    :cond_0
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_1

    .line 19
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 20
    :cond_1
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_2

    .line 21
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 23
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 27
    :cond_3
    new-array v5, v7, [C

    .line 29
    .local v5, cs:[C
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 32
    :goto_1
    array-length v9, p0

    if-ge v6, v9, :cond_8

    .line 35
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_4

    .line 36
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int v4, v9, v10

    .line 38
    .local v4, codePoint:I
    const/high16 v9, 0x1

    sub-int v0, v4, v9

    .line 39
    .local v0, U:I
    const v9, 0xd800

    shr-int/lit8 v10, v0, 0xa

    or-int/2addr v9, v10

    int-to-char v1, v9

    .line 40
    .local v1, W1:C
    const v9, 0xdc00

    and-int/lit16 v10, v0, 0x3ff

    or-int/2addr v9, v10

    int-to-char v2, v9

    .line 41
    .local v2, W2:C
    add-int/lit8 v8, v7, 0x1

    .end local v7           #length:I
    .local v8, length:I
    aput-char v1, v5, v7

    .line 42
    move v3, v2

    .line 43
    .local v3, ch:C
    add-int/lit8 v6, v6, 0x4

    move v7, v8

    .line 58
    .end local v0           #U:I
    .end local v1           #W1:C
    .end local v2           #W2:C
    .end local v4           #codePoint:I
    .end local v8           #length:I
    .restart local v7       #length:I
    :goto_2
    add-int/lit8 v8, v7, 0x1

    .end local v7           #length:I
    .restart local v8       #length:I
    aput-char v3, v5, v7

    move v7, v8

    .line 59
    .end local v8           #length:I
    .restart local v7       #length:I
    goto :goto_1

    .line 44
    .end local v3           #ch:C
    :cond_4
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_5

    .line 45
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0xc

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 46
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    .line 47
    .end local v3           #ch:C
    :cond_5
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xd0

    const/16 v10, 0xd0

    if-ne v9, v10, :cond_6

    .line 48
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 49
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 50
    .end local v3           #ch:C
    :cond_6
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_7

    .line 51
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 52
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 54
    .end local v3           #ch:C
    :cond_7
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-char v3, v9

    .line 55
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 61
    .end local v3           #ch:C
    :cond_8
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    return-object v9
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 7
    .parameter "input"
    .parameter "delimiter"

    .prologue
    .line 177
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 178
    .local v5, v:Ljava/util/Vector;
    const/4 v1, 0x1

    .line 181
    .local v1, moreTokens:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 183
    .local v4, tokenLocation:I
    if-lez v4, :cond_0

    .line 184
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, subString:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 188
    .end local v3           #subString:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 189
    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    .end local v4           #tokenLocation:I
    :cond_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 195
    .local v2, res:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v2

    if-eq v0, v6, :cond_2

    .line 196
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_2
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "string"

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 167
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 170
    .local v1, ch:C
    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v1           #ch:C
    :cond_0
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, changed:Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 149
    .local v2, chars:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 150
    aget-char v0, v2, v3

    .line 151
    .local v0, ch:C
    const/16 v4, 0x41

    if-gt v4, v0, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v0, :cond_0

    .line 152
    const/4 v1, 0x1

    .line 153
    add-int/lit8 v4, v0, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 149
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v0           #ch:C
    :cond_1
    if-eqz v1, :cond_2

    .line 158
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 161
    :cond_2
    return-object p0
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .locals 9
    .parameter "string"

    .prologue
    .line 69
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v2, bOut:Ljava/io/ByteArrayOutputStream;
    move-object v3, p0

    .line 71
    .local v3, c:[C
    const/4 v6, 0x0

    .line 73
    .local v6, i:I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_5

    .line 74
    aget-char v4, v3, v6

    .line 76
    .local v4, ch:C
    const/16 v7, 0x80

    if-ge v4, v7, :cond_0

    .line 77
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 109
    goto :goto_0

    .line 78
    :cond_0
    const/16 v7, 0x800

    if-ge v4, v7, :cond_1

    .line 79
    shr-int/lit8 v7, v4, 0x6

    or-int/lit16 v7, v7, 0xc0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    and-int/lit8 v7, v4, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 83
    :cond_1
    const v7, 0xd800

    if-lt v4, v7, :cond_4

    const v7, 0xdfff

    if-gt v4, v7, :cond_4

    .line 86
    add-int/lit8 v7, v6, 0x1

    array-length v8, v3

    if-lt v7, v8, :cond_2

    .line 87
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "invalid UTF-16 codepoint"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    :cond_2
    move v0, v4

    .line 90
    .local v0, W1:C
    add-int/lit8 v6, v6, 0x1

    aget-char v4, v3, v6

    .line 91
    move v1, v4

    .line 94
    .local v1, W2:C
    const v7, 0xdbff

    if-le v0, v7, :cond_3

    .line 95
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "invalid UTF-16 codepoint"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_3
    and-int/lit16 v7, v0, 0x3ff

    shl-int/lit8 v7, v7, 0xa

    and-int/lit16 v8, v1, 0x3ff

    or-int/2addr v7, v8

    const/high16 v8, 0x1

    add-int v5, v7, v8

    .line 98
    .local v5, codePoint:I
    shr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 100
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    and-int/lit8 v7, v5, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 103
    .end local v0           #W1:C
    .end local v1           #W2:C
    .end local v5           #codePoint:I
    :cond_4
    shr-int/lit8 v7, v4, 0xc

    or-int/lit16 v7, v7, 0xe0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    and-int/lit8 v7, v4, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 111
    .end local v4           #ch:C
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, changed:Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 124
    .local v2, chars:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 125
    aget-char v0, v2, v3

    .line 126
    .local v0, ch:C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_0

    const/16 v4, 0x7a

    if-lt v4, v0, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 128
    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 124
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v0           #ch:C
    :cond_1
    if-eqz v1, :cond_2

    .line 133
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 136
    :cond_2
    return-object p0
.end method
