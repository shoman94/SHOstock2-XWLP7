.class public Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "MQVuserKeyingMaterial.java"


# instance fields
.field private addedukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private ephemeralPublicKey:Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    .line 30
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 31
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 34
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
    .locals 3
    .parameter "obj"

    .prologue
    .line 56
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    .line 61
    .end local p0
    :goto_0
    return-object p0

    .line 60
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 64
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MQVuserKeyingMaterial: "

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
.method public getEphemeralPublicKey()Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 93
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
