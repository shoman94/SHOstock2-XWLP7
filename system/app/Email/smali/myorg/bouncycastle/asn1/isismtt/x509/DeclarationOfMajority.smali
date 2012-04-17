.class public Lmyorg/bouncycastle/asn1/isismtt/x509/DeclarationOfMajority;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "DeclarationOfMajority.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private declaration:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/DeclarationOfMajority;->declaration:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0
.end method
