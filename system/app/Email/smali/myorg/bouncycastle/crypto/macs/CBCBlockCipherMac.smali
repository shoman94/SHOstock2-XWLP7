.class public Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source "CBCBlockCipherMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .parameter "cipher"

    .prologue
    .line 31
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;ILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .parameter "cipher"
    .parameter "macSizeInBits"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;ILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;ILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2
    .parameter "cipher"
    .parameter "macSizeInBits"
    .parameter "padding"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 86
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 87
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    .line 89
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    .line 91
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 93
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 151
    .local v0, blockSize:I
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v1, :cond_0

    .line 155
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_2

    .line 156
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 157
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    goto :goto_0

    .line 160
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ne v1, v0, :cond_1

    .line 161
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 162
    iput v4, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 165
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-interface {v1, v2, v3}, Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 168
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 170
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 174
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v1
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 100
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 102
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 103
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 193
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 194
    return-void
.end method

.method public update(B)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 110
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 112
    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 115
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 116
    return-void
.end method

.method public update([BII)V
    .locals 6
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v5, 0x0

    .line 119
    if-gez p3, :cond_0

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a negative input length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 124
    .local v0, blockSize:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int v1, v0, v2

    .line 126
    .local v1, gapLen:I
    if-le p3, v1, :cond_1

    .line 127
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 131
    iput v5, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 132
    sub-int/2addr p3, v1

    .line 133
    add-int/2addr p2, v1

    .line 135
    :goto_0
    if-le p3, v0, :cond_1

    .line 136
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 138
    sub-int/2addr p3, v0

    .line 139
    add-int/2addr p2, v0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 146
    return-void
.end method
