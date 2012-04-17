.class public Lmyorg/bouncycastle/asn1/cmp/PKIConfirmContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIConfirmContent.java"


# instance fields
.field private val:Lmyorg/bouncycastle/asn1/ASN1Null;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lmyorg/bouncycastle/asn1/ASN1Null;

    return-object v0
.end method
