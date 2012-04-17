.class public Lmyorg/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private j:Ljava/math/BigInteger;

.field private l:I

.field private m:I

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lmyorg/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .parameter "p"
    .parameter "g"

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 8
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "l"

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-static {p4}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V
    .locals 2
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "m"
    .parameter "l"
    .parameter "j"
    .parameter "validation"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p5, :cond_1

    .line 52
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-lt p5, v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it must be less than bitlength(p)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-ge p5, p4, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it may not be less than m value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 63
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 64
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 65
    iput p4, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->m:I

    .line 66
    iput p5, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->l:I

    .line 67
    iput-object p6, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 68
    iput-object p7, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->validation:Lmyorg/bouncycastle/crypto/params/DHValidationParameters;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V
    .locals 8
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "j"
    .parameter "validation"

    .prologue
    .line 46
    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 47
    return-void
.end method

.method private static getDefaultMParam(I)I
    .locals 1
    .parameter "lParam"

    .prologue
    const/16 v0, 0xa0

    .line 21
    if-nez p0, :cond_0

    .line 25
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    if-ge p0, v0, :cond_1

    .end local p0
    :goto_1
    move v0, p0

    goto :goto_0

    .restart local p0
    :cond_1
    move p0, v0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 115
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 119
    check-cast v0, Lmyorg/bouncycastle/crypto/params/DHParameters;

    .line 121
    .local v0, pm:Lmyorg/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    :cond_2
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->l:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->m:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
