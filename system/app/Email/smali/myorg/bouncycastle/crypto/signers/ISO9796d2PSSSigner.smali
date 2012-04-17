.class public Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;
.super Ljava/lang/Object;
.source "ISO9796d2PSSSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/SignerWithRecovery;


# instance fields
.field private block:[B

.field private cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private fullMessage:Z

.field private hLen:I

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private random:Ljava/security/SecureRandom;

.field private recoveredMessage:[B

.field private saltLength:I

.field private standardSalt:[B

.field private trailer:I


# direct methods
.method private ItoOSP(I[B)V
    .locals 2
    .parameter "i"
    .parameter "sp"

    .prologue
    .line 456
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 457
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 458
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 459
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 460
    return-void
.end method

.method private LtoOSP(J[B)V
    .locals 4
    .parameter "l"
    .parameter "sp"

    .prologue
    const/4 v3, 0x0

    .line 466
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    .line 467
    const/4 v0, 0x1

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 468
    const/4 v0, 0x2

    const/16 v1, 0x28

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 469
    const/4 v0, 0x3

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 470
    const/4 v0, 0x4

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 471
    const/4 v0, 0x5

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 472
    const/4 v0, 0x6

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 473
    const/4 v0, 0x7

    ushr-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 474
    return-void
.end method

.method private clearBlock([B)V
    .locals 2
    .parameter "block"

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 164
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 146
    iget v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-eq v0, v2, :cond_2

    .line 151
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .parameter "Z"
    .parameter "zOff"
    .parameter "zLen"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 480
    new-array v3, p4, [B

    .line 481
    .local v3, mask:[B
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 482
    .local v2, hashBuf:[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 483
    .local v0, C:[B
    const/4 v1, 0x0

    .line 485
    .local v1, counter:I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 487
    :goto_0
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    .line 488
    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 490
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 491
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 492
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 494
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_0
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 500
    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 502
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 503
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 504
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 506
    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    :cond_1
    return-object v3
.end method


# virtual methods
.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "forSigning"
    .parameter "param"

    .prologue
    .line 102
    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 104
    .local v1, lengthOfSalt:I
    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 105
    check-cast v2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 107
    .local v2, p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 108
    .local v0, kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    .line 127
    .end local v2           #p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_0
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 129
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    iput v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    .line 131
    iget v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    .line 133
    iget v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v4, 0xbc

    if-ne v3, v4, :cond_3

    .line 134
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v3, v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    .line 139
    :goto_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    .line 140
    return-void

    .line 111
    .end local v0           #kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    :cond_1
    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 112
    check-cast v2, Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;

    .line 114
    .local v2, p:Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 115
    .restart local v0       #kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 116
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v1, v3

    .line 117
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v3, v3

    iget v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-eq v3, v4, :cond_0

    .line 118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Fixed salt is of wrong length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    .end local v2           #p:Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;
    :cond_2
    move-object v0, p2

    .line 121
    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 122
    .restart local v0       #kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_0

    .line 123
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 136
    :cond_3
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v3, v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 199
    iput v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 200
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 203
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 207
    :cond_1
    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 208
    return-void
.end method

.method public update(B)V
    .locals 3
    .parameter "b"

    .prologue
    .line 172
    iget v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    aput-byte p1, v0, v1

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    goto :goto_0
.end method

.method public update([BII)V
    .locals 2
    .parameter "in"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 183
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 184
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    .line 185
    add-int/lit8 p2, p2, 0x1

    .line 186
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 189
    :cond_0
    if-lez p3, :cond_1

    .line 190
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 192
    :cond_1
    return-void
.end method

.method public verifySignature([B)Z
    .locals 17
    .parameter "signature"

    .prologue
    .line 290
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v14, v15}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 298
    .local v2, block:[B
    array-length v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v14, v14, 0x7

    div-int/lit8 v14, v14, 0x8

    if-ge v13, v14, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v13, v13, 0x8

    new-array v12, v13, [B

    .line 301
    .local v12, tmp:[B
    const/4 v13, 0x0

    array-length v14, v12

    array-length v15, v2

    sub-int/2addr v14, v15

    array-length v15, v2

    invoke-static {v2, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 303
    move-object v2, v12

    .line 308
    .end local v12           #tmp:[B
    :cond_0
    array-length v13, v2

    add-int/lit8 v13, v13, -0x1

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    xor-int/lit16 v13, v13, 0xbc

    if-nez v13, :cond_1

    .line 309
    const/4 v11, 0x1

    .line 342
    .local v11, tLength:I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v7, v13, [B

    .line 343
    .local v7, m2Hash:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    invoke-interface {v13, v7, v14}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 348
    array-length v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    array-length v15, v2

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v14, v15}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 350
    .local v3, dbMask:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v13, v3

    if-eq v6, v13, :cond_3

    .line 351
    aget-byte v13, v2, v6

    aget-byte v14, v3, v6

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v2, v6

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 291
    .end local v2           #block:[B
    .end local v3           #dbMask:[B
    .end local v6           #i:I
    .end local v7           #m2Hash:[B
    .end local v11           #tLength:I
    :catch_0
    move-exception v4

    .line 292
    .local v4, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 429
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    return v13

    .line 311
    .restart local v2       #block:[B
    :cond_1
    array-length v13, v2

    add-int/lit8 v13, v13, -0x2

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    array-length v14, v2

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    or-int v10, v13, v14

    .line 314
    .local v10, sigTrail:I
    sparse-switch v10, :sswitch_data_0

    .line 333
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "unrecognised hash in signature"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 316
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    instance-of v13, v13, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    if-nez v13, :cond_2

    .line 317
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "signer should be initialised with RIPEMD160"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 322
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    instance-of v13, v13, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    if-nez v13, :cond_2

    .line 323
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "signer should be initialised with SHA1"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 327
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    instance-of v13, v13, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    if-nez v13, :cond_2

    .line 328
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "signer should be initialised with RIPEMD128"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 336
    :cond_2
    const/4 v11, 0x2

    .restart local v11       #tLength:I
    goto/16 :goto_0

    .line 354
    .end local v10           #sigTrail:I
    .restart local v3       #dbMask:[B
    .restart local v6       #i:I
    .restart local v7       #m2Hash:[B
    :cond_3
    const/4 v13, 0x0

    aget-byte v14, v2, v13

    and-int/lit8 v14, v14, 0x7f

    int-to-byte v14, v14

    aput-byte v14, v2, v13

    .line 359
    const/4 v8, 0x0

    .line 360
    .local v8, mStart:I
    :goto_3
    array-length v13, v2

    if-eq v8, v13, :cond_4

    .line 361
    aget-byte v13, v2, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 366
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 368
    array-length v13, v2

    if-lt v8, v13, :cond_6

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 370
    const/4 v13, 0x0

    goto :goto_2

    .line 360
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 373
    :cond_6
    const/4 v13, 0x1

    if-le v8, v13, :cond_8

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 375
    array-length v13, v3

    sub-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    sub-int/2addr v13, v14

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v15, v15

    invoke-static {v2, v8, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    const/16 v13, 0x8

    new-array v1, v13, [B

    .line 383
    .local v1, C:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x8

    int-to-long v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v1}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    array-length v15, v1

    invoke-interface {v13, v1, v14, v15}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v13, v13

    if-eqz v13, :cond_7

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 391
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    array-length v15, v7

    invoke-interface {v13, v7, v14, v15}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v14, v14

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    invoke-interface {v13, v2, v14, v15}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v13}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    new-array v5, v13, [B

    .line 397
    .local v5, hash:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    invoke-interface {v13, v5, v14}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 399
    array-length v13, v2

    sub-int/2addr v13, v11

    array-length v14, v5

    sub-int v9, v13, v14

    .line 401
    .local v9, off:I
    const/4 v6, 0x0

    :goto_5
    array-length v13, v5

    if-eq v6, v13, :cond_a

    .line 402
    aget-byte v13, v5, v6

    add-int v14, v9, v6

    aget-byte v14, v2, v14

    if-eq v13, v14, :cond_9

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 404
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 406
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 408
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 373
    .end local v1           #C:[B
    .end local v5           #hash:[B
    .end local v9           #off:I
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 401
    .restart local v1       #C:[B
    .restart local v5       #hash:[B
    .restart local v9       #off:I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 412
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 413
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 419
    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    if-eqz v13, :cond_c

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->isSameAs([B[B)Z

    move-result v13

    if-nez v13, :cond_b

    .line 421
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 422
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 425
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 428
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 429
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x31cc -> :sswitch_0
        0x32cc -> :sswitch_2
        0x33cc -> :sswitch_1
    .end sparse-switch
.end method
