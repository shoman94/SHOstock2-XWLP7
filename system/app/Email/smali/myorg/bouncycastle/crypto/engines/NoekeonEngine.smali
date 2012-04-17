.class public Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;
.super Ljava/lang/Object;
.source "NoekeonEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final nullVector:[I

.field private static final roundConstants:[I


# instance fields
.field private _forEncryption:Z

.field private _initialised:Z

.field private decryptKeys:[I

.field private state:[I

.field private subKeys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    .line 22
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    return-void

    .line 17
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 22
    :array_1
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, v1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    .line 39
    return-void
.end method

.method private bytesToIntBig([BI)I
    .locals 3
    .parameter "in"
    .parameter "off"

    .prologue
    .line 205
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, off:I
    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p2, v0, 0x1

    .end local v0           #off:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #off:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private decryptBlock([BI[BI)I
    .locals 8
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v4

    .line 132
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v5

    .line 133
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v6

    .line 134
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v7

    .line 136
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 140
    const/16 v0, 0x10

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 141
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 142
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 143
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    .line 144
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    .line 145
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    .line 140
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 149
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 151
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, p3, p4}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 152
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 153
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 154
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v7

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 156
    const/16 v1, 0x10

    return v1
.end method

.method private encryptBlock([BI[BI)I
    .locals 9
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v4

    .line 106
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v5

    .line 107
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v6

    .line 108
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v7

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 112
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 113
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 114
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    .line 115
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    .line 116
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 120
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 122
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, p3, p4}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 123
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 124
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 125
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v7

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 127
    return v8
.end method

.method private gamma([I)V
    .locals 8
    .parameter "a"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    aget v1, p1, v5

    aget v2, p1, v7

    xor-int/lit8 v2, v2, -0x1

    aget v3, p1, v6

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v5

    .line 161
    aget v1, p1, v4

    aget v2, p1, v6

    aget v3, p1, v5

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v4

    .line 163
    aget v0, p1, v7

    .line 164
    .local v0, tmp:I
    aget v1, p1, v4

    aput v1, p1, v7

    .line 165
    aput v0, p1, v4

    .line 166
    aget v1, p1, v6

    aget v2, p1, v4

    aget v3, p1, v5

    xor-int/2addr v2, v3

    aget v3, p1, v7

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v6

    .line 168
    aget v1, p1, v5

    aget v2, p1, v7

    xor-int/lit8 v2, v2, -0x1

    aget v3, p1, v6

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v5

    .line 169
    aget v1, p1, v4

    aget v2, p1, v6

    aget v3, p1, v5

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v4

    .line 170
    return-void
.end method

.method private intToBytesBig(I[BI)V
    .locals 2
    .parameter "x"
    .parameter "out"
    .parameter "off"

    .prologue
    .line 210
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .local v0, off:I
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 211
    add-int/lit8 p3, v0, 0x1

    .end local v0           #off:I
    .restart local p3
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 212
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #off:I
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 213
    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 214
    return-void
.end method

.method private pi1([I)V
    .locals 4
    .parameter "a"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 191
    aget v0, p1, v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v1

    .line 192
    aget v0, p1, v2

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    .line 193
    aget v0, p1, v3

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    .line 194
    return-void
.end method

.method private pi2([I)V
    .locals 5
    .parameter "a"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 197
    aget v0, p1, v2

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    .line 198
    aget v0, p1, v3

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    .line 199
    aget v0, p1, v4

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v4

    .line 200
    return-void
.end method

.method private rotl(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 217
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v1

    aput v1, v0, v2

    .line 99
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    .line 100
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    .line 102
    return-void
.end method

.method private theta([I[I)V
    .locals 9
    .parameter "a"
    .parameter "k"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    aget v2, p1, v4

    aget v3, p1, v6

    xor-int v1, v2, v3

    .line 176
    .local v1, tmp:I
    invoke-direct {p0, v1, v8}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v1, v3}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 177
    aget v2, p1, v5

    xor-int/2addr v2, v1

    aput v2, p1, v5

    .line 178
    aget v2, p1, v7

    xor-int/2addr v2, v1

    aput v2, p1, v7

    .line 180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 181
    aget v2, p1, v0

    aget v3, p2, v0

    xor-int/2addr v2, v3

    aput v2, p1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    aget v2, p1, v5

    aget v3, p1, v7

    xor-int v1, v2, v3

    .line 185
    invoke-direct {p0, v1, v8}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v1, v3}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 186
    aget v2, p1, v4

    xor-int/2addr v2, v1

    aput v2, p1, v4

    .line 187
    aget v2, p1, v6

    xor-int/2addr v2, v1

    aput v2, p1, v6

    .line 188
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "Noekeon"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 58
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to Noekeon init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    move-object v0, p2

    .line 66
    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 68
    .local v0, p:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->setKey([B)V

    .line 69
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 72
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 77
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 81
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
