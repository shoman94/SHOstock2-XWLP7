.class public Lmyorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ExtendedKeyUsage.java"


# instance fields
.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
