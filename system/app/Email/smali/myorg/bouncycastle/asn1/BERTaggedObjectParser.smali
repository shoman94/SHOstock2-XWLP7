.class public Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _baseTag:I

.field private _contentStream:Ljava/io/InputStream;

.field private _indefiniteLength:Z

.field private _tagNumber:I


# direct methods
.method protected constructor <init>(IILjava/io/InputStream;)V
    .locals 1
    .parameter "baseTag"
    .parameter "tagNumber"
    .parameter "contentStream"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_baseTag:I

    .line 16
    iput p2, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    .line 17
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    .line 18
    instance-of v0, p3, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    .line 19
    return-void
.end method

.method private rLoadVector(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 3
    .parameter "in"

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->rLoadVector(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 72
    .local v2, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    new-instance v3, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v2, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    .end local v2           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    return-object v3

    .line 72
    .restart local v2       #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_0
    new-instance v3, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/BERFactory;->createSequence(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)Lmyorg/bouncycastle/asn1/BERSequence;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 76
    .end local v2           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->rLoadVector(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 79
    .restart local v2       #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    new-instance v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v2, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERFactory;->createSequence(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)Lmyorg/bouncycastle/asn1/DERSequence;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 84
    .end local v2           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    :try_start_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    check-cast v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 85
    .local v0, defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    iget v5, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    new-instance v6, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v4, v5, v6}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v0           #defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 3
    .parameter "tag"
    .parameter "isExplicit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    if-eqz p2, :cond_0

    .line 31
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :sswitch_0
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/BERSetParser;

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BERSetParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lmyorg/bouncycastle/asn1/DERSetParser;

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERSetParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 42
    :sswitch_1
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lmyorg/bouncycastle/asn1/BERSequenceParser;

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BERSequenceParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Lmyorg/bouncycastle/asn1/DERSequenceParser;

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERSequenceParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 50
    :sswitch_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    :cond_3
    new-instance v0, Lmyorg/bouncycastle/asn1/BEROctetStringParser;

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 53
    :cond_4
    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetStringParser;

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    check-cast v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DEROctetStringParser;-><init>(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 34
    nop

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
    .line 26
    iget v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_baseTag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
