.class public Lmyorg/bouncycastle/asn1/x509/NoticeReference;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "NoticeReference.java"


# instance fields
.field private noticeNumbers:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private organization:Lmyorg/bouncycastle/asn1/x509/DisplayText;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v0, av:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lmyorg/bouncycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 126
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
