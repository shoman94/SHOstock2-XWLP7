.class public Lmyorg/bouncycastle/crypto/params/ElGamalParameters;
.super Ljava/lang/Object;
.source "ElGamalParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private l:I

.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .parameter "p"
    .parameter "g"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0
    .parameter "p"
    .parameter "g"
    .parameter "l"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->g:Ljava/math/BigInteger;

    .line 19
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->p:Ljava/math/BigInteger;

    .line 20
    iput p3, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->l:I

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 42
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    if-nez v2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 46
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    .line 48
    .local v0, pm:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v2

    iget v3, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->l:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->l:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->l:I

    add-int/2addr v0, v1

    return v0
.end method
