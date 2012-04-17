.class public Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lmyorg/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 3
    .parameter "digest"

    .prologue
    .line 35
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 36
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 37
    instance-of v0, p1, Lmyorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 39
    check-cast p1, Lmyorg/bouncycastle/crypto/ExtendedDigest;

    .end local p1
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    .line 44
    return-void

    .line 41
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjust([BI[B)V
    .locals 4
    .parameter "a"
    .parameter "aOff"
    .parameter "b"

    .prologue
    .line 52
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

    .line 54
    .local v1, x:I
    array-length v2, p3

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 55
    ushr-int/lit8 v1, v1, 0x8

    .line 57
    array-length v2, p3

    add-int/lit8 v0, v2, -0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 58
    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 59
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 60
    ushr-int/lit8 v1, v1, 0x8

    .line 57
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method private generateDerivedKey(II)[B
    .locals 16
    .parameter "idByte"
    .parameter "n"

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v3, v11, [B

    .line 69
    .local v3, D:[B
    move/from16 v0, p2

    new-array v8, v0, [B

    .line 71
    .local v8, dKey:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v11, v3

    if-eq v9, v11, :cond_0

    .line 72
    move/from16 v0, p1

    int-to-byte v11, v0

    aput-byte v11, v3, v9

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 77
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v11, v11

    if-eqz v11, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v6, v11, [B

    .line 80
    .local v6, S:[B
    const/4 v9, 0x0

    :goto_1
    array-length v11, v6

    if-eq v9, v11, :cond_2

    .line 81
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v6, v9

    .line 80
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 84
    .end local v6           #S:[B
    :cond_1
    const/4 v11, 0x0

    new-array v6, v11, [B

    .line 89
    .restart local v6       #S:[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v11, v11

    if-eqz v11, :cond_3

    .line 90
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v5, v11, [B

    .line 92
    .local v5, P:[B
    const/4 v9, 0x0

    :goto_2
    array-length v11, v5

    if-eq v9, v11, :cond_4

    .line 93
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v5, v9

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 96
    .end local v5           #P:[B
    :cond_3
    const/4 v11, 0x0

    new-array v5, v11, [B

    .line 99
    .restart local v5       #P:[B
    :cond_4
    array-length v11, v6

    array-length v12, v5

    add-int/2addr v11, v12

    new-array v4, v11, [B

    .line 101
    .local v4, I:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    const/4 v11, 0x0

    array-length v12, v6

    array-length v13, v5

    invoke-static {v5, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v2, v11, [B

    .line 105
    .local v2, B:[B
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int v11, v11, p2

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int v7, v11, v12

    .line 107
    .local v7, c:I
    const/4 v9, 0x1

    :goto_3
    if-gt v9, v7, :cond_9

    .line 108
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v1, v11, [B

    .line 110
    .local v1, A:[B
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v3

    invoke-interface {v11, v3, v12, v13}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 111
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v4

    invoke-interface {v11, v4, v12, v13}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 112
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 113
    const/4 v10, 0x1

    .local v10, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-eq v10, v11, :cond_5

    .line 114
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v1

    invoke-interface {v11, v1, v12, v13}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 115
    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 113
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 118
    :cond_5
    const/4 v10, 0x0

    :goto_5
    array-length v11, v2

    if-eq v10, v11, :cond_6

    .line 119
    array-length v11, v1

    rem-int v11, v10, v11

    aget-byte v11, v1, v11

    aput-byte v11, v2, v10

    .line 118
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 122
    :cond_6
    const/4 v10, 0x0

    :goto_6
    array-length v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v11, v12

    if-eq v10, v11, :cond_7

    .line 123
    move-object/from16 v0, p0

    iget v11, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v2}, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    .line 122
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 126
    :cond_7
    if-ne v9, v7, :cond_8

    .line 127
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v8

    add-int/lit8 v14, v9, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 129
    :cond_8
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v1

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 133
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
    .line 178
    div-int/lit8 p1, p1, 0x8

    .line 180
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 182
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
    .line 144
    div-int/lit8 p1, p1, 0x8

    .line 146
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 148
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

    .line 160
    div-int/lit8 p1, p1, 0x8

    .line 161
    div-int/lit8 p2, p2, 0x8

    .line 163
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 165
    .local v0, dKey:[B
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lmyorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 167
    .local v1, iv:[B
    new-instance v2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0, v4, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
