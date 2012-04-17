.class public Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private certificateIssuer:Ljavax/security/auth/x500/X500Principal;

.field private hashValue:I

.field private isHashValueSet:Z

.field private isIndirect:Z

.field private previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V
    .locals 1
    .parameter "c"
    .parameter "isIndirect"
    .parameter "previousCertificateIssuer"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 67
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 68
    iput-boolean p2, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    .line 69
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 70
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 71
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6
    .parameter "critical"

    .prologue
    .line 112
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 114
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 115
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 118
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 120
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 122
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    .line 123
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #set:Ljava/util/Set;
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method private loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    if-nez v5, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v4

    .line 88
    :cond_1
    sget-object v5, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 89
    .local v1, ext:[B
    if-nez v1, :cond_2

    .line 90
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0

    .line 94
    :cond_2
    :try_start_0
    invoke-static {v1}, Lmyorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 96
    .local v3, names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 97
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 98
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-interface {v6}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 96
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v2           #i:I
    .end local v3           #names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .parameter "oid"

    .prologue
    .line 142
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 144
    .local v2, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 145
    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 147
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 156
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v3

    .line 150
    .restart local v1       #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :catch_0
    move-exception v0

    .line 151
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

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 80
    .local v0, extns:Ljava/util/Set;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    if-nez v0, :cond_0

    .line 166
    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    .line 170
    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, nl:Ljava/lang/String;
    const-string v9, "      userCertificate: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v9, "       revocationDate: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v9, "       certificateIssuer: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    .line 203
    .local v5, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v5, :cond_3

    .line 204
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 205
    .local v2, e:Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 206
    const-string v9, "   crlEntryExtensions:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 209
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 210
    .local v8, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v5, v8}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    .line 211
    .local v4, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 212
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 213
    .local v7, octs:[B
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v7}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 214
    .local v1, dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    const-string v9, "                       critical("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :try_start_0
    sget-object v9, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 218
    new-instance v9, Lmyorg/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DEREnumerated;

    move-result-object v10

    invoke-direct {v9, v10}, Lmyorg/bouncycastle/asn1/x509/CRLReason;-><init>(Lmyorg/bouncycastle/asn1/DEREnumerated;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v3

    .line 231
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v9, " value = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "*****"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 221
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v9, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 222
    const-string v9, "Certificate issuer: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    new-instance v11, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v9

    check-cast v9, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v11, v9}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 226
    :cond_1
    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v9, " value = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 235
    .end local v1           #dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v7           #octs:[B
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 241
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v8           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
