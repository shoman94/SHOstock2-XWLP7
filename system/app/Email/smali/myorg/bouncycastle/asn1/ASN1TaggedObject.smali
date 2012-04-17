.class public abstract Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field empty:Z

.field explicit:Z

.field obj:Lmyorg/bouncycastle/asn1/DEREncodable;

.field tagNo:I


# direct methods
.method public constructor <init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 2
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 14
    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 41
    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 42
    iput p1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 43
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 44
    return-void
.end method

.method public constructor <init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 2
    .parameter "explicit"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 14
    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 58
    instance-of v0, p3, Lmyorg/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_0

    .line 59
    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 64
    :goto_0
    iput p2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 65
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 66
    return-void

    .line 61
    :cond_0
    iput-boolean p1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3
    .parameter "obj"

    .prologue
    .line 26
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    return-object p0

    .line 30
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "implicitly tagged tagged object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 69
    instance-of v2, p1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 73
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 75
    .local v0, other:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v3, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    iget-boolean v3, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget-boolean v3, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-ne v2, v3, :cond_0

    .line 79
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_3

    .line 80
    iget-object v2, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_0

    .line 89
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    iget-object v3, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public getObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 3
    .parameter "tag"
    .parameter "isExplicit"

    .prologue
    .line 149
    sparse-switch p1, :sswitch_data_0

    .line 158
    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    :goto_0
    return-object v0

    .line 151
    :sswitch_0
    invoke-static {p0, p2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Set;->parser()Lmyorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    goto :goto_0

    .line 153
    :sswitch_1
    invoke-static {p0, p2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->parser()Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    goto :goto_0

    .line 155
    :sswitch_2
    invoke-static {p0, p2}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->parser()Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "implicit tagging not implemented for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public getTagNo()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 100
    .local v0, code:I
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 104
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    return v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
