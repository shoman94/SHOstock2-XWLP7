.class public Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AttributeCertificate.java"


# instance fields
.field acinfo:Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

.field signatureAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field signatureValue:Lmyorg/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    .line 37
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 38
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 45
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;
    .locals 3
    .parameter "obj"

    .prologue
    .line 21
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    .line 24
    .end local p0
    :goto_0
    return-object p0

    .line 23
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 27
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
.method public getAcinfo()Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lmyorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 74
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 77
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
