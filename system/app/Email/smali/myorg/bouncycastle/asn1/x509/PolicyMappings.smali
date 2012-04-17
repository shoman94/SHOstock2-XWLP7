.class public Lmyorg/bouncycastle/asn1/x509/PolicyMappings;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PolicyMappings.java"


# instance fields
.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
