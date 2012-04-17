.class Lmyorg/bouncycastle/math/ec/WNafMultiplier;
.super Ljava/lang/Object;
.source "WNafMultiplier.java"

# interfaces
.implements Lmyorg/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/PreCompInfo;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 15
    .parameter "p"
    .parameter "k"
    .parameter "preCompInfo"

    .prologue
    .line 87
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    instance-of v13, v0, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v13, :cond_1

    move-object/from16 v12, p3

    .line 88
    check-cast v12, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;

    .line 95
    .local v12, wnafPreCompInfo:Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 105
    .local v3, m:I
    const/16 v13, 0xd

    if-ge v3, v13, :cond_2

    .line 106
    const/4 v10, 0x2

    .line 107
    .local v10, width:B
    const/4 v8, 0x1

    .line 139
    .local v8, reqPreCompLen:I
    :goto_1
    const/4 v6, 0x1

    .line 141
    .local v6, preCompLen:I
    invoke-virtual {v12}, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 142
    .local v5, preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v12}, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwiceP()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 145
    .local v9, twiceP:Lmyorg/bouncycastle/math/ec/ECPoint;
    if-nez v5, :cond_8

    .line 148
    const/4 v13, 0x1

    new-array v5, v13, [Lmyorg/bouncycastle/math/ec/ECPoint;

    .end local v5           #preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;
    const/4 v13, 0x0

    aput-object p1, v5, v13

    .line 156
    .restart local v5       #preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;
    :goto_2
    if-nez v9, :cond_0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->twice()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 161
    :cond_0
    if-ge v6, v8, :cond_9

    .line 164
    move-object v4, v5

    .line 165
    .local v4, oldPreComp:[Lmyorg/bouncycastle/math/ec/ECPoint;
    new-array v5, v8, [Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 166
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v4, v13, v5, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    move v1, v6

    .local v1, i:I
    :goto_3
    if-ge v1, v8, :cond_9

    .line 172
    add-int/lit8 v13, v1, -0x1

    aget-object v13, v5, v13

    invoke-virtual {v9, v13}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v5, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 91
    .end local v1           #i:I
    .end local v3           #m:I
    .end local v4           #oldPreComp:[Lmyorg/bouncycastle/math/ec/ECPoint;
    .end local v5           #preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;
    .end local v6           #preCompLen:I
    .end local v8           #reqPreCompLen:I
    .end local v9           #twiceP:Lmyorg/bouncycastle/math/ec/ECPoint;
    .end local v10           #width:B
    .end local v12           #wnafPreCompInfo:Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;
    :cond_1
    new-instance v12, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v12}, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .restart local v12       #wnafPreCompInfo:Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;
    goto :goto_0

    .line 109
    .restart local v3       #m:I
    :cond_2
    const/16 v13, 0x29

    if-ge v3, v13, :cond_3

    .line 110
    const/4 v10, 0x3

    .line 111
    .restart local v10       #width:B
    const/4 v8, 0x2

    .restart local v8       #reqPreCompLen:I
    goto :goto_1

    .line 113
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_3
    const/16 v13, 0x79

    if-ge v3, v13, :cond_4

    .line 114
    const/4 v10, 0x4

    .line 115
    .restart local v10       #width:B
    const/4 v8, 0x4

    .restart local v8       #reqPreCompLen:I
    goto :goto_1

    .line 117
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_4
    const/16 v13, 0x151

    if-ge v3, v13, :cond_5

    .line 118
    const/4 v10, 0x5

    .line 119
    .restart local v10       #width:B
    const/16 v8, 0x8

    .restart local v8       #reqPreCompLen:I
    goto :goto_1

    .line 121
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_5
    const/16 v13, 0x381

    if-ge v3, v13, :cond_6

    .line 122
    const/4 v10, 0x6

    .line 123
    .restart local v10       #width:B
    const/16 v8, 0x10

    .restart local v8       #reqPreCompLen:I
    goto :goto_1

    .line 125
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_6
    const/16 v13, 0x901

    if-ge v3, v13, :cond_7

    .line 126
    const/4 v10, 0x7

    .line 127
    .restart local v10       #width:B
    const/16 v8, 0x20

    .restart local v8       #reqPreCompLen:I
    goto :goto_1

    .line 129
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_7
    const/16 v10, 0x8

    .line 130
    .restart local v10       #width:B
    const/16 v8, 0x7f

    .restart local v8       #reqPreCompLen:I
    goto :goto_1

    .line 153
    .restart local v5       #preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;
    .restart local v6       #preCompLen:I
    .restart local v9       #twiceP:Lmyorg/bouncycastle/math/ec/ECPoint;
    :cond_8
    array-length v6, v5

    goto :goto_2

    .line 177
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lmyorg/bouncycastle/math/ec/WNafMultiplier;->windowNaf(BLjava/math/BigInteger;)[B

    move-result-object v11

    .line 178
    .local v11, wnaf:[B
    array-length v2, v11

    .line 181
    .local v2, l:I
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v13

    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 182
    .local v7, q:Lmyorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v1, v2, -0x1

    .restart local v1       #i:I
    :goto_4
    if-ltz v1, :cond_c

    .line 183
    invoke-virtual {v7}, Lmyorg/bouncycastle/math/ec/ECPoint;->twice()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 185
    aget-byte v13, v11, v1

    if-eqz v13, :cond_a

    .line 186
    aget-byte v13, v11, v1

    if-lez v13, :cond_b

    .line 187
    aget-byte v13, v11, v1

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    aget-object v13, v5, v13

    invoke-virtual {v7, v13}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 182
    :cond_a
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 190
    :cond_b
    aget-byte v13, v11, v1

    neg-int v13, v13

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    aget-object v13, v5, v13

    invoke-virtual {v7, v13}, Lmyorg/bouncycastle/math/ec/ECPoint;->subtract(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    goto :goto_5

    .line 197
    :cond_c
    invoke-virtual {v12, v5}, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lmyorg/bouncycastle/math/ec/ECPoint;)V

    .line 198
    invoke-virtual {v12, v9}, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwiceP(Lmyorg/bouncycastle/math/ec/ECPoint;)V

    .line 199
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lmyorg/bouncycastle/math/ec/ECPoint;->setPreCompInfo(Lmyorg/bouncycastle/math/ec/PreCompInfo;)V

    .line 200
    return-object v7
.end method

.method public windowNaf(BLjava/math/BigInteger;)[B
    .locals 11
    .parameter "width"
    .parameter "k"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [B

    .line 34
    .local v5, wnaf:[B
    shl-int v7, v10, p1

    int-to-short v2, v7

    .line 35
    .local v2, pow2wB:S
    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    .local v3, pow2wBI:Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 40
    .local v0, i:I
    const/4 v1, 0x0

    .line 43
    .local v1, length:I
    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-lez v7, :cond_2

    .line 45
    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 47
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 50
    .local v4, remainder:Ljava/math/BigInteger;
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 51
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    sub-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 57
    :goto_1
    aget-byte v7, v5, v0

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 58
    move v1, v0

    .line 64
    .end local v4           #remainder:Ljava/math/BigInteger;
    :goto_2
    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .restart local v4       #remainder:Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    goto :goto_1

    .line 60
    .end local v4           #remainder:Ljava/math/BigInteger;
    :cond_1
    aput-byte v9, v5, v0

    goto :goto_2

    .line 68
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    new-array v6, v1, [B

    .line 72
    .local v6, wnafShort:[B
    invoke-static {v5, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-object v6
.end method
