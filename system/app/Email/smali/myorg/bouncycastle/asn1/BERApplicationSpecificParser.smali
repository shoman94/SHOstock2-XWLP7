.class public Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;
.super Ljava/lang/Object;
.source "BERApplicationSpecificParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field private final parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

.field private final tag:I


# direct methods
.method constructor <init>(ILmyorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .parameter "tag"
    .parameter "parser"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    .line 12
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    .line 13
    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/BERApplicationSpecific;

    iget v2, p0, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/BERApplicationSpecific;-><init>(ILmyorg/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
