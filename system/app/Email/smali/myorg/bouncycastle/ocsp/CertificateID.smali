.class public Lmyorg/bouncycastle/ocsp/CertificateID;
.super Ljava/lang/Object;
.source "CertificateID.java"


# instance fields
.field private final id:Lmyorg/bouncycastle/asn1/ocsp/CertID;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 90
    instance-of v1, p1, Lmyorg/bouncycastle/ocsp/CertificateID;

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 94
    check-cast v0, Lmyorg/bouncycastle/ocsp/CertificateID;

    .line 96
    .local v0, obj:Lmyorg/bouncycastle/ocsp/CertificateID;
    iget-object v1, p0, Lmyorg/bouncycastle/ocsp/CertificateID;->id:Lmyorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ocsp/CertID;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    iget-object v2, v0, Lmyorg/bouncycastle/ocsp/CertificateID;->id:Lmyorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ocsp/CertID;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmyorg/bouncycastle/ocsp/CertificateID;->id:Lmyorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ocsp/CertID;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v0

    return v0
.end method
