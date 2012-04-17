.class public Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientKeyIdentifier.java"


# instance fields
.field private date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

.field private subjectKeyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 28
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid RecipientKeyIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :pswitch_0
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 45
    :goto_0
    :pswitch_1
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 40
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 3
    .parameter "_obj"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    .line 72
    .end local p0
    :goto_0
    return-object p0

    .line 71
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 75
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RecipientKeyIdentifier: "

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 1
    .parameter "_ato"
    .parameter "_explicit"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSubjectKeyIdentifier()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 107
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 109
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 117
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
