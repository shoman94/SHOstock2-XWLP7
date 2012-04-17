.class public Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;
.super Ljava/lang/Object;
.source "EnvelopedDataParser.java"


# instance fields
.field private _nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

.field private _originatorInfoCalled:Z

.field private _seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

.field private _version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .parameter "seq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 32
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 33
    return-void
.end method


# virtual methods
.method public getEncryptedContentInfo()Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 76
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v2, :cond_1

    .line 77
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 78
    .local v0, o:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 79
    new-instance v1, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 82
    .end local v0           #o:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    :cond_1
    return-object v1
.end method

.method public getOriginatorInfo()Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_originatorInfoCalled:Z

    .line 42
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 46
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    if-nez v1, :cond_1

    .line 48
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 50
    .local v0, originatorInfo:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 51
    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    .line 54
    .end local v0           #originatorInfo:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public getRecipientInfos()Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_originatorInfoCalled:Z

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getOriginatorInfo()Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 62
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 66
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SetParser;

    .line 67
    .local v0, recipientInfos:Lmyorg/bouncycastle/asn1/ASN1SetParser;
    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 68
    return-object v0
.end method
