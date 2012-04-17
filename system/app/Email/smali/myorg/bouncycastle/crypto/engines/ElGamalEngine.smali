.class public Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;
.super Ljava/lang/Object;
.source "ElGamalEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private bitSize:I

.field private forEncryption:Z

.field private key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    .line 27
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    .line 77
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    .line 92
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 36
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 37
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 39
    .local v0, p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    .line 40
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    .line 46
    .end local v0           #p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_0
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    .line 48
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 50
    .local v0, p:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    .line 52
    if-eqz p1, :cond_1

    .line 53
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v1, v1, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    if-nez v1, :cond_2

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ElGamalPublicKeyParameters are required for encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    .end local v0           #p:Ljava/math/BigInteger;
    .restart local p2
    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    .line 43
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 58
    .restart local v0       #p:Ljava/math/BigInteger;
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v1, v1, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-nez v1, :cond_2

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ElGamalPrivateKeyParameters are required for decryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_2
    return-void
.end method

.method public processBlock([BII)[B
    .locals 24
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 106
    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v22, "ElGamal engine not initialised"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v21, v21, 0x7

    div-int/lit8 v12, v21, 0x8

    .line 111
    .local v12, maxLength:I
    :goto_0
    move/from16 v0, p3

    if-le v0, v12, :cond_2

    .line 112
    new-instance v21, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v22, "input too large for ElGamal cipher.\n"

    invoke-direct/range {v21 .. v22}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 109
    .end local v12           #maxLength:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->getInputBlockSize()I

    move-result v12

    goto :goto_0

    .line 115
    .restart local v12       #maxLength:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v16

    .line 117
    .local v16, p:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 119
    div-int/lit8 v21, p3, 0x2

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 120
    .local v7, in1:[B
    div-int/lit8 v21, p3, 0x2

    move/from16 v0, v21

    new-array v8, v0, [B

    .line 122
    .local v8, in2:[B
    const/16 v21, 0x0

    array-length v0, v7

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    array-length v0, v7

    move/from16 v21, v0

    add-int v21, v21, p2

    const/16 v22, 0x0

    array-length v0, v8

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    new-instance v6, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v6, v0, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 126
    .local v6, gamma:Ljava/math/BigInteger;
    new-instance v18, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 128
    .local v18, phi:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v19, v0

    check-cast v19, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    .line 132
    .local v19, priv:Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;
    sget-object v21, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 135
    .local v11, m:Ljava/math/BigInteger;
    invoke-static {v11}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v15

    .line 184
    .end local v7           #in1:[B
    .end local v8           #in2:[B
    .end local v11           #m:Ljava/math/BigInteger;
    .end local v19           #priv:Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;
    :goto_1
    return-object v15

    .line 139
    .end local v6           #gamma:Ljava/math/BigInteger;
    .end local v18           #phi:Ljava/math/BigInteger;
    :cond_3
    if-nez p2, :cond_4

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, p3

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 140
    :cond_4
    move/from16 v0, p3

    new-array v4, v0, [B

    .line 142
    .local v4, block:[B
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, p3

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :goto_2
    new-instance v9, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v9, v0, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 149
    .local v9, input:Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->bitLength()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 150
    new-instance v21, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v22, "input too large for ElGamal cipher.\n"

    invoke-direct/range {v21 .. v22}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 144
    .end local v4           #block:[B
    .end local v9           #input:Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v4, p1

    .restart local v4       #block:[B
    goto :goto_2

    .line 153
    .restart local v9       #input:Ljava/math/BigInteger;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v20, v0

    check-cast v20, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    .line 155
    .local v20, pub:Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    .line 156
    .local v17, pBitLength:I
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 158
    .local v10, k:Ljava/math/BigInteger;
    :goto_3
    sget-object v21, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    sget-object v21, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-lez v21, :cond_8

    .line 159
    :cond_7
    new-instance v10, Ljava/math/BigInteger;

    .end local v10           #k:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .restart local v10       #k:Ljava/math/BigInteger;
    goto :goto_3

    .line 162
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    .line 163
    .local v5, g:Ljava/math/BigInteger;
    move-object/from16 v0, v16

    invoke-virtual {v5, v10, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 164
    .restart local v6       #gamma:Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 166
    .restart local v18       #phi:Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 167
    .local v13, out1:[B
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 168
    .local v14, out2:[B
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;->getOutputBlockSize()I

    move-result v21

    move/from16 v0, v21

    new-array v15, v0, [B

    .line 170
    .local v15, output:[B
    array-length v0, v13

    move/from16 v21, v0

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 171
    const/16 v21, 0x1

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    array-length v0, v13

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    sub-int v22, v22, v23

    array-length v0, v13

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v13, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :goto_4
    array-length v0, v14

    move/from16 v21, v0

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    .line 178
    const/16 v21, 0x1

    array-length v0, v15

    move/from16 v22, v0

    array-length v0, v14

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    sub-int v22, v22, v23

    array-length v0, v14

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v14, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 174
    :cond_9
    const/16 v21, 0x0

    array-length v0, v15

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    array-length v0, v13

    move/from16 v23, v0

    sub-int v22, v22, v23

    array-length v0, v13

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v13, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 181
    :cond_a
    const/16 v21, 0x0

    array-length v0, v15

    move/from16 v22, v0

    array-length v0, v14

    move/from16 v23, v0

    sub-int v22, v22, v23

    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v14, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method
