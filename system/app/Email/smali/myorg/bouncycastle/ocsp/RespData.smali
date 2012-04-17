.class public Lmyorg/bouncycastle/ocsp/RespData;
.super Ljava/lang/Object;
.source "RespData.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field data:Lmyorg/bouncycastle/asn1/ocsp/ResponseData;


# direct methods
.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6
    .parameter "critical"

    .prologue
    .line 72
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v4, set:Ljava/util/Set;
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/RespData;->getResponseExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 75
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 78
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 80
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 82
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    .line 83
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
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
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/ocsp/RespData;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .parameter "oid"

    .prologue
    .line 100
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/RespData;->getResponseExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 102
    .local v2, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 103
    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 105
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 114
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v3

    .line 108
    .restart local v1       #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :catch_0
    move-exception v0

    .line 109
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

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/ocsp/RespData;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getResponseExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmyorg/bouncycastle/ocsp/RespData;->data:Lmyorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/RespData;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 64
    .local v0, extns:Ljava/util/Set;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
