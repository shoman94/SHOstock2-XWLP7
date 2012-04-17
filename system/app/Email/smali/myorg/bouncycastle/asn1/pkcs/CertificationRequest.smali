.class public Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertificationRequest.java"


# instance fields
.field protected reqInfo:Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

.field protected sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected sigBits:Lmyorg/bouncycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 25
    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 41
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 72
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 74
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 76
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
