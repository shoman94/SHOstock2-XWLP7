.class Lmyorg/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1
    .parameter "parser"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 14
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    .line 15
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 58
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v3, :cond_3

    .line 59
    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v3, :cond_1

    move v0, v2

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 65
    .local v1, s:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_2

    move v0, v2

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 70
    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 74
    .end local v1           #s:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_3
    :goto_1
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 76
    .local v0, b:I
    if-gez v0, :cond_0

    .line 80
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 82
    .restart local v1       #s:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_4

    .line 83
    const/4 v3, 0x0

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    move v0, v2

    .line 84
    goto :goto_0

    .line 87
    :cond_4
    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 18
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v5, :cond_2

    .line 19
    iget-boolean v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v5, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v4

    .line 23
    :cond_1
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 25
    .local v2, s:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-eqz v2, :cond_0

    .line 29
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 30
    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 33
    .end local v2           #s:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_2
    const/4 v3, 0x0

    .line 36
    .local v3, totalRead:I
    :cond_3
    :goto_1
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v6, p2, v3

    sub-int v7, p3, v3

    invoke-virtual {v5, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 38
    .local v1, numRead:I
    if-ltz v1, :cond_4

    .line 39
    add-int/2addr v3, v1

    .line 41
    if-ne v3, p3, :cond_3

    move v4, v3

    .line 42
    goto :goto_0

    .line 45
    :cond_4
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 47
    .local v0, aos:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_6

    .line 48
    const/4 v5, 0x0

    iput-object v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 49
    const/4 v5, 0x1

    if-ge v3, v5, :cond_5

    move v3, v4

    .end local v3           #totalRead:I
    :cond_5
    move v4, v3

    goto :goto_0

    .line 52
    .restart local v3       #totalRead:I
    :cond_6
    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method
