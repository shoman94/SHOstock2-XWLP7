.class public Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lmyorg/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lmyorg/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 0x1
        0x4at
        0xddt
        0xa2t
        0x2ct
        0x79t
        0xe8t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    .line 56
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5
    .parameter "key"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 287
    new-array v0, v4, [B

    .line 289
    .local v0, result:[B
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 290
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 292
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1
    .parameter "key"
    .parameter "checksum"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private static reverse([B)[B
    .locals 4
    .parameter "bs"

    .prologue
    .line 308
    array-length v2, p0

    new-array v1, v2, [B

    .line 309
    .local v1, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 310
    array-length v2, p0

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "DESede"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "forWrapping"
    .parameter "param"

    .prologue
    const/16 v4, 0x8

    .line 66
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 67
    new-instance v2, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 70
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 71
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 72
    .local v0, pr:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 73
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 78
    .end local v0           #pr:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, sr:Ljava/security/SecureRandom;
    :goto_0
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_2

    .line 79
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 81
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_0

    .line 85
    new-array v2, v4, [B

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 86
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 88
    new-instance v2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 103
    :cond_0
    return-void

    .line 75
    .end local v1           #sr:Ljava/security/SecureRandom;
    .restart local p2
    :cond_1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .restart local v1       #sr:Ljava/security/SecureRandom;
    goto :goto_0

    .line 90
    :cond_2
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    .line 91
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 92
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 93
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 95
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_4

    .line 96
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v2, v2

    if-eq v2, v4, :cond_0

    .line 97
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "IV is not 8 octets"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You should not supply an IV for unwrapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unwrap([BII)[B
    .locals 14
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 191
    iget-boolean v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v10, :cond_0

    .line 192
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Not set for unwrapping"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 195
    :cond_0
    if-nez p1, :cond_1

    .line 196
    new-instance v10, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v11, "Null pointer as ciphertext"

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 199
    :cond_1
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v6

    .line 200
    .local v6, blockSize:I
    rem-int v10, p3, v6

    if-eqz v10, :cond_2

    .line 201
    new-instance v10, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ciphertext not multiple of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 219
    :cond_2
    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v8, v10, v11}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 221
    .local v8, param2:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 223
    move/from16 v0, p3

    new-array v4, v0, [B

    .line 225
    .local v4, TEMP3:[B
    const/4 v7, 0x0

    .local v7, currentBytePos:I
    :goto_0
    move/from16 v0, p3

    if-eq v7, v0, :cond_3

    .line 226
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    add-int v11, p2, v7

    invoke-virtual {v10, p1, v11, v4, v7}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 225
    add-int/2addr v7, v6

    goto :goto_0

    .line 230
    :cond_3
    invoke-static {v4}, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v3

    .line 234
    .local v3, TEMP2:[B
    const/16 v10, 0x8

    new-array v10, v10, [B

    iput-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 236
    array-length v10, v3

    add-int/lit8 v10, v10, -0x8

    new-array v2, v10, [B

    .line 238
    .local v2, TEMP1:[B
    const/4 v10, 0x0

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-static {v3, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    const/16 v10, 0x8

    const/4 v11, 0x0

    array-length v12, v3

    add-int/lit8 v12, v12, -0x8

    invoke-static {v3, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    new-instance v10, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v10, v11, v12}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 245
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v11, 0x0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v10, v11, v12}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 247
    array-length v10, v2

    new-array v5, v10, [B

    .line 249
    .local v5, WKCKS:[B
    const/4 v7, 0x0

    :goto_1
    array-length v10, v5

    if-eq v7, v10, :cond_4

    .line 250
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10, v2, v7, v5, v7}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 249
    add-int/2addr v7, v6

    goto :goto_1

    .line 256
    :cond_4
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    new-array v9, v10, [B

    .line 257
    .local v9, result:[B
    const/16 v10, 0x8

    new-array v1, v10, [B

    .line 259
    .local v1, CKStoBeVerified:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v5

    add-int/lit8 v12, v12, -0x8

    invoke-static {v5, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v5, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    invoke-direct {p0, v9, v1}, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v10

    if-nez v10, :cond_5

    .line 267
    new-instance v10, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v11, "Checksum inside ciphertext is corrupted"

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 271
    :cond_5
    return-object v9
.end method

.method public wrap([BII)[B
    .locals 16
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v12, :cond_0

    .line 124
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Not initialized for wrapping"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 127
    :cond_0
    move/from16 v0, p3

    new-array v10, v0, [B

    .line 129
    .local v10, keyToBeWrapped:[B
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v10, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v3

    .line 135
    .local v3, CKS:[B
    array-length v12, v10

    array-length v13, v3

    add-int/2addr v12, v13

    new-array v7, v12, [B

    .line 137
    .local v7, WKCKS:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v10

    invoke-static {v10, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v12, 0x0

    array-length v13, v10

    array-length v14, v3

    invoke-static {v3, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v8

    .line 145
    .local v8, blockSize:I
    array-length v12, v7

    rem-int/2addr v12, v8

    if-eqz v12, :cond_1

    .line 146
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Not multiple of block length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v12, v13, v14}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 151
    array-length v12, v7

    new-array v4, v12, [B

    .line 153
    .local v4, TEMP1:[B
    const/4 v9, 0x0

    .local v9, currentBytePos:I
    :goto_0
    array-length v12, v7

    if-eq v9, v12, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v7, v9, v4, v9}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 153
    add-int/2addr v9, v8

    goto :goto_0

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v12, v12

    array-length v13, v4

    add-int/2addr v12, v13

    new-array v5, v12, [B

    .line 160
    .local v5, TEMP2:[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v15, v15

    invoke-static {v12, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v13, v13

    array-length v14, v4

    invoke-static {v4, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-static {v5}, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v6

    .line 170
    .local v6, TEMP3:[B
    new-instance v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    sget-object v13, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v11, v12, v13}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 172
    .local v11, param2:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v11}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 174
    const/4 v9, 0x0

    :goto_1
    array-length v12, v6

    if-eq v9, v12, :cond_3

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v6, v9, v6, v9}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 174
    add-int/2addr v9, v8

    goto :goto_1

    .line 178
    :cond_3
    return-object v6
.end method
