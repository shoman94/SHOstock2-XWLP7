.class public Lgnu/inet/comsat/ComsatClient;
.super Ljava/lang/Object;
.source "ComsatClient.java"


# instance fields
.field protected socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgnu/inet/comsat/ComsatClient;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-gez p1, :cond_0

    .line 72
    const/16 p1, 0x200

    .line 75
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lgnu/inet/comsat/ComsatClient;->socket:Ljava/net/DatagramSocket;

    .line 76
    if-lez p2, :cond_1

    .line 78
    iget-object v0, p0, Lgnu/inet/comsat/ComsatClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 80
    :cond_1
    iget-object v0, p0, Lgnu/inet/comsat/ComsatClient;->socket:Ljava/net/DatagramSocket;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 81
    return-void
.end method
