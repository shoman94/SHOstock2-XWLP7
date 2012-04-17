.class public Lmyorg/bouncycastle/asn1/cmp/CertResponse;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertResponse.java"


# instance fields
.field private certReqId:Lmyorg/bouncycastle/asn1/DERInteger;

.field private certifiedKeyPair:Lmyorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

.field private rspInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private status:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 82
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CertResponse;->certReqId:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CertResponse;->status:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lmyorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lmyorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CertResponse;->rspInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CertResponse;->rspInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 93
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
