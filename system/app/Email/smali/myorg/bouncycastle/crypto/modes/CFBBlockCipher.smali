.class public Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;
.super Ljava/lang/Object;
.source "CFBBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .parameter "cipher"
    .parameter "bitBlockSize"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 29
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 30
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 32
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 33
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 34
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 35
    return-void
.end method


# virtual methods
.method public decryptBlock([BI[BI)I
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

    .line 176
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 177
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 181
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 189
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v2, v2

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 196
    add-int v1, p4, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v1
.end method

.method public encryptBlock([BI[BI)I
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

    .line 136
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 137
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 141
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 150
    add-int v1, p4, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v2, v2

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

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
    .line 100
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

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
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    .line 60
    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 61
    check-cast v2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 62
    .local v2, ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 64
    .local v1, iv:[B
    array-length v3, v1

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 66
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 68
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 76
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 82
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :goto_1
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 80
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 1
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
    .line 118
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 209
    return-void
.end method
