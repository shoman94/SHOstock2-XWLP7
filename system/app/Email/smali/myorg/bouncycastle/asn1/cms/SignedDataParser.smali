.class public Lmyorg/bouncycastle/asn1/cms/SignedDataParser;
.super Ljava/lang/Object;
.source "SignedDataParser.java"


# instance fields
.field private _seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

.field private _version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .parameter "seq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 46
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;->_version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 47
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignedDataParser;
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->parser()Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 38
    :goto_0
    return-object v0

    .line 37
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    goto :goto_0

    .line 41
    .restart local p0
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

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

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDigestAlgorithms()Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 56
    .local v0, o:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v1, v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    .end local v0           #o:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Set;->parser()Lmyorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .restart local v0       #o:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_0
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SetParser;

    goto :goto_0
.end method

.method public getEncapContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v1
.end method
