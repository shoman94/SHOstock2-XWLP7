.class public Lgnu/inet/gopher/GopherURLConnection;
.super Ljava/net/URLConnection;
.source "GopherURLConnection.java"


# instance fields
.field protected connection:Lgnu/inet/gopher/GopherConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 69
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lgnu/inet/gopher/GopherURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lgnu/inet/gopher/GopherURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lgnu/inet/gopher/GopherURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 83
    new-instance v2, Lgnu/inet/gopher/GopherConnection;

    invoke-direct {v2, v0, v1}, Lgnu/inet/gopher/GopherConnection;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lgnu/inet/gopher/GopherURLConnection;->connection:Lgnu/inet/gopher/GopherConnection;

    goto :goto_0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lgnu/inet/gopher/GopherContentHandler;

    invoke-direct {v0}, Lgnu/inet/gopher/GopherContentHandler;-><init>()V

    invoke-virtual {v0, p0}, Lgnu/inet/gopher/GopherContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lgnu/inet/gopher/GopherContentHandler;

    invoke-direct {v0}, Lgnu/inet/gopher/GopherContentHandler;-><init>()V

    invoke-virtual {v0, p0, p1}, Lgnu/inet/gopher/GopherContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lgnu/inet/gopher/GopherURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lgnu/inet/gopher/GopherURLConnection;->connect()V

    .line 96
    :cond_0
    iget-object v0, p0, Lgnu/inet/gopher/GopherURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v0, p0, Lgnu/inet/gopher/GopherURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    if-nez v1, :cond_2

    .line 106
    :goto_0
    iget-object v1, p0, Lgnu/inet/gopher/GopherURLConnection;->connection:Lgnu/inet/gopher/GopherConnection;

    invoke-virtual {v1, v0}, Lgnu/inet/gopher/GopherConnection;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 104
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V

    throw v0
.end method
