.class public Lmyorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AdditionalInformationSyntax.java"


# instance fields
.field private information:Lmyorg/bouncycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
