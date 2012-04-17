.class public Lmyorg/bouncycastle/asn1/ess/ContentIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ContentIdentifier.java"


# instance fields
.field value:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ess/ContentIdentifier;->value:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
