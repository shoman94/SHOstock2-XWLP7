.class public Lgnu/inet/ftp/FTPException;
.super Ljava/io/IOException;
.source "FTPException.java"


# instance fields
.field protected final response:Lgnu/inet/ftp/FTPResponse;


# direct methods
.method public constructor <init>(Lgnu/inet/ftp/FTPResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Lgnu/inet/ftp/FTPResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lgnu/inet/ftp/FTPException;->response:Lgnu/inet/ftp/FTPResponse;

    .line 65
    return-void
.end method
