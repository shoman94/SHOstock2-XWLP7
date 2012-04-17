.class public Lgnu/inet/nntp/ActiveTimesIterator;
.super Lgnu/inet/nntp/LineIterator;
.source "ActiveTimesIterator.java"


# direct methods
.method constructor <init>(Lgnu/inet/nntp/NNTPConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgnu/inet/nntp/LineIterator;-><init>(Lgnu/inet/nntp/NNTPConnection;)V

    .line 58
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/nntp/ActiveTimesIterator;->nextGroup()Lgnu/inet/nntp/ActiveTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextGroup()Lgnu/inet/nntp/ActiveTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lgnu/inet/nntp/ActiveTimesIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    .line 87
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 91
    iget-object v4, p0, Lgnu/inet/nntp/LineIterator;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lgnu/inet/nntp/NNTPConnection;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v3, Lgnu/inet/nntp/ActiveTime;

    invoke-direct {v3, v1, v2, v0}, Lgnu/inet/nntp/ActiveTime;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 97
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
