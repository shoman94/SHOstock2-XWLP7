.class public Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;
.source "ElGamalPrivateKeyParameters.java"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .locals 1
    .parameter "x"
    .parameter "params"

    .prologue
    .line 10
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    .line 12
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->x:Ljava/math/BigInteger;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 20
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-nez v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 24
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    .line 26
    .local v0, pKey:Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-super {p0, p1}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
