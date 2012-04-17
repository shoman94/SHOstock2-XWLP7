.class public Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;
.super Lmyorg/bouncycastle/crypto/KeyGenerationParameters;
.source "DHKeyGenerationParameters.java"


# instance fields
.field private params:Lmyorg/bouncycastle/crypto/params/DHParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 1
    .parameter "random"
    .parameter "params"

    .prologue
    .line 12
    invoke-static {p2}, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->getStrength(Lmyorg/bouncycastle/crypto/params/DHParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 14
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    .line 15
    return-void
.end method

.method static getStrength(Lmyorg/bouncycastle/crypto/params/DHParameters;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 22
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method
