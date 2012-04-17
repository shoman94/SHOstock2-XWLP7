.class public Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OCSPRequest.java"


# instance fields
.field optionalSignature:Lmyorg/bouncycastle/asn1/ocsp/Signature;

.field tbsRequest:Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;


# virtual methods
.method public getTbsRequest()Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    .line 61
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 65
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lmyorg/bouncycastle/asn1/ocsp/Signature;

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lmyorg/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 69
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
