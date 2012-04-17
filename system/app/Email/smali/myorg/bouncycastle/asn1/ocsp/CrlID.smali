.class public Lmyorg/bouncycastle/asn1/ocsp/CrlID;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CrlID.java"


# instance fields
.field crlNum:Lmyorg/bouncycastle/asn1/DERInteger;

.field crlTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field crlUrl:Lmyorg/bouncycastle/asn1/DERIA5String;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 60
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lmyorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lmyorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 64
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    .line 65
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 68
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_2

    .line 69
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
