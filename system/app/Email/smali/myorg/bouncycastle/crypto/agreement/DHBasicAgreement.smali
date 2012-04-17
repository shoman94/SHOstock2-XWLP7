.class public Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private dhParams:Lmyorg/bouncycastle/crypto/params/DHParameters;

.field private key:Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4
    .parameter "pubKey"

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 50
    .local v0, pub:Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 28
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 29
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 30
    .local v1, rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 35
    .end local v1           #rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .local v0, kParam:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    instance-of v2, v0, Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v2, :cond_1

    .line 36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #kParam:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p1

    .line 32
    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0       #kParam:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 39
    :cond_1
    check-cast v0, Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .end local v0           #kParam:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 40
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lmyorg/bouncycastle/crypto/params/DHParameters;

    .line 41
    return-void
.end method
