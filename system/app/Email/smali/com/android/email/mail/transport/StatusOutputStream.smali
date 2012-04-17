.class public Lcom/android/email/mail/transport/StatusOutputStream;
.super Ljava/io/FilterOutputStream;
.source "StatusOutputStream.java"


# instance fields
.field private mCount:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    .line 33
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 38
    iget-wide v0, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    .line 44
    return-void
.end method
