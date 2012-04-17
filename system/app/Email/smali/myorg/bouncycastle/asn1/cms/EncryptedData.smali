.class public Lmyorg/bouncycastle/asn1/cms/EncryptedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EncryptedData.java"


# instance fields
.field private encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

.field private unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedData;->encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 76
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 80
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
