.class Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;
.super Lmyorg/bouncycastle/crypto/PBEParametersGenerator;
.source "BrokenPBE.java"


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method private adjust([BI[B)V
    .locals 4
    .parameter "a"
    .parameter "aOff"
    .parameter "b"

    .prologue
    .line 70
    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    array-length v3, p3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 72
    .local v1, x:I
    array-length v2, p3

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 73
    ushr-int/lit8 v1, v1, 0x8

    .line 75
    array-length v2, p3

    add-int/lit8 v0, v2, -0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 76
    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 77
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 78
    ushr-int/lit8 v1, v1, 0x8

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private generateDerivedKey(II)[B
    .locals 16
    .parameter "idByte"
    .parameter "n"

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    new-array v3, v11, [B

    .line 87
    .local v3, D:[B
    move/from16 v0, p2

    new-array v8, v0, [B

    .line 89
    .local v8, dKey:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v11, v3

    if-eq v9, v11, :cond_0

    .line 90
    move/from16 v0, p1

    int-to-byte v11, v0

    aput-byte v11, v3, v9

    .line 89
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v11, v11

    if-eqz v11, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v6, v11, [B

    .line 98
    .local v6, S:[B
    const/4 v9, 0x0

    :goto_1
    array-length v11, v6

    if-eq v9, v11, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v6, v9

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 102
    .end local v6           #S:[B
    :cond_1
    const/4 v11, 0x0

    new-array v6, v11, [B

    .line 107
    .restart local v6       #S:[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v11, v11

    if-eqz v11, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v5, v11, [B

    .line 110
    .local v5, P:[B
    const/4 v9, 0x0

    :goto_2
    array-length v11, v5

    if-eq v9, v11, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v5, v9

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 114
    .end local v5           #P:[B
    :cond_3
    const/4 v11, 0x0

    new-array v5, v11, [B

    .line 117
    .restart local v5       #P:[B
    :cond_4
    array-length v11, v6

    array-length v12, v5

    add-int/2addr v11, v12

    new-array v4, v11, [B

    .line 119
    .local v4, I:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    const/4 v11, 0x0

    array-length v12, v6

    array-length v13, v5

    invoke-static {v5, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    new-array v2, v11, [B

    .line 123
    .local v2, B:[B
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    add-int v11, v11, p2

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    div-int v7, v11, v12

    .line 125
    .local v7, c:I
    const/4 v9, 0x1

    :goto_3
    if-gt v9, v7, :cond_9

    .line 126
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    new-array v1, v11, [B

    .line 128
    .local v1, A:[B
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v3

    invoke-interface {v11, v3, v12, v13}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 129
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v4

    invoke-interface {v11, v4, v12, v13}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 131
    const/4 v10, 0x1

    .local v10, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-eq v10, v11, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v1

    invoke-interface {v11, v1, v12, v13}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 131
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 136
    :cond_5
    const/4 v10, 0x0

    :goto_5
    array-length v11, v2

    if-eq v10, v11, :cond_6

    .line 137
    array-length v11, v1

    rem-int v11, v10, v11

    aget-byte v11, v1, v11

    aput-byte v11, v2, v9

    .line 136
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 140
    :cond_6
    const/4 v10, 0x0

    :goto_6
    array-length v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    div-int/2addr v11, v12

    if-eq v10, v11, :cond_7

    .line 141
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    mul-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v2}, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->adjust([BI[B)V

    .line 140
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 144
    :cond_7
    if-ne v9, v7, :cond_8

    .line 145
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v8

    add-int/lit8 v14, v9, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 147
    :cond_8
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v1

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 151
    .end local v1           #A:[B
    .end local v10           #j:I
    :cond_9
    return-object v8
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 3
    .parameter "keySize"

    .prologue
    .line 196
    div-int/lit8 p1, p1, 0x8

    .line 198
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 200
    .local v0, dKey:[B
    new-instance v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 3
    .parameter "keySize"

    .prologue
    .line 162
    div-int/lit8 p1, p1, 0x8

    .line 164
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 166
    .local v0, dKey:[B
    new-instance v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    const/4 v4, 0x0

    .line 178
    div-int/lit8 p1, p1, 0x8

    .line 179
    div-int/lit8 p2, p2, 0x8

    .line 181
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 183
    .local v0, dKey:[B
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lmyorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 185
    .local v1, iv:[B
    new-instance v2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0, v4, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
