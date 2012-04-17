.class public Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6
    .parameter "p"
    .parameter "q"
    .parameter "r"

    .prologue
    .line 131
    sget-object v4, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 132
    .local v0, e:Ljava/math/BigInteger;
    sget-object v4, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 135
    .local v3, pSub2:Ljava/math/BigInteger;
    :cond_0
    sget-object v4, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v4, v3, p2}, Lmyorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 136
    .local v2, h:Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 137
    .local v1, g:Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 138
    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1
    .parameter "p"
    .parameter "q"
    .parameter "r"

    .prologue
    .line 267
    invoke-static {p0, p1, p2}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private generateParameters_FIPS186_2()Lmyorg/bouncycastle/crypto/params/DSAParameters;
    .locals 24

    .prologue
    .line 64
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v15, v0, [B

    .line 65
    .local v15, seed:[B
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v12, v0, [B

    .line 66
    .local v12, part1:[B
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v13, v0, [B

    .line 67
    .local v13, part2:[B
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 68
    .local v17, u:[B
    new-instance v16, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 69
    .local v16, sha1:Lmyorg/bouncycastle/crypto/digests/SHA1Digest;
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    div-int/lit16 v9, v0, 0xa0

    .line 70
    .local v9, n:I
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 73
    .local v18, w:[B
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 75
    move-object/from16 v0, v16

    invoke-static {v0, v15, v12}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lmyorg/bouncycastle/crypto/Digest;[B[B)V

    .line 76
    const/16 v20, 0x0

    const/16 v21, 0x0

    array-length v0, v15

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v15, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-static {v13}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 78
    move-object/from16 v0, v16

    invoke-static {v0, v13, v13}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lmyorg/bouncycastle/crypto/Digest;[B[B)V

    .line 80
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v7, v0, :cond_1

    .line 81
    aget-byte v20, v12, v7

    aget-byte v21, v13, v7

    xor-int v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v17, v7

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/16 v20, 0x0

    aget-byte v21, v17, v20

    or-int/lit8 v21, v21, -0x80

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 85
    const/16 v20, 0x13

    aget-byte v21, v17, v20

    or-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 87
    new-instance v14, Ljava/math/BigInteger;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 89
    .local v14, q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 93
    invoke-static {v15}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v10

    .line 94
    .local v10, offset:[B
    invoke-static {v10}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 96
    const/4 v5, 0x0

    .local v5, counter:I
    :goto_1
    const/16 v20, 0x1000

    move/from16 v0, v20

    if-ge v5, v0, :cond_0

    .line 97
    const/4 v8, 0x0

    .local v8, k:I
    :goto_2
    if-ge v8, v9, :cond_2

    .line 98
    invoke-static {v10}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 99
    move-object/from16 v0, v16

    invoke-static {v0, v10, v12}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lmyorg/bouncycastle/crypto/Digest;[B[B)V

    .line 100
    const/16 v20, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v22, v8, 0x1

    array-length v0, v12

    move/from16 v23, v0

    mul-int v22, v22, v23

    sub-int v21, v21, v22

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 103
    :cond_2
    invoke-static {v10}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 104
    move-object/from16 v0, v16

    invoke-static {v0, v10, v12}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lmyorg/bouncycastle/crypto/Digest;[B[B)V

    .line 105
    array-length v0, v12

    move/from16 v20, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    array-length v0, v12

    move/from16 v22, v0

    mul-int v22, v22, v9

    sub-int v21, v21, v22

    sub-int v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    array-length v0, v12

    move/from16 v23, v0

    mul-int v23, v23, v9

    sub-int v22, v22, v23

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    const/16 v20, 0x0

    aget-byte v21, v18, v20

    or-int/lit8 v21, v21, -0x80

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v18, v20

    .line 110
    new-instance v19, Ljava/math/BigInteger;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 112
    .local v19, x:Ljava/math/BigInteger;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 114
    .local v4, c:Ljava/math/BigInteger;
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 116
    .local v11, p:Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 96
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 120
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v11, v14, v0}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 123
    .local v6, g:Ljava/math/BigInteger;
    new-instance v20, Lmyorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v21, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v21

    invoke-direct {v0, v15, v5}, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v14, v6, v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v20
.end method

.method private generateParameters_FIPS186_3()Lmyorg/bouncycastle/crypto/params/DSAParameters;
    .locals 27

    .prologue
    .line 151
    new-instance v12, Lmyorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v12}, Lmyorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 152
    .local v12, d:Lmyorg/bouncycastle/crypto/Digest;
    invoke-interface {v12}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    mul-int/lit8 v18, v24, 0x8

    .line 161
    .local v18, outlen:I
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v23, v0

    .line 162
    .local v23, seedlen:I
    div-int/lit8 v24, v23, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 165
    .local v22, seed:[B
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    div-int v16, v24, v18

    .line 168
    .local v16, n:I
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    rem-int v8, v24, v18

    .line 170
    .local v8, b:I
    invoke-interface {v12}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 174
    .local v19, output:[B
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 177
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lmyorg/bouncycastle/crypto/Digest;[B[B)V

    .line 178
    new-instance v24, Ljava/math/BigInteger;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v25, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 181
    .local v4, U:Ljava/math/BigInteger;
    sget-object v24, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    sget-object v25, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    sget-object v25, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 185
    .local v21, q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 192
    invoke-static/range {v22 .. v22}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v17

    .line 195
    .local v17, offset:[B
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    mul-int/lit8 v11, v24, 0x4

    .line 196
    .local v11, counterLimit:I
    const/4 v10, 0x0

    .local v10, counter:I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 203
    sget-object v6, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 204
    .local v6, W:Ljava/math/BigInteger;
    const/4 v15, 0x0

    .local v15, j:I
    const/4 v13, 0x0

    .local v13, exp:I
    :goto_1
    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    .line 205
    invoke-static/range {v17 .. v17}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 206
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lmyorg/bouncycastle/crypto/Digest;[B[B)V

    .line 208
    new-instance v5, Ljava/math/BigInteger;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 209
    .local v5, Vj:Ljava/math/BigInteger;
    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 210
    sget-object v24, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 213
    :cond_1
    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 204
    add-int/lit8 v15, v15, 0x1

    add-int v13, v13, v18

    goto :goto_1

    .line 218
    .end local v5           #Vj:Ljava/math/BigInteger;
    :cond_2
    sget-object v24, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 221
    .local v7, X:Ljava/math/BigInteger;
    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 224
    .local v9, c:Ljava/math/BigInteger;
    sget-object v24, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 227
    .local v20, p:Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 196
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 234
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v14

    .line 252
    .local v14, g:Ljava/math/BigInteger;
    new-instance v24, Lmyorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v25, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10}, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lmyorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v24
.end method

.method private static getDefaultN(I)I
    .locals 1
    .parameter "L"

    .prologue
    .line 306
    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method private static hash(Lmyorg/bouncycastle/crypto/Digest;[B[B)V
    .locals 2
    .parameter "d"
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 301
    array-length v0, p1

    invoke-interface {p0, p1, v1, v0}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 302
    invoke-interface {p0, p2, v1}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 303
    return-void
.end method

.method private static inc([B)V
    .locals 3
    .parameter "buf"

    .prologue
    .line 310
    array-length v2, p0

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 311
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 312
    .local v0, b:B
    aput-byte v0, p0, v1

    .line 314
    if-eqz v0, :cond_1

    .line 318
    .end local v0           #b:B
    :cond_0
    return-void

    .line 310
    .restart local v0       #b:B
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private init(IIILjava/security/SecureRandom;)V
    .locals 0
    .parameter "L"
    .parameter "N"
    .parameter "certainty"
    .parameter "random"

    .prologue
    .line 47
    iput p1, p0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 48
    iput p2, p0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 49
    iput p3, p0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 50
    iput-object p4, p0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 51
    return-void
.end method


# virtual methods
.method public generateParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lmyorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lmyorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 1
    .parameter "size"
    .parameter "certainty"
    .parameter "random"

    .prologue
    .line 37
    invoke-static {p1}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IIILjava/security/SecureRandom;)V

    .line 38
    return-void
.end method
