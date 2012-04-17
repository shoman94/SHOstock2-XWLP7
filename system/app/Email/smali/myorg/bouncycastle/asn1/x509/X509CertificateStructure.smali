.class public Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X509CertificateStructure.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field sig:Lmyorg/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 49
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 50
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 55
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 63
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;
    .locals 3
    .parameter "obj"

    .prologue
    .line 35
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    .line 38
    .end local p0
    :goto_0
    return-object p0

    .line 37
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 41
    .restart local p0
    :cond_1
    if-eqz p0, :cond_2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEndDate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getEndDate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getStartDate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
