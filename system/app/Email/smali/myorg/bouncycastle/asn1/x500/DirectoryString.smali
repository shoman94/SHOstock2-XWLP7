.class public Lmyorg/bouncycastle/asn1/x500/DirectoryString;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "DirectoryString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field private string:Lmyorg/bouncycastle/asn1/DERString;


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x500/DirectoryString;->string:Lmyorg/bouncycastle/asn1/DERString;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x500/DirectoryString;->string:Lmyorg/bouncycastle/asn1/DERString;

    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x500/DirectoryString;->string:Lmyorg/bouncycastle/asn1/DERString;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
