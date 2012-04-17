.class public Lmyorg/bouncycastle/asn1/DERSetParser;
.super Ljava/lang/Object;
.source "DERSetParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1SetParser;


# instance fields
.field private _parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERSetParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    .line 11
    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 19
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSet;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERSetParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readObject()Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERSetParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
