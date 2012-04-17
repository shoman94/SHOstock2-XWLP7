.class public Lgnu/inet/nntp/NNTPException;
.super Ljava/io/IOException;
.source "NNTPException.java"


# instance fields
.field protected final response:Lgnu/inet/nntp/StatusResponse;


# direct methods
.method protected constructor <init>(Lgnu/inet/nntp/StatusResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lgnu/inet/nntp/StatusResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lgnu/inet/nntp/NNTPException;->response:Lgnu/inet/nntp/StatusResponse;

    .line 64
    return-void
.end method


# virtual methods
.method public getResponse()Lgnu/inet/nntp/StatusResponse;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lgnu/inet/nntp/NNTPException;->response:Lgnu/inet/nntp/StatusResponse;

    return-object v0
.end method
