.class public Lmyorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SigPolicyQualifiers.java"


# instance fields
.field qualifiers:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
