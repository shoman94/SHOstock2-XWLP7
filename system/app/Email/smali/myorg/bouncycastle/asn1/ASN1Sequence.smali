.class public abstract Lmyorg/bouncycastle/asn1/ASN1Sequence;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "ASN1Sequence.java"


# instance fields
.field private seq:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 3
    .parameter "obj"

    .prologue
    .line 18
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    return-object p0

    .line 22
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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 42
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 62
    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 67
    :cond_4
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


# virtual methods
.method protected addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 168
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 140
    instance-of v5, p1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v5, :cond_0

    move v5, v6

    .line 164
    :goto_0
    return v5

    :cond_0
    move-object v2, p1

    .line 144
    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 146
    .local v2, other:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-eq v5, v7, :cond_1

    move v5, v6

    .line 147
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 151
    .local v3, s1:Ljava/util/Enumeration;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 153
    .local v4, s2:Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 154
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 155
    .local v0, o1:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 157
    .local v1, o2:Lmyorg/bouncycastle/asn1/DERObject;
    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    move v5, v6

    .line 161
    goto :goto_0

    .line 164
    .end local v0           #o1:Lmyorg/bouncycastle/asn1/DERObject;
    .end local v1           #o2:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "index"

    .prologue
    .line 112
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 126
    .local v0, e:Ljava/util/Enumeration;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    .line 128
    .local v1, hashCode:I
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, o:Ljava/lang/Object;
    mul-int/lit8 v1, v1, 0x11

    .line 131
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_0

    .line 136
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public parser()Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .line 78
    .local v0, outer:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;

    invoke-direct {v1, p0, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
