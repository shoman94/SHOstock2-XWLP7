.class public Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIndication;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CommitmentTypeIndication.java"


# instance fields
.field private commitmentTypeId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private commitmentTypeQualifier:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 60
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 62
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 66
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
