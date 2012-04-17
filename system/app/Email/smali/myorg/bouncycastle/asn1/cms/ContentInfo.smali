.class public Lmyorg/bouncycastle/asn1/cms/ContentInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ContentInfo.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;


# instance fields
.field private content:Lmyorg/bouncycastle/asn1/DEREncodable;

.field private contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 30
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 31
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 33
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 35
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->content:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 38
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 3
    .parameter "obj"

    .prologue
    .line 21
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    .line 24
    .end local p0
    :goto_0
    return-object p0

    .line 23
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 27
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getContent()Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->content:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 68
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->content:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->content:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
