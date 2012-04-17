.class public Lmyorg/bouncycastle/asn1/crmf/POPOPrivKey;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "POPOPrivKey.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private obj:Lmyorg/bouncycastle/asn1/DERObject;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
