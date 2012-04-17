.class public Lmyorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "BasicOCSPResponse.java"


# instance fields
.field private certs:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private signature:Lmyorg/bouncycastle/asn1/DERBitString;

.field private signatureAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private tbsResponseData:Lmyorg/bouncycastle/asn1/ocsp/ResponseData;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 82
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lmyorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 84
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
