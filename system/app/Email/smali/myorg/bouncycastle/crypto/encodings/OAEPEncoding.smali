.class public Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private hash:Lmyorg/bouncycastle/crypto/Digest;

.field private mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;[B)V
    .locals 2
    .parameter "cipher"
    .parameter "hash"
    .parameter "mgf1Hash"
    .parameter "encodingParams"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 40
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lmyorg/bouncycastle/crypto/Digest;

    .line 41
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    .line 42
    invoke-interface {p2}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 44
    if-eqz p4, :cond_0

    .line 45
    array-length v0, p4

    invoke-interface {p2, p4, v1, v0}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 48
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 49
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;[B)V
    .locals 0
    .parameter "cipher"
    .parameter "hash"
    .parameter "encodingParams"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p2, p3}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;[B)V

    .line 35
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .parameter "i"
    .parameter "sp"

    .prologue
    .line 238
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 239
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 240
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 241
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 242
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .parameter "Z"
    .parameter "zOff"
    .parameter "zLen"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 248
    new-array v3, p4, [B

    .line 249
    .local v3, mask:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    .line 250
    .local v2, hashBuf:[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 251
    .local v0, C:[B
    const/4 v1, 0x0

    .line 253
    .local v1, counter:I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 256
    :cond_0
    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 258
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 259
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 260
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 262
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    array-length v4, v2

    div-int v4, p4, v4

    if-lt v1, v4, :cond_0

    .line 265
    array-length v4, v2

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 266
    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 268
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 269
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 270
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 272
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v3

    array-length v6, v2

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_1
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .locals 10
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 159
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6, p1, p2, p3}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 167
    .local v1, data:[B
    array-length v6, v1

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 168
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    new-array v0, v6, [B

    .line 170
    .local v0, block:[B
    array-length v6, v0

    array-length v7, v1

    sub-int/2addr v6, v7

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    :goto_0
    array-length v6, v0

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    .line 176
    new-instance v6, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 172
    .end local v0           #block:[B
    :cond_0
    move-object v0, v1

    .restart local v0       #block:[B
    goto :goto_0

    .line 182
    :cond_1
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    invoke-direct {p0, v0, v6, v7, v8}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 185
    .local v3, mask:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_2

    .line 186
    aget-byte v6, v0, v2

    aget-byte v7, v3, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_2
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    invoke-direct {p0, v0, v9, v6, v7}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 194
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v6

    :goto_2
    array-length v6, v0

    if-eq v2, v6, :cond_3

    .line 195
    aget-byte v6, v0, v2

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    sub-int v7, v2, v7

    aget-byte v7, v3, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 201
    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_5

    .line 202
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v6, v6, v2

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    add-int/2addr v7, v2

    aget-byte v7, v0, v7

    if-eq v6, v7, :cond_4

    .line 203
    new-instance v6, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data hash wrong"

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 212
    :cond_5
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    mul-int/lit8 v5, v6, 0x2

    .local v5, start:I
    :goto_4
    array-length v6, v0

    if-eq v5, v6, :cond_6

    .line 213
    aget-byte v6, v0, v5

    if-eqz v6, :cond_8

    .line 218
    :cond_6
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_7

    aget-byte v6, v0, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    .line 219
    :cond_7
    new-instance v6, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data start wrong "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 212
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 222
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 227
    array-length v6, v0

    sub-int/2addr v6, v5

    new-array v4, v6, [B

    .line 229
    .local v4, output:[B
    array-length v6, v4

    invoke-static {v0, v5, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    return-object v4
.end method

.method public encodeBlock([BII)[B
    .locals 8
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 98
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 103
    .local v0, block:[B
    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v4, v0

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    .line 118
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v3, v4, [B

    .line 125
    .local v3, seed:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 130
    array-length v4, v3

    array-length v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v7, v4, v5}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 132
    .local v2, mask:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v4

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-eq v1, v4, :cond_0

    .line 133
    aget-byte v4, v0, v1

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int v5, v1, v5

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v0, v4, v5, v6}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 147
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_1

    .line 148
    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public getInputBlockSize()I
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 72
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 73
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 75
    .end local v0           #baseBlockSize:I
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 82
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 85
    .end local v0           #baseBlockSize:I
    :goto_0
    return v0

    .restart local v0       #baseBlockSize:I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 56
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 57
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 59
    .local v0, rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 64
    .end local v0           #rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 66
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 67
    return-void

    .line 61
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
