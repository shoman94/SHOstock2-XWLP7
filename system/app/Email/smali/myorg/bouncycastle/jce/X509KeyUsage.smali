.class public Lmyorg/bouncycastle/jce/X509KeyUsage;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X509KeyUsage.java"


# instance fields
.field private usage:I


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyUsage;

    iget v1, p0, Lmyorg/bouncycastle/jce/X509KeyUsage;->usage:I

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    return-object v0
.end method
