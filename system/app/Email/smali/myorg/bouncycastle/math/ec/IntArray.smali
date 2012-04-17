.class Lmyorg/bouncycastle/math/ec/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private m_ints:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "intLen"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, p1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 16
    .parameter "bigInt"
    .parameter "minIntLen"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 27
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Only positive Integers allowed"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 29
    :cond_0
    sget-object v13, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 30
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 80
    :cond_1
    return-void

    .line 36
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 37
    .local v1, barr:[B
    array-length v5, v1

    .line 38
    .local v5, barrLen:I
    const/4 v6, 0x0

    .line 39
    .local v6, barrStart:I
    const/4 v13, 0x0

    aget-byte v13, v1, v13

    if-nez v13, :cond_3

    .line 42
    add-int/lit8 v5, v5, -0x1

    .line 43
    const/4 v6, 0x1

    .line 45
    :cond_3
    add-int/lit8 v13, v5, 0x3

    div-int/lit8 v10, v13, 0x4

    .line 46
    .local v10, intLen:I
    move/from16 v0, p2

    if-ge v10, v0, :cond_5

    .line 47
    move/from16 v0, p2

    new-array v13, v0, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 52
    :goto_0
    add-int/lit8 v8, v10, -0x1

    .line 53
    .local v8, iarrJ:I
    rem-int/lit8 v13, v5, 0x4

    add-int v11, v13, v6

    .line 54
    .local v11, rem:I
    const/4 v12, 0x0

    .line 55
    .local v12, temp:I
    move v3, v6

    .line 56
    .local v3, barrI:I
    if-ge v6, v11, :cond_7

    .line 57
    :goto_1
    if-ge v3, v11, :cond_6

    .line 58
    shl-int/lit8 v12, v12, 0x8

    .line 59
    aget-byte v2, v1, v3

    .line 60
    .local v2, barrBarrI:I
    if-gez v2, :cond_4

    .line 61
    add-int/lit16 v2, v2, 0x100

    .line 63
    :cond_4
    or-int/2addr v12, v2

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    .end local v2           #barrBarrI:I
    .end local v3           #barrI:I
    .end local v8           #iarrJ:I
    .end local v11           #rem:I
    .end local v12           #temp:I
    :cond_5
    new-array v13, v10, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_0

    .line 65
    .restart local v3       #barrI:I
    .restart local v8       #iarrJ:I
    .restart local v11       #rem:I
    .restart local v12       #temp:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v9, v8, -0x1

    .end local v8           #iarrJ:I
    .local v9, iarrJ:I
    aput v12, v13, v8

    move v8, v9

    .line 68
    .end local v9           #iarrJ:I
    .restart local v8       #iarrJ:I
    :cond_7
    :goto_2
    if-ltz v8, :cond_1

    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v7, 0x0

    .local v7, i:I
    move v4, v3

    .end local v3           #barrI:I
    .local v4, barrI:I
    :goto_3
    const/4 v13, 0x4

    if-ge v7, v13, :cond_9

    .line 71
    shl-int/lit8 v12, v12, 0x8

    .line 72
    add-int/lit8 v3, v4, 0x1

    .end local v4           #barrI:I
    .restart local v3       #barrI:I
    aget-byte v2, v1, v4

    .line 73
    .restart local v2       #barrBarrI:I
    if-gez v2, :cond_8

    .line 74
    add-int/lit16 v2, v2, 0x100

    .line 76
    :cond_8
    or-int/2addr v12, v2

    .line 70
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    .end local v3           #barrI:I
    .restart local v4       #barrI:I
    goto :goto_3

    .line 78
    .end local v2           #barrBarrI:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aput v12, v13, v8

    .line 68
    add-int/lit8 v8, v8, -0x1

    move v3, v4

    .end local v4           #barrI:I
    .restart local v3       #barrI:I
    goto :goto_2
.end method

.method public constructor <init>([I)V
    .locals 0
    .parameter "ints"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 19
    return-void
.end method

.method private resizedInts(I)[I
    .locals 5
    .parameter "newLen"

    .prologue
    const/4 v4, 0x0

    .line 143
    new-array v1, p1, [I

    .line 144
    .local v1, newInts:[I
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v3

    .line 145
    .local v2, oldLen:I
    if-ge v2, p1, :cond_0

    move v0, v2

    .line 146
    .local v0, copyLen:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    return-object v1

    .end local v0           #copyLen:I
    :cond_0
    move v0, p1

    .line 145
    goto :goto_0
.end method


# virtual methods
.method public addShifted(Lmyorg/bouncycastle/math/ec/IntArray;I)V
    .locals 7
    .parameter "other"
    .parameter "shift"

    .prologue
    .line 240
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 241
    .local v2, usedLenOther:I
    add-int v1, v2, p2

    .line 242
    .local v1, newMinUsedLen:I
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v3, v3

    if-le v1, v3, :cond_0

    .line 243
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 247
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 248
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v4, v0, p2

    aget v5, v3, v4

    iget-object v6, p1, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    aput v5, v3, v4

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method public bitLength()I
    .locals 5

    .prologue
    .line 111
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 112
    .local v2, intLen:I
    if-nez v2, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 139
    :cond_0
    return v0

    .line 116
    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 117
    .local v3, last:I
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v4, v3

    .line 118
    .local v1, highest:I
    shl-int/lit8 v4, v3, 0x5

    add-int/lit8 v0, v4, 0x1

    .line 121
    .local v0, bits:I
    const/high16 v4, -0x1

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 122
    const/high16 v4, -0x100

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 123
    add-int/lit8 v0, v0, 0x18

    .line 124
    ushr-int/lit8 v1, v1, 0x18

    .line 134
    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_3
    add-int/lit8 v0, v0, 0x10

    .line 127
    ushr-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 129
    :cond_4
    const/16 v4, 0xff

    if-le v1, v4, :cond_2

    .line 130
    add-int/lit8 v0, v0, 0x8

    .line 131
    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 414
    new-instance v0, Lmyorg/bouncycastle/math/ec/IntArray;

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 388
    instance-of v4, p1, Lmyorg/bouncycastle/math/ec/IntArray;

    if-nez v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 391
    check-cast v1, Lmyorg/bouncycastle/math/ec/IntArray;

    .line 392
    .local v1, other:Lmyorg/bouncycastle/math/ec/IntArray;
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 393
    .local v2, usedLen:I
    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 396
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 397
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    iget-object v5, v1, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public flipBit(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 267
    shr-int/lit8 v2, p1, 0x5

    .line 269
    .local v2, theInt:I
    and-int/lit8 v1, p1, 0x1f

    .line 270
    .local v1, theBit:I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 271
    .local v0, flipper:I
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    xor-int/2addr v4, v0

    aput v4, v3, v2

    .line 272
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v2

    .line 89
    .local v0, highestIntPos:I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 106
    :goto_0
    return v1

    .line 94
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    .line 95
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_1

    .line 97
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    if-eqz v2, :cond_3

    .line 102
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 104
    :cond_3
    if-gtz v0, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 405
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 406
    .local v2, usedLen:I
    const/4 v0, 0x1

    .line 407
    .local v0, hash:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 408
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    add-int v0, v3, v4

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return v0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public multiply(Lmyorg/bouncycastle/math/ec/IntArray;I)Lmyorg/bouncycastle/math/ec/IntArray;
    .locals 7
    .parameter "other"
    .parameter "m"

    .prologue
    .line 285
    add-int/lit8 v6, p2, 0x1f

    shr-int/lit8 v4, v6, 0x5

    .line 286
    .local v4, t:I
    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v6, v6

    if-ge v6, v4, :cond_0

    .line 287
    invoke-direct {p0, v4}, Lmyorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    iput-object v6, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 290
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/IntArray;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p1, v6}, Lmyorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    invoke-direct {v0, v6}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    .line 291
    .local v0, b:Lmyorg/bouncycastle/math/ec/IntArray;
    new-instance v1, Lmyorg/bouncycastle/math/ec/IntArray;

    add-int v6, p2, p2

    add-int/lit8 v6, v6, 0x1f

    shr-int/lit8 v6, v6, 0x5

    invoke-direct {v1, v6}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 293
    .local v1, c:Lmyorg/bouncycastle/math/ec/IntArray;
    const/4 v5, 0x1

    .line 294
    .local v5, testBit:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    .line 295
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 296
    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v2

    and-int/2addr v6, v5

    if-eqz v6, :cond_1

    .line 298
    invoke-virtual {v1, v0, v2}, Lmyorg/bouncycastle/math/ec/IntArray;->addShifted(Lmyorg/bouncycastle/math/ec/IntArray;I)V

    .line 295
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    :cond_2
    shl-int/lit8 v5, v5, 0x1

    .line 302
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/IntArray;->shiftLeft()V

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v2           #j:I
    :cond_3
    return-object v1
.end method

.method public reduce(I[I)V
    .locals 4
    .parameter "m"
    .parameter "redPol"

    .prologue
    .line 335
    add-int v3, p1, p1

    add-int/lit8 v1, v3, -0x2

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 336
    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    sub-int v0, v1, p1

    .line 338
    .local v0, bit:I
    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    .line 339
    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    .line 340
    array-length v2, p2

    .line 341
    .local v2, l:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 342
    aget v3, p2, v2

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lmyorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_1

    .line 335
    .end local v0           #bit:I
    .end local v2           #l:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 346
    :cond_1
    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 347
    return-void
.end method

.method public setBit(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 276
    shr-int/lit8 v2, p1, 0x5

    .line 278
    .local v2, theInt:I
    and-int/lit8 v1, p1, 0x1f

    .line 279
    .local v1, theBit:I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 280
    .local v0, setter:I
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    or-int/2addr v4, v0

    aput v4, v3, v2

    .line 281
    return-void
.end method

.method public shiftLeft(I)Lmyorg/bouncycastle/math/ec/IntArray;
    .locals 7
    .parameter "n"

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 214
    .local v3, usedLen:I
    if-nez v3, :cond_1

    .line 236
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 218
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 222
    const/16 v4, 0x1f

    if-le p1, v4, :cond_2

    .line 223
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shiftLeft() for max 31 bits , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bit shift is not possible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    :cond_2
    add-int/lit8 v4, v3, 0x1

    new-array v1, v4, [I

    .line 229
    .local v1, newInts:[I
    rsub-int/lit8 v2, p1, 0x20

    .line 230
    .local v2, nm32:I
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v5

    shl-int/2addr v4, p1

    aput v4, v1, v5

    .line 231
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 232
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    shl-int/2addr v4, p1

    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    ushr-int/2addr v5, v2

    or-int/2addr v4, v5

    aput v4, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_3
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    ushr-int/2addr v4, v2

    aput v4, v1, v3

    .line 236
    new-instance p0, Lmyorg/bouncycastle/math/ec/IntArray;

    .end local p0
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    goto :goto_0
.end method

.method public shiftLeft()V
    .locals 6

    .prologue
    .line 184
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 185
    .local v3, usedLen:I
    if-nez v3, :cond_1

    .line 210
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 191
    add-int/lit8 v3, v3, 0x1

    .line 192
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    if-le v3, v4, :cond_2

    .line 195
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 199
    :cond_2
    const/4 v0, 0x0

    .line 200
    .local v0, carry:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 202
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    if-gez v4, :cond_4

    const/4 v2, 0x1

    .line 203
    .local v2, nextCarry:Z
    :goto_1
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    shl-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 204
    if-eqz v0, :cond_3

    .line 206
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    or-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 208
    :cond_3
    move v0, v2

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v2           #nextCarry:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public square(I)Lmyorg/bouncycastle/math/ec/IntArray;
    .locals 12
    .parameter "m"

    .prologue
    const/4 v11, 0x4

    .line 351
    const/16 v9, 0x10

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    .line 356
    .local v4, table:[I
    add-int/lit8 v9, p1, 0x1f

    shr-int/lit8 v3, v9, 0x5

    .line 357
    .local v3, t:I
    iget-object v9, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v9, v9

    if-ge v9, v3, :cond_0

    .line 358
    invoke-direct {p0, v3}, Lmyorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v9

    iput-object v9, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 361
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/math/ec/IntArray;

    add-int v9, v3, v3

    invoke-direct {v0, v9}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 364
    .local v0, c:Lmyorg/bouncycastle/math/ec/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 365
    const/4 v7, 0x0

    .line 366
    .local v7, v0:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 367
    ushr-int/lit8 v7, v7, 0x8

    .line 368
    iget-object v9, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    mul-int/lit8 v10, v2, 0x4

    ushr-int/2addr v9, v10

    and-int/lit8 v5, v9, 0xf

    .line 369
    .local v5, u:I
    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    .line 370
    .local v8, w:I
    or-int/2addr v7, v8

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 372
    .end local v5           #u:I
    .end local v8           #w:I
    :cond_1
    iget-object v9, v0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    aput v7, v9, v10

    .line 374
    const/4 v7, 0x0

    .line 375
    iget-object v9, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    ushr-int/lit8 v6, v9, 0x10

    .line 376
    .local v6, upper:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v11, :cond_2

    .line 377
    ushr-int/lit8 v7, v7, 0x8

    .line 378
    mul-int/lit8 v9, v2, 0x4

    ushr-int v9, v6, v9

    and-int/lit8 v5, v9, 0xf

    .line 379
    .restart local v5       #u:I
    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    .line 380
    .restart local v8       #w:I
    or-int/2addr v7, v8

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 382
    .end local v5           #u:I
    .end local v8           #w:I
    :cond_2
    iget-object v9, v0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    add-int/lit8 v10, v10, 0x1

    aput v7, v9, v10

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v2           #j:I
    .end local v6           #upper:I
    .end local v7           #v0:I
    :cond_3
    return-object v0

    .line 351
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public testBit(I)Z
    .locals 5
    .parameter "n"

    .prologue
    const/4 v3, 0x1

    .line 258
    shr-int/lit8 v2, p1, 0x5

    .line 260
    .local v2, theInt:I
    and-int/lit8 v1, p1, 0x1f

    .line 261
    .local v1, theBit:I
    shl-int v0, v3, v1

    .line 262
    .local v0, tester:I
    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v2

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 13

    .prologue
    .line 151
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v10

    .line 152
    .local v10, usedLen:I
    if-nez v10, :cond_0

    .line 153
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 180
    :goto_0
    return-object v11

    .line 156
    :cond_0
    iget-object v11, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v12, v10, -0x1

    aget v4, v11, v12

    .line 157
    .local v4, highestInt:I
    const/4 v11, 0x4

    new-array v7, v11, [B

    .line 158
    .local v7, temp:[B
    const/4 v1, 0x0

    .line 159
    .local v1, barrI:I
    const/4 v9, 0x0

    .line 160
    .local v9, trailingZeroBytesDone:Z
    const/4 v6, 0x3

    .local v6, j:I
    move v2, v1

    .end local v1           #barrI:I
    .local v2, barrI:I
    :goto_1
    if-ltz v6, :cond_2

    .line 161
    mul-int/lit8 v11, v6, 0x8

    ushr-int v11, v4, v11

    int-to-byte v8, v11

    .line 162
    .local v8, thisByte:B
    if-nez v9, :cond_1

    if-eqz v8, :cond_6

    .line 163
    :cond_1
    const/4 v9, 0x1

    .line 164
    add-int/lit8 v1, v2, 0x1

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    aput-byte v8, v7, v2

    .line 160
    :goto_2
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1           #barrI:I
    .restart local v2       #barrI:I
    goto :goto_1

    .line 168
    .end local v8           #thisByte:B
    :cond_2
    add-int/lit8 v11, v10, -0x1

    mul-int/lit8 v11, v11, 0x4

    add-int v3, v11, v2

    .line 169
    .local v3, barrLen:I
    new-array v0, v3, [B

    .line 170
    .local v0, barr:[B
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_3

    .line 171
    aget-byte v11, v7, v6

    aput-byte v11, v0, v6

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 175
    :cond_3
    add-int/lit8 v5, v10, -0x2

    .local v5, iarrJ:I
    move v1, v2

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    :goto_4
    if-ltz v5, :cond_5

    .line 176
    const/4 v6, 0x3

    move v2, v1

    .end local v1           #barrI:I
    .restart local v2       #barrI:I
    :goto_5
    if-ltz v6, :cond_4

    .line 177
    add-int/lit8 v1, v2, 0x1

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    iget-object v11, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v11, v11, v5

    mul-int/lit8 v12, v6, 0x8

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v2

    .line 176
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1           #barrI:I
    .restart local v2       #barrI:I
    goto :goto_5

    .line 175
    :cond_4
    add-int/lit8 v5, v5, -0x1

    move v1, v2

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    goto :goto_4

    .line 180
    :cond_5
    new-instance v11, Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    .end local v0           #barr:[B
    .end local v1           #barrI:I
    .end local v3           #barrLen:I
    .end local v5           #iarrJ:I
    .restart local v2       #barrI:I
    .restart local v8       #thisByte:B
    :cond_6
    move v1, v2

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 418
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    .line 419
    .local v4, usedLen:I
    if-nez v4, :cond_0

    .line 420
    const-string v5, "0"

    .line 433
    :goto_0
    return-object v5

    .line 423
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, sb:Ljava/lang/StringBuffer;
    add-int/lit8 v2, v4, -0x2

    .local v2, iarrJ:I
    :goto_1
    if-ltz v2, :cond_2

    .line 425
    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :goto_2
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 431
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 433
    .end local v0           #hexString:Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
