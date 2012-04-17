.class public Lmyorg/bouncycastle/asn1/BEROctetStringParser;
.super Ljava/lang/Object;
.source "BEROctetStringParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private _parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    .line 14
    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 29
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method
