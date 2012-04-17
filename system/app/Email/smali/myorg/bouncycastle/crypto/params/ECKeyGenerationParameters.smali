.class public Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;
.super Lmyorg/bouncycastle/crypto/KeyGenerationParameters;
.source "ECKeyGenerationParameters.java"


# instance fields
.field private domainParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .parameter "domainParams"
    .parameter "random"

    .prologue
    .line 12
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 14
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getDomainParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
