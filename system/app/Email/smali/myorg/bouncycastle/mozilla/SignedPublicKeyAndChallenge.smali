.class public Lmyorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignedPublicKeyAndChallenge.java"


# instance fields
.field private spkacSeq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
