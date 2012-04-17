.class public Lmyorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "POPODecKeyRespContent.java"


# instance fields
.field private content:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;->content:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
