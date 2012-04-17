.class public Lmyorg/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lmyorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    .line 17
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    .line 33
    invoke-virtual {p0}, Lmyorg/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    .line 34
    return-void

    .line 8
    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private ignore(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 53
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 8
    .parameter "data"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v5, 0x0

    .line 108
    .local v5, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 110
    .local v2, end:I
    :goto_0
    if-lez v2, :cond_0

    .line 111
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    :cond_0
    const/4 v3, 0x0

    .line 119
    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_4

    move v4, v3

    .line 120
    .end local v3           #i:I
    .local v4, i:I
    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_2

    .line 115
    .end local v4           #i:I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 124
    .restart local v4       #i:I
    :cond_2
    iget-object v6, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v0, v6, v7

    .local v0, b1:B
    move v4, v3

    .line 126
    .end local v3           #i:I
    .restart local v4       #i:I
    :goto_3
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 130
    :cond_3
    iget-object v6, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v1, v6, v7

    .line 132
    .local v1, b2:B
    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v6, v1

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    .end local v0           #b1:B
    .end local v1           #b2:B
    :cond_4
    return v5
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 4
    .parameter "data"
    .parameter "off"
    .parameter "length"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    .line 43
    aget-byte v2, p1, v0

    and-int/lit16 v1, v2, 0xff

    .line 45
    .local v1, v:I
    iget-object v2, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 46
    iget-object v2, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 v3, v1, 0xf

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v1           #v:I
    :cond_0
    mul-int/lit8 v2, p3, 0x2

    return v2
.end method

.method protected initialiseDecodingTable()V
    .locals 5

    .prologue
    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x41

    iget-object v3, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x61

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 25
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x42

    iget-object v3, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x62

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 26
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x43

    iget-object v3, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x63

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 27
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x44

    iget-object v3, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x64

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 28
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x45

    iget-object v3, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x65

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 29
    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x46

    iget-object v3, p0, Lmyorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x66

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 30
    return-void
.end method
