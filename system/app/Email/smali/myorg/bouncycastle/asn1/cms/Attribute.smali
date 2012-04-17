.class public Lmyorg/bouncycastle/asn1/cms/Attribute;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Attribute.java"


# instance fields
.field private attrType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private attrValues:Lmyorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 34
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 37
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .parameter "attrType"
    .parameter "attrValues"

    .prologue
    .line 39
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 40
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 42
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;
    .locals 3
    .parameter "o"

    .prologue
    .line 23
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/Attribute;

    .line 28
    .end local p0
    :goto_0
    return-object p0

    .line 27
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/Attribute;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/Attribute;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 31
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
.method public getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getAttrValues()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 65
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 66
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 68
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
