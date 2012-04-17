.class public Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "InfoTypeAndValue.java"


# instance fields
.field private infoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private infoValue:Lmyorg/bouncycastle/asn1/ASN1Encodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 102
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 106
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
