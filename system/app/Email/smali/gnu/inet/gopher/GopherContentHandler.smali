.class public Lgnu/inet/gopher/GopherContentHandler;
.super Ljava/net/ContentHandler;
.source "GopherContentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    instance-of v0, p1, Lgnu/inet/gopher/GopherURLConnection;

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Lgnu/inet/gopher/GopherURLConnection;

    .line 63
    iget-object v0, p1, Lgnu/inet/gopher/GopherURLConnection;->connection:Lgnu/inet/gopher/GopherConnection;

    .line 64
    invoke-virtual {p1}, Lgnu/inet/gopher/GopherURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 67
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lgnu/inet/gopher/GopherConnection;->list()Lgnu/inet/gopher/DirectoryListing;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lgnu/inet/gopher/GopherURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V

    throw v0
.end method
