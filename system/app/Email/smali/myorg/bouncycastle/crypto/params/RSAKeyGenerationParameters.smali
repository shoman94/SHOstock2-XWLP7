.class public Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;
.super Lmyorg/bouncycastle/crypto/KeyGenerationParameters;
.source "RSAKeyGenerationParameters.java"


# instance fields
.field private certainty:I

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .locals 2
    .parameter "publicExponent"
    .parameter "random"
    .parameter "strength"
    .parameter "certainty"

    .prologue
    .line 15
    invoke-direct {p0, p2, p3}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 17
    const/16 v0, 0xc

    if-ge p3, v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key strength too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "public exponent cannot be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    .line 29
    iput p4, p0, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    .line 30
    return-void
.end method


# virtual methods
.method public getCertainty()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
