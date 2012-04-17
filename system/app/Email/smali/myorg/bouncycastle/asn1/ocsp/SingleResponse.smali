.class public Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SingleResponse.java"


# instance fields
.field private certID:Lmyorg/bouncycastle/asn1/ocsp/CertID;

.field private certStatus:Lmyorg/bouncycastle/asn1/ocsp/CertStatus;

.field private nextUpdate:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private singleExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field private thisUpdate:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;


# virtual methods
.method public getSingleExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lmyorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 101
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lmyorg/bouncycastle/asn1/ocsp/CertStatus;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 102
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 104
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_1

    .line 109
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 112
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
