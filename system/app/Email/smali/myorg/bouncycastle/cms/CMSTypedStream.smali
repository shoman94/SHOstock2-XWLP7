.class public Lmyorg/bouncycastle/cms/CMSTypedStream;
.super Ljava/lang/Object;
.source "CMSTypedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;
    }
.end annotation


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 18
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x8000

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/cms/CMSTypedStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter "oid"
    .parameter "in"

    .prologue
    .line 22
    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/cms/CMSTypedStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .parameter "oid"
    .parameter "in"
    .parameter "bufSize"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSTypedStream;->_oid:Ljava/lang/String;

    .line 27
    new-instance v0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;

    invoke-direct {v0, p0, p2, p3}, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;-><init>(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;I)V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream;->_in:Ljava/io/InputStream;

    .line 28
    return-void
.end method


# virtual methods
.method public drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream;->_in:Ljava/io/InputStream;

    invoke-static {v0}, Lmyorg/bouncycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V

    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 41
    return-void
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream;->_in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream;->_oid:Ljava/lang/String;

    return-object v0
.end method
