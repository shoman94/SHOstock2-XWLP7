.class public Lmyorg/bouncycastle/asn1/cmp/ProtectedPart;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ProtectedPart.java"


# instance fields
.field private body:Lmyorg/bouncycastle/asn1/cmp/PKIBody;

.field private header:Lmyorg/bouncycastle/asn1/cmp/PKIHeader;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 52
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/ProtectedPart;->header:Lmyorg/bouncycastle/asn1/cmp/PKIHeader;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 53
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/ProtectedPart;->body:Lmyorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 55
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
