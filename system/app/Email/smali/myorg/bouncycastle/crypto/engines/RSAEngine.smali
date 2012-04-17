.class public Lmyorg/bouncycastle/crypto/engines/RSAEngine;
.super Ljava/lang/Object;
.source "RSAEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 21
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    .line 25
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 26
    return-void
.end method

.method public processBlock([BII)[B
    .locals 3
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 60
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/RSAEngine;->core:Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v2, p1, p2, p3}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method
