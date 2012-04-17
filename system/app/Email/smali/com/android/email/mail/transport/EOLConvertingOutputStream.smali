.class public Lcom/android/email/mail/transport/EOLConvertingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "EOLConvertingOutputStream.java"


# instance fields
.field lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 43
    iget v0, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 44
    invoke-super {p0, v2}, Ljava/io/FilterOutputStream;->write(I)V

    .line 45
    iput v2, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    .line 47
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 48
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xd

    .line 32
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 33
    iget v0, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    if-eq v0, v1, :cond_0

    .line 34
    invoke-super {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 37
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 38
    iput p1, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    .line 39
    return-void
.end method
