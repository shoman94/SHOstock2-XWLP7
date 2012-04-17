.class public Lmyorg/bouncycastle/x509/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# instance fields
.field private forward:Ljava/security/cert/X509Certificate;

.field private reverse:Ljava/security/cert/X509Certificate;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 88
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v3

    .line 91
    :cond_1
    instance-of v4, p1, Lmyorg/bouncycastle/x509/X509CertificatePair;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 94
    check-cast v2, Lmyorg/bouncycastle/x509/X509CertificatePair;

    .line 95
    .local v2, pair:Lmyorg/bouncycastle/x509/X509CertificatePair;
    const/4 v1, 0x1

    .line 96
    .local v1, equalReverse:Z
    const/4 v0, 0x1

    .line 97
    .local v0, equalForward:Z
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4

    .line 98
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    iget-object v5, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    :cond_2
    :goto_1
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_5

    .line 105
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    iget-object v5, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 100
    :cond_4
    iget-object v4, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_2

    .line 101
    const/4 v0, 0x0

    goto :goto_1

    .line 107
    :cond_5
    iget-object v4, v2, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_3

    .line 108
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 115
    const/4 v0, -0x1

    .line 116
    .local v0, hash:I
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 119
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    .line 120
    mul-int/lit8 v0, v0, 0x11

    .line 121
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 123
    :cond_1
    return v0
.end method
