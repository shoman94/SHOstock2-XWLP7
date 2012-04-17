.class public Lmyorg/bouncycastle/asn1/crmf/CertTemplate;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertTemplate.java"


# instance fields
.field private extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field private issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

.field private issuerUID:Lmyorg/bouncycastle/asn1/DERBitString;

.field private publicKey:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

.field private signingAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private subject:Lmyorg/bouncycastle/asn1/x509/X509Name;

.field private subjectUID:Lmyorg/bouncycastle/asn1/DERBitString;

.field private validity:Lmyorg/bouncycastle/asn1/crmf/OptionalValidity;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .parameter "v"
    .parameter "tagNo"
    .parameter "isExplicit"
    .parameter "obj"

    .prologue
    .line 121
    if-eqz p4, :cond_0

    .line 122
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {p0, v0, v3, v3, v1}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 107
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {p0, v0, v4, v3, v1}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    const/4 v1, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->signingAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v3, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-direct {p0, v0, v1, v4, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    const/4 v1, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->validity:Lmyorg/bouncycastle/asn1/crmf/OptionalValidity;

    invoke-direct {p0, v0, v1, v3, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 111
    const/4 v1, 0x5

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->subject:Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-direct {p0, v0, v1, v4, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    const/4 v1, 0x6

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->publicKey:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v0, v1, v3, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    const/4 v1, 0x7

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->issuerUID:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v3, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    const/16 v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->subjectUID:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v3, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    const/16 v1, 0x9

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {p0, v0, v1, v3, v2}, Lmyorg/bouncycastle/asn1/crmf/CertTemplate;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;IZLmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
