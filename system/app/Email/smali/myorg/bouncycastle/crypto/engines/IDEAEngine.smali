.class public Lmyorg/bouncycastle/crypto/engines/IDEAEngine;
.super Ljava/lang/Object;
.source "IDEAEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 40
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 93
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private expandKey([B)[I
    .locals 9
    .parameter "uKey"

    .prologue
    const/16 v8, 0x34

    const/16 v4, 0x10

    const/4 v7, 0x6

    const v6, 0xffff

    .line 175
    new-array v1, v8, [I

    .line 177
    .local v1, key:[I
    array-length v3, p1

    if-ge v3, v4, :cond_0

    .line 178
    new-array v2, v4, [B

    .line 180
    .local v2, tmp:[B
    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, p1

    sub-int/2addr v4, v5

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    move-object p1, v2

    .line 185
    .end local v2           #tmp:[B
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 186
    mul-int/lit8 v3, v0, 0x2

    invoke-direct {p0, p1, v3}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v3

    aput v3, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/16 v0, 0x8

    :goto_1
    if-ge v0, v8, :cond_4

    .line 190
    and-int/lit8 v3, v0, 0x7

    if-ge v3, v7, :cond_2

    .line 191
    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0x6

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    .line 189
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_2
    and-int/lit8 v3, v0, 0x7

    if-ne v3, v7, :cond_3

    .line 193
    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    .line 195
    :cond_3
    add-int/lit8 v3, v0, -0xf

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    .line 199
    :cond_4
    return-object v1
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 1
    .parameter "forEncryption"
    .parameter "userKey"

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->invertKey([I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private ideaFunc([I[BI[BI)V
    .locals 13
    .parameter "workingKey"
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, keyOff:I
    move/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v7

    .line 131
    .local v7, x0:I
    add-int/lit8 v11, p3, 0x2

    invoke-direct {p0, p2, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v8

    .line 132
    .local v8, x1:I
    add-int/lit8 v11, p3, 0x4

    invoke-direct {p0, p2, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v9

    .line 133
    .local v9, x2:I
    add-int/lit8 v11, p3, 0x6

    invoke-direct {p0, p2, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v10

    .line 135
    .local v10, x3:I
    const/4 v4, 0x0

    .local v4, round:I
    move v3, v2

    .end local v2           #keyOff:I
    .local v3, keyOff:I
    :goto_0
    const/16 v11, 0x8

    if-ge v4, v11, :cond_0

    .line 136
    add-int/lit8 v2, v3, 0x1

    .end local v3           #keyOff:I
    .restart local v2       #keyOff:I
    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v7

    .line 137
    add-int/lit8 v3, v2, 0x1

    .end local v2           #keyOff:I
    .restart local v3       #keyOff:I
    aget v11, p1, v2

    add-int/2addr v8, v11

    .line 138
    const v11, 0xffff

    and-int/2addr v8, v11

    .line 139
    add-int/lit8 v2, v3, 0x1

    .end local v3           #keyOff:I
    .restart local v2       #keyOff:I
    aget v11, p1, v3

    add-int/2addr v9, v11

    .line 140
    const v11, 0xffff

    and-int/2addr v9, v11

    .line 141
    add-int/lit8 v3, v2, 0x1

    .end local v2           #keyOff:I
    .restart local v3       #keyOff:I
    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v10

    .line 143
    move v5, v8

    .line 144
    .local v5, t0:I
    move v6, v9

    .line 145
    .local v6, t1:I
    xor-int/2addr v9, v7

    .line 146
    xor-int/2addr v8, v10

    .line 148
    add-int/lit8 v2, v3, 0x1

    .end local v3           #keyOff:I
    .restart local v2       #keyOff:I
    aget v11, p1, v3

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v9

    .line 149
    add-int/2addr v8, v9

    .line 150
    const v11, 0xffff

    and-int/2addr v8, v11

    .line 152
    add-int/lit8 v3, v2, 0x1

    .end local v2           #keyOff:I
    .restart local v3       #keyOff:I
    aget v11, p1, v2

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v8

    .line 153
    add-int/2addr v9, v8

    .line 154
    const v11, 0xffff

    and-int/2addr v9, v11

    .line 156
    xor-int/2addr v7, v8

    .line 157
    xor-int/2addr v10, v9

    .line 158
    xor-int/2addr v8, v6

    .line 159
    xor-int/2addr v9, v5

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v5           #t0:I
    .end local v6           #t1:I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #keyOff:I
    .restart local v2       #keyOff:I
    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v11, v0, v1}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 163
    add-int/lit8 v3, v2, 0x1

    .end local v2           #keyOff:I
    .restart local v3       #keyOff:I
    aget v11, p1, v2

    add-int/2addr v11, v9

    add-int/lit8 v12, p5, 0x2

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 164
    add-int/lit8 v2, v3, 0x1

    .end local v3           #keyOff:I
    .restart local v2       #keyOff:I
    aget v11, p1, v3

    add-int/2addr v11, v8

    add-int/lit8 v12, p5, 0x4

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 165
    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    add-int/lit8 v12, p5, 0x6

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 166
    return-void
.end method

.method private invertKey([I)[I
    .locals 10
    .parameter "inKey"

    .prologue
    .line 250
    const/16 v3, 0x34

    .line 251
    .local v3, p:I
    const/16 v9, 0x34

    new-array v2, v9, [I

    .line 252
    .local v2, key:[I
    const/4 v0, 0x0

    .line 254
    .local v0, inOff:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #inOff:I
    .local v1, inOff:I
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 255
    .local v5, t1:I
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 256
    .local v6, t2:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #inOff:I
    .restart local v1       #inOff:I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 257
    .local v7, t3:I
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 258
    .local v8, t4:I
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 259
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 260
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 261
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 263
    const/4 v4, 0x1

    .local v4, round:I
    move v1, v0

    .end local v0           #inOff:I
    .restart local v1       #inOff:I
    :goto_0
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    .line 264
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v5, p1, v1

    .line 265
    add-int/lit8 v1, v0, 0x1

    .end local v0           #inOff:I
    .restart local v1       #inOff:I
    aget v6, p1, v0

    .line 266
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 267
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 269
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 270
    add-int/lit8 v1, v0, 0x1

    .end local v0           #inOff:I
    .restart local v1       #inOff:I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 271
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 272
    add-int/lit8 v1, v0, 0x1

    .end local v0           #inOff:I
    .restart local v1       #inOff:I
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 273
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 274
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 275
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 276
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v5, p1, v1

    .line 280
    add-int/lit8 v1, v0, 0x1

    .end local v0           #inOff:I
    .restart local v1       #inOff:I
    aget v6, p1, v0

    .line 281
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 282
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 284
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 285
    add-int/lit8 v1, v0, 0x1

    .end local v0           #inOff:I
    .restart local v1       #inOff:I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 286
    add-int/lit8 v0, v1, 0x1

    .end local v1           #inOff:I
    .restart local v0       #inOff:I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 287
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 288
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 289
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 290
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 291
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 293
    return-object v2
.end method

.method private mul(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const v1, 0x10001

    const v3, 0xffff

    .line 111
    if-nez p1, :cond_0

    .line 112
    sub-int p1, v1, p2

    .line 123
    :goto_0
    and-int v1, p1, v3

    return v1

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    sub-int p1, v1, p1

    goto :goto_0

    .line 116
    :cond_1
    mul-int v0, p1, p2

    .line 118
    .local v0, p:I
    and-int p2, v0, v3

    .line 119
    ushr-int/lit8 p1, v0, 0x10

    .line 120
    sub-int v2, p2, p1

    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    add-int p1, v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private mulInv(I)I
    .locals 8
    .parameter "x"

    .prologue
    const v7, 0x10001

    const/4 v6, 0x1

    const v5, 0xffff

    .line 211
    const/4 v4, 0x2

    if-ge p1, v4, :cond_1

    move v1, p1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    const/4 v1, 0x1

    .line 216
    .local v1, t0:I
    div-int v2, v7, p1

    .line 217
    .local v2, t1:I
    rem-int v3, v7, p1

    .line 219
    .local v3, y:I
    :goto_1
    if-eq v3, v6, :cond_2

    .line 220
    div-int v0, p1, v3

    .line 221
    .local v0, q:I
    rem-int/2addr p1, v3

    .line 222
    mul-int v4, v2, v0

    add-int/2addr v4, v1

    and-int v1, v4, v5

    .line 223
    if-eq p1, v6, :cond_0

    .line 226
    div-int v0, v3, p1

    .line 227
    rem-int/2addr v3, p1

    .line 228
    mul-int v4, v1, v0

    add-int/2addr v4, v2

    and-int v2, v4, v5

    goto :goto_1

    .line 231
    .end local v0           #q:I
    :cond_2
    rsub-int/lit8 v4, v2, 0x1

    and-int v1, v4, v5

    goto :goto_0
.end method

.method private wordToBytes(I[BI)V
    .locals 2
    .parameter "word"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 97
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 98
    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 99
    return-void
.end method


# virtual methods
.method addInv(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 240
    rsub-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "IDEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 51
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 52
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 53
    return-void

    .line 56
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to IDEA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 69
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDEA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 74
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 78
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;->ideaFunc([I[BI[BI)V

    .line 83
    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
