.class final Lgnu/inet/ftp/PassiveModeDTP;
.super Ljava/lang/Object;
.source "PassiveModeDTP.java"

# interfaces
.implements Lgnu/inet/ftp/DTP;


# instance fields
.field final address:Ljava/lang/String;

.field completed:Z

.field in:Lgnu/inet/ftp/DTPInputStream;

.field inProgress:Z

.field out:Lgnu/inet/ftp/DTPOutputStream;

.field final port:I

.field socket:Ljava/net/Socket;

.field transferMode:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lgnu/inet/ftp/PassiveModeDTP;->address:Ljava/lang/String;

    .line 73
    iput p2, p0, Lgnu/inet/ftp/PassiveModeDTP;->port:I

    .line 74
    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    .line 75
    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    .line 76
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    .line 77
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 78
    new-instance v1, Ljava/net/InetSocketAddress;

    add-int/lit8 v2, p2, 0x1

    invoke-direct {v1, p3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 79
    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 80
    if-lez p4, :cond_1

    .line 82
    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 88
    :goto_0
    if-lez p5, :cond_0

    .line 90
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 92
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    .line 168
    invoke-virtual {p0}, Lgnu/inet/ftp/PassiveModeDTP;->transferComplete()V

    .line 169
    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    return v0
.end method

.method public complete()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    .line 159
    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lgnu/inet/ftp/PassiveModeDTP;->transferComplete()V

    .line 163
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transfer in progress"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid transfer mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    new-instance v0, Lgnu/inet/ftp/StreamInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/StreamInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    .line 118
    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/DTPInputStream;->setTransferComplete(Z)V

    .line 119
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    return-object v0

    .line 110
    :pswitch_1
    new-instance v0, Lgnu/inet/ftp/BlockInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/BlockInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    goto :goto_0

    .line 113
    :pswitch_2
    new-instance v0, Lgnu/inet/ftp/CompressedInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/CompressedInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transfer in progress"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid transfer mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_0
    new-instance v0, Lgnu/inet/ftp/StreamOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/StreamOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    .line 147
    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/DTPOutputStream;->setTransferComplete(Z)V

    .line 148
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    return-object v0

    .line 139
    :pswitch_1
    new-instance v0, Lgnu/inet/ftp/BlockOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/BlockOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    goto :goto_0

    .line 142
    :pswitch_2
    new-instance v0, Lgnu/inet/ftp/CompressedOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/CompressedOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTransferMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    .line 154
    return-void
.end method

.method public transferComplete()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 178
    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    invoke-virtual {v2, v1}, Lgnu/inet/ftp/DTPInputStream;->setTransferComplete(Z)V

    .line 182
    :cond_0
    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    invoke-virtual {v2, v1}, Lgnu/inet/ftp/DTPOutputStream;->setTransferComplete(Z)V

    .line 186
    :cond_1
    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    .line 187
    iget-boolean v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    if-nez v2, :cond_2

    iget v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    if-ne v2, v1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    .line 188
    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_4

    .line 192
    :try_start_0
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_4
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method
