.class public Lmyorg/bouncycastle/asn1/ocsp/Request;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Request.java"


# instance fields
.field reqCert:Lmyorg/bouncycastle/asn1/ocsp/CertID;

.field singleRequestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;


# virtual methods
.method public getSingleRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    .line 63
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 65
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lmyorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 67
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 71
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
