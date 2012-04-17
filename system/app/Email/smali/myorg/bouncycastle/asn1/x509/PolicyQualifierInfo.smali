.class public Lmyorg/bouncycastle/asn1/x509/PolicyQualifierInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PolicyQualifierInfo.java"


# instance fields
.field private policyQualifierId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private qualifier:Lmyorg/bouncycastle/asn1/DEREncodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 89
    .local v0, dev:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 90
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 92
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
