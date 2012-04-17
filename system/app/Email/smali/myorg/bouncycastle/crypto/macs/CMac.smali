.class public Lmyorg/bouncycastle/crypto/macs/CMac;
.super Ljava/lang/Object;
.source "CMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private L:[B

.field private Lu:[B

.field private Lu2:[B

.field private ZEROES:[B

.field private buf:[B

.field private bufOff:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "cipher"

    .prologue
    .line 56
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/macs/CMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 3
    .parameter "cipher"
    .parameter "macSizeInBits"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    if-le p2, v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC size must be less or equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size must be either 64 or 128 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 88
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->macSize:I

    .line 90
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->mac:[B

    .line 92
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    .line 94
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 97
    return-void
.end method

.method private doubleLu([B)[B
    .locals 7
    .parameter "in"

    .prologue
    .line 104
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v0, v3, 0x7

    .line 105
    .local v0, FirstBit:I
    array-length v3, p1

    new-array v2, v3, [B

    .line 106
    .local v2, ret:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 107
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 110
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 111
    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    aget-byte v5, v2, v4

    array-length v3, p1

    const/16 v6, 0x10

    if-ne v3, v6, :cond_2

    const/16 v3, -0x79

    :goto_1
    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 113
    :cond_1
    return-object v2

    .line 111
    :cond_2
    const/16 v3, 0x1b

    goto :goto_1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v6, 0x0

    .line 174
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 177
    .local v0, blockSize:I
    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    if-ne v3, v0, :cond_0

    .line 178
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    .line 184
    .local v2, lu:[B
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->mac:[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 185
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    aget-byte v4, v3, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v1           #i:I
    .end local v2           #lu:[B
    :cond_0
    new-instance v3, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-virtual {v3, v4, v5}, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;->addPadding([BI)I

    .line 181
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->Lu2:[B

    .restart local v2       #lu:[B
    goto :goto_0

    .line 188
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 190
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->mac:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->macSize:I

    invoke-static {v3, v6, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/CMac;->reset()V

    .line 194
    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->macSize:I

    return v3
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->macSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/CMac;->reset()V

    .line 119
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v4, p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 122
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->L:[B

    .line 123
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->L:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 124
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->L:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    .line 125
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->Lu2:[B

    .line 127
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v4, p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 128
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    aput-byte v2, v1, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 213
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 214
    return-void
.end method

.method public update(B)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 135
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 137
    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 140
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 141
    return-void
.end method

.method public update([BII)V
    .locals 6
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v5, 0x0

    .line 144
    if-gez p3, :cond_0

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a negative input length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 149
    .local v0, blockSize:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    sub-int v1, v0, v2

    .line 151
    .local v1, gapLen:I
    if-le p3, v1, :cond_1

    .line 152
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 156
    iput v5, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 157
    sub-int/2addr p3, v1

    .line 158
    add-int/2addr p2, v1

    .line 160
    :goto_0
    if-le p3, v0, :cond_1

    .line 161
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 163
    sub-int/2addr p3, v0

    .line 164
    add-int/2addr p2, v0

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 171
    return-void
.end method
