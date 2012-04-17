.class public Lmyorg/bouncycastle/cms/CMSCompressedDataParser;
.super Lmyorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSCompressedDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "compressedData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    .line 41
    return-void
.end method
