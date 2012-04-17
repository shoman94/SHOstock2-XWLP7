.class public Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;
.source "EAXBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private associatedTextMac:[B

.field private blockSize:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

.field private forEncryption:Z

.field private mac:Lmyorg/bouncycastle/crypto/Mac;

.field private macBlock:[B

.field private macSize:I

.field private nonceMac:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "cipher"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    .line 54
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/macs/CMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    .line 55
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    .line 56
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    .line 58
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    .line 59
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    .line 60
    return-void
.end method

.method private calculateMac()V
    .locals 5

    .prologue
    .line 119
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v2, [B

    .line 120
    .local v1, outC:[B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    aget-byte v4, v1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method private process(B[BI)I
    .locals 6
    .parameter "b"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    aput-byte p1, v2, v3

    .line 229
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 232
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v1, p2, p3}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 235
    .local v0, size:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v2, p2, p3, v3}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 242
    :goto_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iput v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 243
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    .end local v0           #size:I
    :goto_1
    return v0

    .line 237
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v2, v3, v1, v4}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 239
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v1, p2, p3}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    .restart local v0       #size:I
    goto :goto_0

    .end local v0           #size:I
    :cond_1
    move v0, v1

    .line 248
    goto :goto_1
.end method

.method private reset(Z)V
    .locals 4
    .parameter "clearMac"

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 133
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Mac;->reset()V

    .line 135
    iput v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 136
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-static {v1, v3}, Lmyorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    invoke-static {v1, v3}, Lmyorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 142
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v1, [B

    .line 143
    .local v0, tag:[B
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 144
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v0, v3, v2}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 145
    return-void
.end method

.method private verifyMac([BI)Z
    .locals 3
    .parameter "mac"
    .parameter "off"

    .prologue
    .line 252
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    aget-byte v1, v1, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 258
    :goto_1
    return v1

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 164
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 165
    .local v0, extra:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 167
    .local v1, tmp:[B
    iput v6, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 169
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v6, v1, v6}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 171
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 173
    invoke-static {v1, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1, v6, v0}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 177
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 179
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    add-int v3, p2, v0

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 183
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v2, v0

    .line 202
    :goto_0
    return v2

    .line 185
    :cond_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-le v0, v2, :cond_1

    .line 186
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v4, v0, v4

    invoke-interface {v2, v3, v6, v4}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 188
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v6, v1, v6}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 189
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 191
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    invoke-static {v1, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_1
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 196
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v3, v0, v3

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->verifyMac([BI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    new-instance v2, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "mac check in EAX failed"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_2
    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 202
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    goto :goto_0
.end method

.method public getOutputSize(I)I
    .locals 2
    .parameter "len"

    .prologue
    .line 219
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 220
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v0, v1

    .line 222
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2
    .parameter "len"

    .prologue
    .line 215
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    div-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 9
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    .line 81
    instance-of v5, p2, Lmyorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v5, :cond_0

    move-object v3, p2

    .line 82
    check-cast v3, Lmyorg/bouncycastle/crypto/params/AEADParameters;

    .line 84
    .local v3, param:Lmyorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    .line 85
    .local v2, nonce:[B
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    .line 86
    .local v0, associatedText:[B
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 87
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lmyorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v1

    .line 99
    .end local v3           #param:Lmyorg/bouncycastle/crypto/params/AEADParameters;
    .local v1, keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v4, v5, [B

    .line 101
    .local v4, tag:[B
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v5, v1}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 102
    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x1

    aput-byte v8, v4, v5

    .line 103
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v5, v4, v7, v6}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 104
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    array-length v6, v0

    invoke-interface {v5, v0, v7, v6}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 105
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    invoke-interface {v5, v6, v7}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 107
    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x1

    aput-byte v7, v4, v5

    .line 108
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v5, v4, v7, v6}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 109
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    array-length v6, v2

    invoke-interface {v5, v2, v7, v6}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 110
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-interface {v5, v6, v7}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 112
    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    aput-byte v6, v4, v5

    .line 113
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v5, v4, v7, v6}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 115
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    new-instance v6, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-direct {v6, v1, v7}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v5, v8, v6}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 116
    return-void

    .line 88
    .end local v0           #associatedText:[B
    .end local v1           #keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;
    .end local v2           #nonce:[B
    .end local v4           #tag:[B
    :cond_0
    instance-of v5, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v5, :cond_1

    move-object v3, p2

    .line 89
    check-cast v3, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 91
    .local v3, param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 92
    .restart local v2       #nonce:[B
    new-array v0, v7, [B

    .line 93
    .restart local v0       #associatedText:[B
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 94
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .line 95
    .restart local v1       #keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 96
    .end local v0           #associatedText:[B
    .end local v1           #keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;
    .end local v2           #nonce:[B
    .end local v3           #param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid parameters passed to EAX"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, resultLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, p3, :cond_0

    .line 156
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p5, v1

    invoke-direct {p0, v2, p4, v3}, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return v1
.end method
