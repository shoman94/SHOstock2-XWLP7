.class public Lmyorg/bouncycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source "DEROctetStringParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private stream:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DEROctetStringParser;->stream:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 12
    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 20
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DEROctetStringParser;->stream:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
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
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DEROctetStringParser;->stream:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object v0
.end method
