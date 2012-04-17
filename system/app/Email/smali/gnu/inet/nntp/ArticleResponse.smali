.class public Lgnu/inet/nntp/ArticleResponse;
.super Lgnu/inet/nntp/StatusResponse;
.source "ArticleResponse.java"


# instance fields
.field public articleNumber:I

.field public in:Ljava/io/InputStream;

.field public messageId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(SLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lgnu/inet/nntp/StatusResponse;-><init>(SLjava/lang/String;)V

    .line 81
    return-void
.end method
