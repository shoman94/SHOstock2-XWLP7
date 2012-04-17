.class Lgnu/inet/finger/FingerURLConnection;
.super Ljava/net/URLConnection;
.source "FingerURLConnection.java"


# instance fields
.field connection:Lgnu/inet/finger/FingerConnection;

.field response:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 63
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
    .line 68
    iget-object v0, p0, Lgnu/inet/finger/FingerURLConnection;->connection:Lgnu/inet/finger/FingerConnection;

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Lgnu/inet/finger/FingerConnection;

    iget-object v1, p0, Lgnu/inet/finger/FingerURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgnu/inet/finger/FingerURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lgnu/inet/finger/FingerConnection;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lgnu/inet/finger/FingerURLConnection;->connection:Lgnu/inet/finger/FingerConnection;

    .line 73
    iget-object v0, p0, Lgnu/inet/finger/FingerURLConnection;->connection:Lgnu/inet/finger/FingerConnection;

    iget-object v1, p0, Lgnu/inet/finger/FingerURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/inet/finger/FingerConnection;->finger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/finger/FingerURLConnection;->response:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-boolean v0, p0, Lgnu/inet/finger/FingerURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lgnu/inet/finger/FingerURLConnection;->connect()V

    .line 83
    :cond_0
    iget-object v0, p0, Lgnu/inet/finger/FingerURLConnection;->response:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method
