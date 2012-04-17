.class public Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AuthEnvelopedData.java"


# instance fields
.field private authAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private authEncryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

.field private mac:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private unauthAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 163
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 165
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 169
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 170
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 173
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 176
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 179
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->mac:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 182
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2

    .line 183
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 186
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
