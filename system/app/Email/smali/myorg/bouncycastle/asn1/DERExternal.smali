.class public Lmyorg/bouncycastle/asn1/DERExternal;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERExternal.java"


# instance fields
.field private dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

.field private directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private encoding:I

.field private externalContent:Lmyorg/bouncycastle/asn1/DERObject;

.field private indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 5
    .parameter "vector"

    .prologue
    .line 17
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v2, 0x0

    .line 19
    .local v2, offset:I
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 20
    .local v0, enc:Lmyorg/bouncycastle/asn1/DERObject;
    instance-of v3, v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v3, :cond_0

    .line 21
    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .end local v0           #enc:Lmyorg/bouncycastle/asn1/DERObject;
    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 25
    .restart local v0       #enc:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_0
    instance-of v3, v0, Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v3, :cond_1

    .line 26
    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    .end local v0           #enc:Lmyorg/bouncycastle/asn1/DERObject;
    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 30
    .restart local v0       #enc:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_1
    instance-of v3, v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    if-nez v3, :cond_2

    .line 31
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Object;

    .end local v0           #enc:Lmyorg/bouncycastle/asn1/DERObject;
    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 35
    .restart local v0       #enc:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_2
    instance-of v3, v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    if-nez v3, :cond_3

    .line 36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move-object v1, v0

    .line 39
    check-cast v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    .line 40
    .local v1, obj:Lmyorg/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    .line 41
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/DERExternal;->externalContent:Lmyorg/bouncycastle/asn1/DERObject;

    .line 42
    return-void
.end method

.method private setEncoding(I)V
    .locals 3
    .parameter "encoding"

    .prologue
    .line 238
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    iput p1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->encoding:I

    .line 242
    return-void
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 132
    instance-of v2, p1, Lmyorg/bouncycastle/asn1/DERExternal;

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    if-ne p0, p1, :cond_2

    .line 136
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 138
    check-cast v0, Lmyorg/bouncycastle/asn1/DERExternal;

    .line 139
    .local v0, other:Lmyorg/bouncycastle/asn1/DERExternal;
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    :cond_3
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_4

    .line 145
    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :cond_4
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_5

    .line 151
    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    :cond_5
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->externalContent:Lmyorg/bouncycastle/asn1/DERObject;

    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERExternal;->externalContent:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 114
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Object;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 120
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget v2, p0, Lmyorg/bouncycastle/asn1/DERExternal;->encoding:I

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERExternal;->externalContent:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 121
    .local v1, obj:Lmyorg/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 122
    const/16 v2, 0x20

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 123
    return-void
.end method

.method public getDataValueDescriptor()Lmyorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getDirectReference()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->encoding:I

    return v0
.end method

.method public getExternalContent()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->externalContent:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public getIndirectReference()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, ret:I
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->directReference:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v0

    .line 93
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->indirectReference:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 96
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lmyorg/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 99
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERExternal;->externalContent:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 100
    return v0
.end method
