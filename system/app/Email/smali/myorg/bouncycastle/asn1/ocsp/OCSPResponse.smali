.class public Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OCSPResponse.java"


# instance fields
.field responseBytes:Lmyorg/bouncycastle/asn1/ocsp/ResponseBytes;

.field responseStatus:Lmyorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    .line 62
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 64
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lmyorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 66
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lmyorg/bouncycastle/asn1/ocsp/ResponseBytes;

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lmyorg/bouncycastle/asn1/ocsp/ResponseBytes;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 70
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
