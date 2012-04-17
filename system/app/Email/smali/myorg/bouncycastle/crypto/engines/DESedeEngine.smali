.class public Lmyorg/bouncycastle/crypto/engines/DESedeEngine;
.super Lmyorg/bouncycastle/crypto/engines/DESEngine;
.source "DESedeEngine.java"


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 14
    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 15
    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 16
    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 24
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .parameter "encrypting"
    .parameter "params"

    .prologue
    const/16 v7, 0x18

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 35
    instance-of v4, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v4, :cond_0

    .line 36
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid parameter passed to DESede init - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 40
    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 42
    .local v3, keyMaster:[B
    array-length v4, v3

    if-le v4, v7, :cond_1

    .line 43
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "key size greater than 24 bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_1
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 48
    new-array v0, v6, [B

    .line 49
    .local v0, key1:[B
    array-length v4, v0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 52
    new-array v1, v6, [B

    .line 53
    .local v1, key2:[B
    array-length v4, v1

    invoke-static {v3, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    if-nez p1, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, v4, v1}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 56
    array-length v4, v3

    if-ne v4, v7, :cond_3

    .line 57
    new-array v2, v6, [B

    .line 58
    .local v2, key3:[B
    const/16 v4, 0x10

    array-length v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 64
    .end local v2           #key3:[B
    :goto_1
    return-void

    :cond_2
    move v4, v5

    .line 54
    goto :goto_0

    .line 62
    :cond_3
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 9
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 80
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 84
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    new-array v4, v8, [B

    .line 89
    .local v4, temp:[B
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 90
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 91
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p0

    move-object v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 92
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v2, p0

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 99
    :goto_0
    return v8

    .line 94
    :cond_3
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 95
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p0

    move-object v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 96
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v2, p0

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
