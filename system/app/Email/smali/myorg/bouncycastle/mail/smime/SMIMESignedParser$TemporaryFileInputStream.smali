.class Lmyorg/bouncycastle/mail/smime/SMIMESignedParser$TemporaryFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SMIMESignedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMESignedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporaryFileInputStream"
.end annotation


# instance fields
.field private final _file:Ljava/io/File;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 292
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedParser$TemporaryFileInputStream;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 293
    return-void
.end method
