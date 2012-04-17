.class public Lmyorg/bouncycastle/asn1/x509/CertificateList;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertificateList.java"


# instance fields
.field sig:Lmyorg/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 44
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->sig:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for CertificateList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/CertificateList;
    .locals 3
    .parameter "obj"

    .prologue
    .line 35
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;

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
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/CertificateList;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/CertificateList;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 41
    .restart local p0
    :cond_1
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
.end method


# virtual methods
.method public getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificates()[Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->sig:Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getTBSCertList()Lmyorg/bouncycastle/asn1/x509/TBSCertList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    return-object v0
.end method

.method public getThisUpdate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getVersion()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 94
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 95
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/CertificateList;->sig:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 97
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
