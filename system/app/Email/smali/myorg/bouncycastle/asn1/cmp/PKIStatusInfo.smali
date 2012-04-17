.class public Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIStatusInfo.java"


# instance fields
.field failInfo:Lmyorg/bouncycastle/asn1/DERBitString;

.field status:Lmyorg/bouncycastle/asn1/DERInteger;

.field statusString:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 123
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lmyorg/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 131
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
