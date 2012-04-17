.class public Lmyorg/bouncycastle/ocsp/Req;
.super Ljava/lang/Object;
.source "Req.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field private req:Lmyorg/bouncycastle/asn1/ocsp/Request;


# direct methods
.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6
    .parameter "critical"

    .prologue
    .line 45
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 46
    .local v4, set:Ljava/util/Set;
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/Req;->getSingleRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 48
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 51
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 53
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 55
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    .line 56
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/ocsp/Req;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .parameter "oid"

    .prologue
    .line 73
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/Req;->getSingleRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 75
    .local v2, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 76
    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 78
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 87
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v3

    .line 81
    .restart local v1       #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/ocsp/Req;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSingleRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/ocsp/Req;->req:Lmyorg/bouncycastle/asn1/ocsp/Request;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ocsp/Request;->getSingleRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/Req;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 37
    .local v0, extns:Ljava/util/Set;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const/4 v1, 0x1

    .line 41
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
