.class public final Lgnu/inet/nntp/ArticleStream;
.super Ljava/io/FilterInputStream;
.source "ArticleStream.java"

# interfaces
.implements Lgnu/inet/nntp/PendingData;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    return-void
.end method


# virtual methods
.method public readToEOF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lgnu/inet/nntp/ArticleStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    return-void

    .line 70
    :cond_1
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 74
    iget-object v0, p0, Lgnu/inet/nntp/ArticleStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0
.end method
