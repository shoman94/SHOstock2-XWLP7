.class public Lcom/android/email/mail/transport/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private mCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/email/mail/transport/CountingOutputStream;->mCount:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/email/mail/transport/CountingOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/email/mail/transport/CountingOutputStream;->mCount:J

    .line 39
    return-void
.end method
