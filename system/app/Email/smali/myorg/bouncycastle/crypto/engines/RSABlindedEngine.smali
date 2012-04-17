.class public Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;
.super Ljava/lang/Object;
.source "RSABlindedEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static ONE:Ljava/math/BigInteger;


# instance fields
.field private core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

.field private key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 32
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v1, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 34
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 35
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 37
    .local v0, rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 38
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    .line 43
    .end local v0           #rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_0
    return-void

    .line 40
    .restart local p2
    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 41
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 12
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 77
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-nez v9, :cond_0

    .line 78
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "RSA engine not initialised"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 81
    :cond_0
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v9, p1, p2, p3}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object v3

    .line 84
    .local v3, input:Ljava/math/BigInteger;
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v9, v9, Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v9, :cond_2

    .line 85
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    check-cast v4, Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 87
    .local v4, k:Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 88
    .local v2, e:Ljava/math/BigInteger;
    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    .line 91
    .local v5, m:Ljava/math/BigInteger;
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    sget-object v10, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    invoke-static {v9, v10, v11}, Lmyorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 93
    .local v6, r:Ljava/math/BigInteger;
    invoke-virtual {v6, v2, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 94
    .local v0, blindedInput:Ljava/math/BigInteger;
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v9, v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 96
    .local v1, blindedResult:Ljava/math/BigInteger;
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 97
    .local v7, rInv:Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 105
    .end local v0           #blindedInput:Ljava/math/BigInteger;
    .end local v1           #blindedResult:Ljava/math/BigInteger;
    .end local v2           #e:Ljava/math/BigInteger;
    .end local v4           #k:Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v5           #m:Ljava/math/BigInteger;
    .end local v6           #r:Ljava/math/BigInteger;
    .end local v7           #rInv:Ljava/math/BigInteger;
    .local v8, result:Ljava/math/BigInteger;
    :goto_0
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v9, v8}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object v9

    return-object v9

    .line 99
    .end local v8           #result:Ljava/math/BigInteger;
    .restart local v2       #e:Ljava/math/BigInteger;
    .restart local v4       #k:Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    :cond_1
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v9, v3}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .restart local v8       #result:Ljava/math/BigInteger;
    goto :goto_0

    .line 102
    .end local v2           #e:Ljava/math/BigInteger;
    .end local v4           #k:Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v8           #result:Ljava/math/BigInteger;
    :cond_2
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v9, v3}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .restart local v8       #result:Ljava/math/BigInteger;
    goto :goto_0
.end method
