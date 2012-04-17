.class public Lmyorg/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateObject.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private basicConstraints:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

.field private c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

.field private hashValue:I

.field private hashValueSet:Z

.field private keyUsage:[Z


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;)V
    .locals 9
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    .line 66
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 64
    new-instance v6, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v6}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v6, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 67
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    .line 70
    :try_start_0
    const-string v6, "2.5.29.19"

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 72
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    .line 73
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v6

    iput-object v6, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :try_start_1
    const-string v6, "2.5.29.15"

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    .line 84
    .local v0, bits:Lmyorg/bouncycastle/asn1/DERBitString;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 85
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v7

    sub-int v4, v6, v7

    .line 87
    .local v4, length:I
    if-ge v4, v5, :cond_1

    :goto_0
    new-array v5, v5, [Z

    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    .line 89
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eq v3, v4, :cond_4

    .line 90
    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    div-int/lit8 v5, v3, 0x8

    aget-byte v5, v1, v5

    const/16 v7, 0x80

    rem-int/lit8 v8, v3, 0x8

    ushr-int/2addr v7, v8

    and-int/2addr v5, v7

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    aput-boolean v5, v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    .end local v0           #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    .end local v1           #bytes:[B
    .end local v3           #i:I
    .end local v4           #length:I
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot construct BasicConstraints: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    .restart local v1       #bytes:[B
    .restart local v4       #length:I
    :cond_1
    move v5, v4

    .line 87
    goto :goto_0

    .line 90
    .restart local v3       #i:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 93
    .end local v0           #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    .end local v3           #i:I
    .end local v4           #length:I
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    :cond_4
    return-void

    .line 95
    :catch_1
    move-exception v2

    .line 96
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot construct KeyUsage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private calculateHashCode()I
    .locals 2

    .prologue
    .line 466
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 468
    :goto_0
    return v1

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 3
    .parameter "key"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSignature()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 596
    .local v0, params:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-static {p2, v0}, Lmyorg/bouncycastle/jce/provider/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 598
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 600
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->update([B)V

    .line 602
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Public key presented not for certificate signature"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    :cond_1
    return-void
.end method

.method private getExtensionBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "oid"

    .prologue
    .line 331
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    .line 333
    .local v1, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v1, :cond_0

    .line 334
    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v0

    .line 335
    .local v0, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 340
    .end local v0           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    .line 102
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getEndDate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 114
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getStartDate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 435
    if-ne p1, p0, :cond_1

    .line 436
    const/4 v4, 0x1

    .line 451
    :cond_0
    :goto_0
    return v4

    .line 439
    :cond_1
    instance-of v5, p1, Ljava/security/cert/Certificate;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 443
    check-cast v3, Ljava/security/cert/Certificate;

    .line 446
    .local v3, other:Ljava/security/cert/Certificate;
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v0

    .line 447
    .local v0, b1:[B
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 449
    .local v1, b2:[B
    invoke-static {v0, v1}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 450
    .end local v0           #b1:[B
    .end local v1           #b2:[B
    :catch_0
    move-exception v2

    .line 451
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    goto :goto_0
.end method

.method public getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "oid"

    .prologue
    .line 477
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 291
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 294
    const v0, 0x7fffffff

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7

    .prologue
    .line 307
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 308
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 309
    .local v4, set:Ljava/util/Set;
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 311
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 314
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 315
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 316
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 318
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #set:Ljava/util/Set;
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v6, "2.5.29.37"

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 270
    .local v0, bytes:[B
    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 273
    .local v1, dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 274
    .local v5, seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v4, list:Ljava/util/List;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 277
    invoke-virtual {v5, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 287
    .end local v1           #dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;
    .end local v5           #seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :goto_1
    return-object v6

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    const-string v7, "error processing extended key usage extension"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .parameter "oid"

    .prologue
    .line 344
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 346
    .local v2, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 347
    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 349
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 358
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v3

    .line 352
    .restart local v1       #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lmyorg/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/X509Principal;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 7

    .prologue
    .line 230
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuerUniqueId()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 232
    .local v3, id:Lmyorg/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 234
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 236
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 237
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    aput-boolean v4, v0, v2

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 243
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    .prologue
    .line 133
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 139
    .end local v0           #aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 140
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getKeyUsage()[Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7

    .prologue
    .line 362
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 363
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v4, set:Ljava/util/Set;
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 366
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 369
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 371
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 373
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_0

    .line 374
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #set:Ljava/util/Set;
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getEndDate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getStartDate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubjectPublicKeyInfo()Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromPublicKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 186
    const-string v4, "myBC"

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 188
    .local v2, prov:Ljava/security/Provider;
    if-eqz v2, :cond_1

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 208
    .end local v0           #algName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 201
    .local v3, provs:[Ljava/security/Provider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-eq v1, v4, :cond_2

    .line 202
    aget-object v4, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias.Signature."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0       #algName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v0           #algName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignature()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lmyorg/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubject()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/X509Principal;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 7

    .prologue
    .line 247
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectUniqueId()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 249
    .local v3, id:Lmyorg/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 251
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 253
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 254
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    aput-boolean v4, v0, v2

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 260
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubject()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 155
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 156
    .end local v0           #aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 157
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTBSCertificate()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 7

    .prologue
    .line 386
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 387
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 389
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 390
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 392
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 394
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, oidId:Ljava/lang/String;
    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 410
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 412
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    const/4 v5, 0x1

    .line 419
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #oidId:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    .line 461
    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 473
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 474
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x14

    .line 485
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 486
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, nl:Ljava/lang/String;
    const-string v11, "  [0]         Version: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v11, "         SerialNumber: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    const-string v11, "             IssuerDN: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const-string v11, "           Start Date: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v11, "           Final Date: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    const-string v11, "            SubjectDN: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    const-string v11, "           Public Key: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    const-string v11, "  Signature Algorithm: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v10

    .line 499
    .local v10, sig:[B
    const-string v11, "            Signature: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v13, v14}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const/16 v6, 0x14

    .local v6, i:I
    :goto_0
    array-length v11, v10

    if-ge v6, v11, :cond_1

    .line 501
    array-length v11, v10

    add-int/lit8 v11, v11, -0x14

    if-ge v6, v11, :cond_0

    .line 502
    const-string v11, "                       "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-static {v10, v6, v14}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    :goto_1
    add-int/lit8 v6, v6, 0x14

    goto :goto_0

    .line 505
    :cond_0
    const-string v11, "                       "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    array-length v13, v10

    sub-int/2addr v13, v6

    invoke-static {v10, v6, v13}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 510
    :cond_1
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    .line 512
    .local v5, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v5, :cond_9

    .line 513
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 515
    .local v2, e:Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 516
    const-string v11, "       Extensions: \n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 520
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 521
    .local v9, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v5, v9}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    .line 523
    .local v4, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 524
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 525
    .local v8, octs:[B
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v8}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 526
    .local v1, dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    const-string v11, "                       critical("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ") "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :try_start_0
    sget-object v11, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 530
    new-instance v12, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v12, v11}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 549
    :catch_0
    move-exception v3

    .line 550
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    const-string v11, " value = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "*****"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 532
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v11, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 533
    new-instance v12, Lmyorg/bouncycastle/asn1/x509/KeyUsage;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v12, v11}, Lmyorg/bouncycastle/asn1/x509/KeyUsage;-><init>(Lmyorg/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 534
    :cond_4
    sget-object v11, Lmyorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 535
    new-instance v12, Lmyorg/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v12, v11}, Lmyorg/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lmyorg/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 537
    :cond_5
    sget-object v11, Lmyorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 538
    new-instance v12, Lmyorg/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v12, v11}, Lmyorg/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lmyorg/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 540
    :cond_6
    sget-object v11, Lmyorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 541
    new-instance v12, Lmyorg/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v12, v11}, Lmyorg/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lmyorg/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 544
    :cond_7
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    const-string v11, " value = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v12

    invoke-static {v12}, Lmyorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 556
    .end local v1           #dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v8           #octs:[B
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 561
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v9           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, sigName:Ljava/lang/String;
    :try_start_0
    const-string v3, "myBC"

    invoke-static {v1, v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 575
    .local v2, signature:Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 576
    return-void

    .line 571
    .end local v2           #signature:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .restart local v2       #signature:Ljava/security/Signature;
    goto :goto_0
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, sigName:Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 584
    .local v1, signature:Ljava/security/Signature;
    invoke-direct {p0, p1, v1}, Lmyorg/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 585
    return-void
.end method
