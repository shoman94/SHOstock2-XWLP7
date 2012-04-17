.class Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;
.super Ljava/io/FilterInputStream;
.source "FTPURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/inet/ftp/FTPURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClosingInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/inet/ftp/FTPURLConnection;


# direct methods
.method constructor <init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;->this$0:Lgnu/inet/ftp/FTPURLConnection;

    .line 381
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 382
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 388
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;->this$0:Lgnu/inet/ftp/FTPURLConnection;

    iget-object v0, v0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPConnection;->logout()V

    .line 389
    return-void
.end method
