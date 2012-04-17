.class public Lmyorg/bouncycastle/asn1/x509/Holder;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Holder.java"


# instance fields
.field baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

.field entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private version:I


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .parameter "seq"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    iput v5, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 86
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 91
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 93
    .local v1, tObj:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag in Holder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :pswitch_0
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 90
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1

    .line 101
    :pswitch_2
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    .line 107
    .end local v1           #tObj:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    iput v5, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 108
    return-void

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .parameter "tagObj"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 67
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    invoke-static {p1, v1}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 77
    :goto_0
    iput v1, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->version:I

    .line 78
    return-void

    .line 72
    :pswitch_1
    invoke-static {p1, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Holder;
    .locals 3
    .parameter "obj"

    .prologue
    .line 50
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/Holder;

    .line 55
    .end local p0
    :goto_0
    return-object p0

    .line 52
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/Holder;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/Holder;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 54
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/Holder;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/Holder;-><init>(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    .line 58
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
.method public getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 185
    iget v1, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->version:I

    if-ne v1, v3, :cond_3

    .line 186
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 188
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 192
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    .line 193
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 196
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_2

    .line 197
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 200
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    .line 205
    .end local v0           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    return-object v1

    .line 202
    :cond_3
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_4

    .line 203
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->entityName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 205
    :cond_4
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
