.class public Lmyorg/bouncycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source "IESEngine.java"


# instance fields
.field agree:Lmyorg/bouncycastle/crypto/BasicAgreement;

.field cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

.field forEncryption:Z

.field kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

.field mac:Lmyorg/bouncycastle/crypto/Mac;

.field macBuf:[B

.field param:Lmyorg/bouncycastle/crypto/params/IESParameters;

.field privParam:Lmyorg/bouncycastle/crypto/CipherParameters;

.field pubParam:Lmyorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BasicAgreement;Lmyorg/bouncycastle/crypto/DerivationFunction;Lmyorg/bouncycastle/crypto/Mac;)V
    .locals 1
    .parameter "agree"
    .parameter "kdf"
    .parameter "mac"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->agree:Lmyorg/bouncycastle/crypto/BasicAgreement;

    .line 42
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    .line 43
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    .line 44
    invoke-interface {p3}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 46
    return-void
.end method

.method private decryptBlock([BII[B)[B
    .locals 19
    .parameter "in_enc"
    .parameter "inOff"
    .parameter "inLen"
    .parameter "z"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v9, 0x0

    .line 84
    .local v9, M:[B
    const/16 v16, 0x0

    .line 85
    .local v16, macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v13, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v3

    move-object/from16 v0, p4

    invoke-direct {v13, v0, v3}, Lmyorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 86
    .local v13, kParam:Lmyorg/bouncycastle/crypto/params/KDFParameters;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v17

    .line 88
    .local v17, macKeySize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v3, v13}, Lmyorg/bouncycastle/crypto/DerivationFunction;->init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int p3, p3, v3

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez v3, :cond_1

    .line 94
    div-int/lit8 v3, v17, 0x8

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->generateKdfBytes(Lmyorg/bouncycastle/crypto/params/KDFParameters;I)[B

    move-result-object v10

    .line 96
    .local v10, buf:[B
    move/from16 v0, p3

    new-array v9, v0, [B

    .line 98
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, p3

    if-eq v12, v0, :cond_0

    .line 99
    add-int v3, p2, v12

    aget-byte v3, p1, v3

    aget-byte v4, v10, v12

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v9, v12

    .line 98
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v16, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local v16           #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v3, v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-direct {v0, v10, v1, v3}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 122
    .end local v12           #i:I
    .restart local v16       #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v15

    .line 124
    .local v15, macIV:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    const/4 v4, 0x0

    array-length v5, v15

    invoke-interface {v3, v15, v4, v5}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 129
    add-int p2, p2, p3

    .line 131
    const/16 v18, 0x0

    .local v18, t:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    aget-byte v3, v3, v18

    add-int v4, p2, v18

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_2

    .line 133
    new-instance v3, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v4, "Mac codes failed to equal."

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    .end local v10           #buf:[B
    .end local v15           #macIV:[B
    .end local v18           #t:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    check-cast v3, Lmyorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v11

    .line 105
    .local v11, cipherKeySize:I
    div-int/lit8 v3, v11, 0x8

    div-int/lit8 v4, v17, 0x8

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->generateKdfBytes(Lmyorg/bouncycastle/crypto/params/KDFParameters;I)[B

    move-result-object v10

    .line 107
    .restart local v10       #buf:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v4, 0x0

    new-instance v5, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v6, 0x0

    div-int/lit8 v8, v11, 0x8

    invoke-direct {v5, v10, v6, v8}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v3, v4, v5}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v3

    new-array v7, v3, [B

    .line 111
    .local v7, tmp:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v14

    .line 113
    .local v14, len:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3, v7, v14}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v3

    add-int/2addr v14, v3

    .line 115
    new-array v9, v14, [B

    .line 117
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v7, v3, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    new-instance v16, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local v16           #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v3, v11, 0x8

    div-int/lit8 v4, v17, 0x8

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v3, v4}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .restart local v16       #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    goto/16 :goto_1

    .line 131
    .end local v7           #tmp:[B
    .end local v11           #cipherKeySize:I
    .end local v14           #len:I
    .restart local v15       #macIV:[B
    .restart local v18       #t:I
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 137
    :cond_3
    return-object v9
.end method

.method private encryptBlock([BII[B)[B
    .locals 17
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .parameter "z"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v7, 0x0

    .line 143
    .local v7, C:[B
    const/4 v15, 0x0

    .line 144
    .local v15, macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v12, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v1

    move-object/from16 v0, p4

    invoke-direct {v12, v0, v1}, Lmyorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 145
    .local v12, kParam:Lmyorg/bouncycastle/crypto/params/KDFParameters;
    const/4 v9, 0x0

    .line 146
    .local v9, c_text_length:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v16

    .line 148
    .local v16, macKeySize:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez v1, :cond_1

    .line 150
    div-int/lit8 v1, v16, 0x8

    add-int v1, v1, p3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->generateKdfBytes(Lmyorg/bouncycastle/crypto/params/KDFParameters;I)[B

    move-result-object v8

    .line 152
    .local v8, buf:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    add-int v1, v1, p3

    new-array v7, v1, [B

    .line 153
    move/from16 v9, p3

    .line 155
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move/from16 v0, p3

    if-eq v11, v0, :cond_0

    .line 156
    add-int v1, p2, v11

    aget-byte v1, p1, v1

    aget-byte v2, v8, v11

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v11

    .line 155
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance v15, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local v15           #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v1, v16, 0x8

    move/from16 v0, p3

    invoke-direct {v15, v8, v0, v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 182
    .end local v11           #i:I
    .restart local v15       #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v14

    .line 184
    .local v14, macIV:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v15}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v7, v2, v9}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    array-length v3, v14

    invoke-interface {v1, v14, v2, v3}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v7, v9}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 191
    return-object v7

    .line 161
    .end local v8           #buf:[B
    .end local v14           #macIV:[B
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    check-cast v1, Lmyorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v10

    .line 162
    .local v10, cipherKeySize:I
    div-int/lit8 v1, v10, 0x8

    div-int/lit8 v2, v16, 0x8

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->generateKdfBytes(Lmyorg/bouncycastle/crypto/params/KDFParameters;I)[B

    move-result-object v8

    .line 164
    .restart local v8       #buf:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v2, 0x1

    new-instance v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    div-int/lit8 v6, v10, 0x8

    invoke-direct {v3, v8, v4, v6}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v1, v2, v3}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v9

    .line 168
    new-array v5, v9, [B

    .line 170
    .local v5, tmp:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v13

    .line 172
    .local v13, len:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v5, v13}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v13, v1

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    add-int/2addr v1, v13

    new-array v7, v1, [B

    .line 175
    move v9, v13

    .line 177
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v7, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    new-instance v15, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local v15           #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    div-int/lit8 v1, v10, 0x8

    div-int/lit8 v2, v16, 0x8

    invoke-direct {v15, v8, v1, v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .restart local v15       #macKey:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    goto/16 :goto_1
.end method

.method private generateKdfBytes(Lmyorg/bouncycastle/crypto/params/KDFParameters;I)[B
    .locals 4
    .parameter "kParam"
    .parameter "length"

    .prologue
    .line 195
    new-array v0, p2, [B

    .line 197
    .local v0, buf:[B
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v1, p1}, Lmyorg/bouncycastle/crypto/DerivationFunction;->init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V

    .line 199
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lmyorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 201
    return-object v0
.end method


# virtual methods
.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .parameter "forEncryption"
    .parameter "privParam"
    .parameter "pubParam"
    .parameter "param"

    .prologue
    .line 75
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 76
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 77
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 78
    check-cast p4, Lmyorg/bouncycastle/crypto/params/IESParameters;

    .end local p4
    iput-object p4, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->param:Lmyorg/bouncycastle/crypto/params/IESParameters;

    .line 79
    return-void
.end method

.method public processBlock([BII)[B
    .locals 3
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->agree:Lmyorg/bouncycastle/crypto/BasicAgreement;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/BasicAgreement;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 207
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->agree:Lmyorg/bouncycastle/crypto/BasicAgreement;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 209
    .local v0, z:Ljava/math/BigInteger;
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->encryptBlock([BII[B)[B

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->decryptBlock([BII[B)[B

    move-result-object v1

    goto :goto_0
.end method
