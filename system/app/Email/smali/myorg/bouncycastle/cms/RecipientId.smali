.class public Lmyorg/bouncycastle/cms/RecipientId;
.super Ljava/security/cert/X509CertSelector;
.source "RecipientId.java"


# instance fields
.field keyIdentifier:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 43
    instance-of v2, p1, Lmyorg/bouncycastle/cms/RecipientId;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 47
    check-cast v0, Lmyorg/bouncycastle/cms/RecipientId;

    .line 49
    .local v0, id:Lmyorg/bouncycastle/cms/RecipientId;
    iget-object v2, p0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    iget-object v3, v0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    invoke-static {v2, v3}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/RecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/RecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/cms/RecipientId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/RecipientId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/cms/RecipientId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 27
    iget-object v3, p0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    invoke-static {v3}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v4

    xor-int v0, v3, v4

    .line 29
    .local v0, code:I
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 30
    .local v2, serialNumber:Ljava/math/BigInteger;
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 34
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, issuer:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 39
    :cond_1
    return v0
.end method

.method public setKeyIdentifier([B)V
    .locals 0
    .parameter "keyIdentifier"

    .prologue
    .line 16
    iput-object p1, p0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    .line 17
    return-void
.end method
