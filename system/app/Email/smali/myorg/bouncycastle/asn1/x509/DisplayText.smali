.class public Lmyorg/bouncycastle/asn1/x509/DisplayText;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "DisplayText.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field contents:Lmyorg/bouncycastle/asn1/DERString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/DisplayText;->contents:Lmyorg/bouncycastle/asn1/DERString;

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
