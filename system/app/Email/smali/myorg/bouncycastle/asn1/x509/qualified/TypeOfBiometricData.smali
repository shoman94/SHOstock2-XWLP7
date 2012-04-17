.class public Lmyorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TypeOfBiometricData.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field obj:Lmyorg/bouncycastle/asn1/DEREncodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
