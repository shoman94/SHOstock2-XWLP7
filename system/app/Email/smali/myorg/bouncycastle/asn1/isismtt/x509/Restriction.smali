.class public Lmyorg/bouncycastle/asn1/isismtt/x509/Restriction;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Restriction.java"


# instance fields
.field private restriction:Lmyorg/bouncycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
