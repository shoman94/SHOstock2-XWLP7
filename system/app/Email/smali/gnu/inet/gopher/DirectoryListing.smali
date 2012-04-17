.class public final Lgnu/inet/gopher/DirectoryListing;
.super Ljava/lang/Object;
.source "DirectoryListing.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private current:Lgnu/inet/gopher/DirectoryEntry;

.field private doneRead:Z

.field private in:Lgnu/inet/util/LineInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/gopher/DirectoryListing;->doneRead:Z

    .line 66
    new-instance v0, Lgnu/inet/util/LineInputStream;

    invoke-direct {v0, p1}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/gopher/DirectoryListing;->in:Lgnu/inet/util/LineInputStream;

    .line 67
    return-void
.end method


# virtual methods
.method fetch()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x33

    const/16 v5, 0x9

    const/4 v6, -0x1

    .line 126
    iget-boolean v0, p0, Lgnu/inet/gopher/DirectoryListing;->doneRead:Z

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lgnu/inet/gopher/DirectoryListing;->in:Lgnu/inet/util/LineInputStream;

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v2, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/gopher/DirectoryListing;->current:Lgnu/inet/gopher/DirectoryEntry;

    goto :goto_0

    .line 139
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 184
    :goto_1
    :sswitch_0
    const/4 v2, 0x1

    .line 185
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 186
    if-ne v3, v6, :cond_2

    .line 188
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid directory entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :sswitch_1
    const/16 v1, 0x30

    .line 143
    goto :goto_1

    .line 145
    :sswitch_2
    const/16 v1, 0x31

    .line 146
    goto :goto_1

    .line 148
    :sswitch_3
    const/16 v1, 0x32

    .line 149
    goto :goto_1

    .line 154
    :sswitch_4
    const/16 v1, 0x34

    .line 155
    goto :goto_1

    .line 157
    :sswitch_5
    const/16 v1, 0x35

    .line 158
    goto :goto_1

    .line 160
    :sswitch_6
    const/16 v1, 0x36

    .line 161
    goto :goto_1

    .line 163
    :sswitch_7
    const/16 v1, 0x37

    .line 164
    goto :goto_1

    .line 166
    :sswitch_8
    const/16 v1, 0x38

    .line 167
    goto :goto_1

    .line 169
    :sswitch_9
    const/16 v1, 0x39

    .line 170
    goto :goto_1

    .line 172
    :sswitch_a
    const/16 v1, 0x2b

    .line 173
    goto :goto_1

    .line 175
    :sswitch_b
    const/16 v1, 0x54

    .line 176
    goto :goto_1

    .line 178
    :sswitch_c
    const/16 v1, 0x67

    .line 179
    goto :goto_1

    .line 181
    :sswitch_d
    const/16 v1, 0x49

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 191
    add-int/lit8 v3, v3, 0x1

    .line 192
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 193
    if-ne v4, v6, :cond_3

    .line 195
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid directory entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 199
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 200
    if-ne v5, v6, :cond_4

    .line 202
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid directory entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_4
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 205
    add-int/lit8 v5, v5, 0x1

    .line 206
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 207
    new-instance v0, Lgnu/inet/gopher/DirectoryEntry;

    invoke-direct/range {v0 .. v5}, Lgnu/inet/gopher/DirectoryEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lgnu/inet/gopher/DirectoryListing;->current:Lgnu/inet/gopher/DirectoryEntry;

    goto/16 :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_a
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x32 -> :sswitch_3
        0x33 -> :sswitch_0
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x49 -> :sswitch_d
        0x54 -> :sswitch_b
        0x67 -> :sswitch_c
    .end sparse-switch
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/gopher/DirectoryListing;->fetch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    iget-object v1, p0, Lgnu/inet/gopher/DirectoryListing;->current:Lgnu/inet/gopher/DirectoryEntry;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/gopher/DirectoryListing;->nextEntry()Lgnu/inet/gopher/DirectoryEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 96
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

.method public nextEntry()Lgnu/inet/gopher/DirectoryEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lgnu/inet/gopher/DirectoryListing;->fetch()V

    .line 115
    iget-object v0, p0, Lgnu/inet/gopher/DirectoryListing;->current:Lgnu/inet/gopher/DirectoryEntry;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/gopher/DirectoryListing;->doneRead:Z

    .line 120
    iget-object v0, p0, Lgnu/inet/gopher/DirectoryListing;->current:Lgnu/inet/gopher/DirectoryEntry;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
