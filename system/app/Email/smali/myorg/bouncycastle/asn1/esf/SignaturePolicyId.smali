.class public Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignaturePolicyId.java"


# instance fields
.field private sigPolicyHash:Lmyorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

.field private sigPolicyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private sigPolicyQualifiers:Lmyorg/bouncycastle/asn1/esf/SigPolicyQualifiers;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 71
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lmyorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lmyorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lmyorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 76
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
