.class public Lmyorg/bouncycastle/asn1/cmp/GenMsgContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "GenMsgContent.java"


# instance fields
.field private content:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/GenMsgContent;->content:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
