.class public Lmyorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PublicKeyAndChallenge.java"


# instance fields
.field private pkacSeq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->pkacSeq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
