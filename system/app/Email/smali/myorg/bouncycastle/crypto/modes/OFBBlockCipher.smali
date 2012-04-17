.class public Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;
.super Ljava/lang/Object;
.source "OFBBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private final cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .parameter "cipher"
    .parameter "blockSize"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 29
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    .line 31
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    .line 32
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    .line 33
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    .line 34
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .parameter "encrypting"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 59
    check-cast v2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 60
    .local v2, ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 62
    .local v1, iv:[B
    array-length v3, v1

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 64
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 66
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 74
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 80
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :goto_1
    return-void

    .line 76
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 78
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 116
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 117
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 121
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 131
    add-int v1, p4, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v3, v3

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 150
    return-void
.end method
