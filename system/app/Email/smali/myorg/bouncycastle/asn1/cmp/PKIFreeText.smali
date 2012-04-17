.class public Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIFreeText.java"


# instance fields
.field strings:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
