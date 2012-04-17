.class public Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;
.super Lmyorg/bouncycastle/crypto/KeyGenerationParameters;
.source "ElGamalKeyGenerationParameters.java"


# instance fields
.field private params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .locals 1
    .parameter "random"
    .parameter "params"

    .prologue
    .line 12
    invoke-static {p2}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->getStrength(Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 14
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    .line 15
    return-void
.end method

.method static getStrength(Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 22
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    return-object v0
.end method
