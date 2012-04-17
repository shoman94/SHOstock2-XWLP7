.class public Lmyorg/bouncycastle/crypto/params/DHKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private params:Lmyorg/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLmyorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 0
    .parameter "isPrivate"
    .parameter "params"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 10
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 18
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;

    if-nez v2, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 22
    check-cast v0, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;

    .line 24
    .local v0, dhKey:Lmyorg/bouncycastle/crypto/params/DHKeyParameters;
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_2

    .line 25
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 27
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 34
    .local v0, code:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DHKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 38
    :cond_0
    return v0

    .line 32
    .end local v0           #code:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
