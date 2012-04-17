.class public Lgnu/inet/gopher/GopherConnection;
.super Ljava/lang/Object;
.source "GopherConnection.java"


# instance fields
.field protected in:Ljava/io/InputStream;

.field protected out:Ljava/io/OutputStream;

.field protected socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-gtz p2, :cond_0

    .line 88
    const/16 p2, 0x50

    .line 91
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lgnu/inet/gopher/GopherConnection;->socket:Ljava/net/Socket;

    .line 92
    iget-object v0, p0, Lgnu/inet/gopher/GopherConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/gopher/GopherConnection;->in:Ljava/io/InputStream;

    .line 93
    iget-object v0, p0, Lgnu/inet/gopher/GopherConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/gopher/GopherConnection;->out:Ljava/io/OutputStream;

    .line 94
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 121
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 122
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    array-length v2, v0

    const/16 v3, 0xd

    aput-byte v3, v1, v2

    .line 124
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v1, v0

    .line 125
    iget-object v0, p0, Lgnu/inet/gopher/GopherConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 126
    iget-object v0, p0, Lgnu/inet/gopher/GopherConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 127
    iget-object v0, p0, Lgnu/inet/gopher/GopherConnection;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public list()Lgnu/inet/gopher/DirectoryListing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 105
    iget-object v1, p0, Lgnu/inet/gopher/GopherConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 106
    iget-object v0, p0, Lgnu/inet/gopher/GopherConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 107
    new-instance v0, Lgnu/inet/util/CRLFInputStream;

    iget-object v1, p0, Lgnu/inet/gopher/GopherConnection;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lgnu/inet/util/CRLFInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    new-instance v1, Lgnu/inet/util/MessageInputStream;

    invoke-direct {v1, v0}, Lgnu/inet/util/MessageInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    new-instance v0, Lgnu/inet/gopher/DirectoryListing;

    invoke-direct {v0, v1}, Lgnu/inet/gopher/DirectoryListing;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 104
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
