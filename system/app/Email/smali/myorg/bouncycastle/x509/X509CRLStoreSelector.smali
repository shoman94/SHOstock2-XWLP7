.class public Lmyorg/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field private attrCertChecking:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 25
    iput-boolean v0, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 27
    iput-boolean v0, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 29
    iput-object v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 31
    iput-object v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 33
    iput-boolean v0, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CRLSelector;)Lmyorg/bouncycastle/x509/X509CRLStoreSelector;
    .locals 4
    .parameter "selector"

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot create from null selector"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 175
    .local v0, cs:Lmyorg/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 176
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 178
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    .line 184
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 185
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 186
    return-object v0

    .line 179
    :catch_0
    move-exception v1

    .line 181
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 190
    invoke-static {p0}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lmyorg/bouncycastle/x509/X509CRLStoreSelector;

    move-result-object v0

    .line 191
    .local v0, sel:Lmyorg/bouncycastle/x509/X509CRLStoreSelector;
    iget-boolean v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 192
    iget-boolean v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 193
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 194
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .line 195
    iget-boolean v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 196
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 197
    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 86
    instance-of v6, p1, Ljava/security/cert/X509CRL;

    if-nez v6, :cond_1

    .line 130
    .end local p1
    :cond_0
    :goto_0
    return v5

    .restart local p1
    :cond_1
    move-object v1, p1

    .line 89
    check-cast v1, Ljava/security/cert/X509CRL;

    .line 90
    .local v1, crl:Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    .line 92
    .local v2, dci:Lmyorg/bouncycastle/asn1/DERInteger;
    :try_start_0
    sget-object v6, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    .local v0, bytes:[B
    if-eqz v0, :cond_2

    .line 94
    invoke-static {v0}, Lmyorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    if-eqz v2, :cond_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    if-nez v2, :cond_0

    .line 109
    :cond_4
    if-eqz v2, :cond_5

    .line 111
    iget-object v6, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v6, :cond_5

    .line 112
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 117
    :cond_5
    iget-boolean v6, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v6, :cond_6

    .line 118
    sget-object v6, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 119
    .local v4, idp:[B
    iget-object v6, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v6, :cond_7

    .line 120
    if-nez v4, :cond_0

    .line 130
    .end local v4           #idp:[B
    :cond_6
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1
    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    goto :goto_0

    .line 96
    .end local v0           #bytes:[B
    .restart local p1
    :catch_0
    move-exception v3

    .line 97
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0

    .line 124
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bytes:[B
    .restart local v4       #idp:[B
    :cond_7
    iget-object v6, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v4, v6}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 1
    .parameter "crl"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttrCertificateChecking(Lmyorg/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0
    .parameter "attrCert"

    .prologue
    .line 72
    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .line 73
    return-void
.end method

.method public setCompleteCRLEnabled(Z)V
    .locals 0
    .parameter "completeCRLEnabled"

    .prologue
    .line 220
    iput-boolean p1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 221
    return-void
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1
    .parameter "issuingDistributionPoint"

    .prologue
    .line 282
    invoke-static {p1}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 283
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0
    .parameter "issuingDistributionPointEnabled"

    .prologue
    .line 57
    iput-boolean p1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 58
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .parameter "maxBaseCRLNumber"

    .prologue
    .line 244
    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 245
    return-void
.end method
