.class public Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;
.super Ljava/lang/Object;
.source "RFC3211WrapEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 25
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "forWrapping"
    .parameter "param"

    .prologue
    .line 28
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    .line 30
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 31
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 33
    .local v0, p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    .line 34
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 42
    .end local v0           #p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_0
    return-void

    .line 36
    .restart local p2
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    .line 40
    :cond_1
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 11
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 88
    iget-boolean v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-eqz v7, :cond_0

    .line 89
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "not set for unwrapping"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 92
    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    .line 94
    .local v0, blockSize:I
    mul-int/lit8 v7, v0, 0x2

    if-ge p3, v7, :cond_1

    .line 95
    new-instance v7, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "input too short"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 98
    :cond_1
    new-array v1, p3, [B

    .line 99
    .local v1, cekBlock:[B
    new-array v4, v0, [B

    .line 101
    .local v4, iv:[B
    invoke-static {p1, p2, v1, v10, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    array-length v7, v4

    invoke-static {p1, p2, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v7, v10, v8}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 106
    move v3, v0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_2

    .line 107
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v3, v1, v3}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 106
    add-int/2addr v3, v0

    goto :goto_0

    .line 110
    :cond_2
    array-length v7, v1

    array-length v8, v4

    sub-int/2addr v7, v8

    array-length v8, v4

    invoke-static {v1, v7, v4, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v7, v10, v8}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 114
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v10, v1, v10}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 116
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v7, v10, v8}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 118
    const/4 v3, 0x0

    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 119
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v3, v1, v3}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 118
    add-int/2addr v3, v0

    goto :goto_1

    .line 122
    :cond_3
    aget-byte v7, v1, v10

    and-int/lit16 v7, v7, 0xff

    array-length v8, v1

    add-int/lit8 v8, v8, -0x4

    if-le v7, v8, :cond_4

    .line 123
    new-instance v7, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "wrapped key corrupted"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_4
    aget-byte v7, v1, v10

    and-int/lit16 v7, v7, 0xff

    new-array v5, v7, [B

    .line 128
    .local v5, key:[B
    const/4 v7, 0x4

    aget-byte v8, v1, v10

    invoke-static {v1, v7, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, nonEqual:I
    const/4 v3, 0x0

    :goto_2
    const/4 v7, 0x3

    if-eq v3, v7, :cond_5

    .line 133
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v1, v7

    xor-int/lit8 v7, v7, -0x1

    int-to-byte v2, v7

    .line 134
    .local v2, check:B
    aget-byte v7, v5, v3

    xor-int/2addr v7, v2

    or-int/2addr v6, v7

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 136
    .end local v2           #check:B
    :cond_5
    if-eqz v6, :cond_6

    .line 137
    new-instance v7, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "wrapped key fails checksum"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_6
    return-object v5
.end method

.method public wrap([BII)[B
    .locals 6
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    const/4 v5, 0x1

    .line 49
    iget-boolean v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-nez v3, :cond_0

    .line 50
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not set for wrapping"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3, v5, v4}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 55
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    .line 58
    .local v0, blockSize:I
    add-int/lit8 v3, p3, 0x4

    mul-int/lit8 v4, v0, 0x2

    if-ge v3, v4, :cond_1

    .line 59
    mul-int/lit8 v3, v0, 0x2

    new-array v1, v3, [B

    .line 65
    .local v1, cekBlock:[B
    :goto_0
    const/4 v3, 0x0

    int-to-byte v4, p3

    aput-byte v4, v1, v3

    .line 66
    aget-byte v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    .line 67
    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 68
    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 70
    const/4 v3, 0x4

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int/lit8 v2, p3, 0x4

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 73
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v1           #cekBlock:[B
    .end local v2           #i:I
    :cond_1
    add-int/lit8 v3, p3, 0x4

    rem-int/2addr v3, v0

    if-nez v3, :cond_2

    add-int/lit8 v3, p3, 0x4

    :goto_2
    new-array v1, v3, [B

    .restart local v1       #cekBlock:[B
    goto :goto_0

    .end local v1           #cekBlock:[B
    :cond_2
    add-int/lit8 v3, p3, 0x4

    div-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v0

    goto :goto_2

    .line 76
    .restart local v1       #cekBlock:[B
    .restart local v2       #i:I
    :cond_3
    const/4 v2, 0x0

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 77
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3, v1, v2, v1, v2}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 76
    add-int/2addr v2, v0

    goto :goto_3

    .line 80
    :cond_4
    const/4 v2, 0x0

    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 81
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3, v1, v2, v1, v2}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 80
    add-int/2addr v2, v0

    goto :goto_4

    .line 84
    :cond_5
    return-object v1
.end method
