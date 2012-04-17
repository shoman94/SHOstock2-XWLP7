.class Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FTPURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/inet/ftp/FTPURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClosingOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/inet/ftp/FTPURLConnection;


# direct methods
.method constructor <init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;->this$0:Lgnu/inet/ftp/FTPURLConnection;

    .line 399
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 400
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
    .line 405
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 406
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;->this$0:Lgnu/inet/ftp/FTPURLConnection;

    iget-object v0, v0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPConnection;->logout()V

    .line 407
    return-void
.end method
