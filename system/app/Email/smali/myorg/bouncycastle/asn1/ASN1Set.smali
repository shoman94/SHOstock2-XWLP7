.class public abstract Lmyorg/bouncycastle/asn1/ASN1Set;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "ASN1Set.java"


# instance fields
.field protected set:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 90
    return-void
.end method

.method private getEncoded(Lmyorg/bouncycastle/asn1/DEREncodable;)[B
    .locals 5
    .parameter "obj"

    .prologue
    .line 222
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 226
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot encode object added to SET"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 3
    .parameter "obj"

    .prologue
    .line 19
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Set;

    .end local p0
    return-object p0

    .line 23
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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 7
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "object implicit - explicit expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 80
    :goto_0
    return-object v4

    .line 55
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    new-instance v2, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .local v2, set:Lmyorg/bouncycastle/asn1/ASN1Set;
    move-object v4, v2

    .line 58
    goto :goto_0

    .line 60
    .end local v2           #set:Lmyorg/bouncycastle/asn1/ASN1Set;
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_3

    .line 61
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 68
    :cond_3
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v3, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_5

    .line 71
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 72
    .local v1, s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v1, :cond_4

    .line 73
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 75
    .local v0, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    .line 80
    .end local v0           #e:Ljava/util/Enumeration;
    :cond_4
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_0

    .line 85
    .end local v1           #s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown object in getInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private lessThanOrEqual([B[B)Z
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 192
    array-length v5, p1

    array-length v6, p2

    if-gt v5, v6, :cond_3

    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-eq v0, v5, :cond_0

    .line 194
    aget-byte v5, p1, v0

    and-int/lit16 v1, v5, 0xff

    .line 195
    .local v1, l:I
    aget-byte v5, p2, v0

    and-int/lit16 v2, v5, 0xff

    .line 197
    .local v2, r:I
    if-le v2, v1, :cond_1

    .line 217
    .end local v1           #l:I
    .end local v2           #r:I
    :cond_0
    :goto_1
    return v3

    .line 199
    .restart local v1       #l:I
    .restart local v2       #r:I
    :cond_1
    if-le v1, v2, :cond_2

    move v3, v4

    .line 200
    goto :goto_1

    .line 193
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #r:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    array-length v5, p2

    if-eq v0, v5, :cond_5

    .line 207
    aget-byte v5, p1, v0

    and-int/lit16 v1, v5, 0xff

    .line 208
    .restart local v1       #l:I
    aget-byte v5, p2, v0

    and-int/lit16 v2, v5, 0xff

    .line 210
    .restart local v2       #r:I
    if-gt v2, v1, :cond_0

    .line 212
    if-le v1, v2, :cond_4

    move v3, v4

    .line 213
    goto :goto_1

    .line 206
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #l:I
    .end local v2           #r:I
    :cond_5
    move v3, v4

    .line 217
    goto :goto_1
.end method


# virtual methods
.method protected addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 270
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 161
    instance-of v5, p1, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_0

    move v5, v6

    .line 185
    :goto_0
    return v5

    :cond_0
    move-object v2, p1

    .line 165
    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 167
    .local v2, other:Lmyorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v7

    if-eq v5, v7, :cond_1

    move v5, v6

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 172
    .local v3, s1:Ljava/util/Enumeration;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 174
    .local v4, s2:Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 176
    .local v0, o1:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 178
    .local v1, o2:Lmyorg/bouncycastle/asn1/DERObject;
    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    move v5, v6

    .line 182
    goto :goto_0

    .line 185
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
    .line 103
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 147
    .local v0, e:Ljava/util/Enumeration;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    .line 149
    .local v1, hashCode:I
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, o:Ljava/lang/Object;
    mul-int/lit8 v1, v1, 0x11

    .line 152
    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_0

    .line 157
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public parser()Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .line 118
    .local v0, outer:Lmyorg/bouncycastle/asn1/ASN1Set;
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1Set$1;

    invoke-direct {v1, p0, v0}, Lmyorg/bouncycastle/asn1/ASN1Set$1;-><init>(Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected sort()V
    .locals 10

    .prologue
    .line 235
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 236
    const/4 v6, 0x1

    .line 237
    .local v6, swapped:Z
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 239
    .local v3, lastSwap:I
    :goto_0
    if-eqz v6, :cond_2

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, index:I
    const/4 v5, 0x0

    .line 242
    .local v5, swapIndex:I
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/asn1/ASN1Set;->getEncoded(Lmyorg/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v0

    .line 244
    .local v0, a:[B
    const/4 v6, 0x0

    .line 246
    :goto_1
    if-eq v2, v3, :cond_1

    .line 247
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/asn1/ASN1Set;->getEncoded(Lmyorg/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v1

    .line 249
    .local v1, b:[B
    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    move-object v0, v1

    .line 261
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 262
    goto :goto_1

    .line 252
    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 254
    .local v4, o:Ljava/lang/Object;
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iget-object v8, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 255
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v4, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 257
    const/4 v6, 0x1

    .line 258
    move v5, v2

    goto :goto_2

    .line 264
    .end local v1           #b:[B
    .end local v4           #o:Ljava/lang/Object;
    :cond_1
    move v3, v5

    .line 265
    goto :goto_0

    .line 267
    .end local v0           #a:[B
    .end local v2           #index:I
    .end local v3           #lastSwap:I
    .end local v5           #swapIndex:I
    .end local v6           #swapped:Z
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
