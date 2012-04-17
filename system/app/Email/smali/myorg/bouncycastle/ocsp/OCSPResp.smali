.class public Lmyorg/bouncycastle/ocsp/OCSPResp;
.super Ljava/lang/Object;
.source "OCSPResp.java"


# instance fields
.field private resp:Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 76
    if-ne p1, p0, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 86
    :goto_0
    return v1

    .line 80
    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/ocsp/OCSPResp;

    if-nez v1, :cond_1

    .line 81
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 84
    check-cast v0, Lmyorg/bouncycastle/ocsp/OCSPResp;

    .line 86
    .local v0, r:Lmyorg/bouncycastle/ocsp/OCSPResp;
    iget-object v1, p0, Lmyorg/bouncycastle/ocsp/OCSPResp;->resp:Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;

    iget-object v2, v0, Lmyorg/bouncycastle/ocsp/OCSPResp;->resp:Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmyorg/bouncycastle/ocsp/OCSPResp;->resp:Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method
