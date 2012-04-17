.class public Lgnu/inet/ftp/FTPURLConnection;
.super Ljava/net/URLConnection;
.source "FTPURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;,
        Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;
    }
.end annotation


# instance fields
.field protected connection:Lgnu/inet/ftp/FTPConnection;

.field protected fileStructure:I

.field protected passive:Z

.field protected representationType:I

.field protected transferMode:I


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 83
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    .line 86
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    .line 87
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    .line 88
    return-void
.end method

.method private addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0, p2}, Lgnu/inet/ftp/FTPURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2}, Lgnu/inet/ftp/FTPURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 96
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 101
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 102
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 103
    const/4 v0, 0x0

    .line 104
    if-eqz v1, :cond_3

    .line 106
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 107
    if-eq v2, v6, :cond_2

    .line 109
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_2
    :goto_1
    new-instance v2, Lgnu/inet/ftp/FTPConnection;

    invoke-direct {v2, v3, v4}, Lgnu/inet/ftp/FTPConnection;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    .line 124
    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v1, v0}, Lgnu/inet/ftp/FTPConnection;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 126
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Authentication failed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    const-string v2, "anonymous"

    .line 116
    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "user.name"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    new-instance v1, Lgnu/inet/util/GetLocalHostAction;

    invoke-direct {v1}, Lgnu/inet/util/GetLocalHostAction;-><init>()V

    .line 119
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_4

    const-string v0, "localhost"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 128
    :cond_5
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget-boolean v1, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setPassive(Z)V

    .line 129
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    if-eq v0, v6, :cond_6

    .line 131
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget v1, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setRepresentationType(I)V

    .line 133
    :cond_6
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    if-eq v0, v6, :cond_7

    .line 135
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget v1, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setFileStructure(I)V

    .line 137
    :cond_7
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    if-eq v0, v6, :cond_0

    .line 139
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget v1, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setTransferMode(I)V

    goto/16 :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPURLConnection;->connect()V

    .line 169
    :cond_0
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 176
    const/4 v1, -0x1

    if-eq v3, v1, :cond_2

    .line 178
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v3, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v3, v0}, Lgnu/inet/ftp/FTPConnection;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 182
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, v2

    .line 185
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 187
    new-instance v0, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;

    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v1}, Lgnu/inet/ftp/FTPConnection;->retrieve(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;-><init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/InputStream;)V

    .line 191
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v1, v2}, Lgnu/inet/ftp/FTPConnection;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;-><init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPURLConnection;->connect()V

    .line 205
    :cond_0
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_1
    const/4 v1, 0x0

    .line 211
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 212
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 214
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v0}, Lgnu/inet/ftp/FTPConnection;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, v1

    .line 221
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 223
    new-instance v1, Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;

    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v0}, Lgnu/inet/ftp/FTPConnection;->store(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;-><init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/OutputStream;)V

    return-object v1

    .line 227
    :cond_3
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    const-string v1, "passive"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 280
    const-string v1, "representationType"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 281
    const-string v1, "fileStructure"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 282
    const-string v1, "transferMode"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 233
    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const-string v0, "representationType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :pswitch_0
    const-string v0, "ASCII"

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v0, "EBCDIC"

    goto :goto_0

    .line 246
    :pswitch_2
    const-string v0, "BINARY"

    goto :goto_0

    .line 249
    :cond_2
    const-string v0, "fileStructure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 254
    :pswitch_3
    const-string v0, "FILE"

    goto :goto_0

    .line 256
    :pswitch_4
    const-string v0, "RECORD"

    goto :goto_0

    .line 258
    :pswitch_5
    const-string v0, "PAGE"

    goto :goto_0

    .line 261
    :cond_3
    const-string v0, "transferMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 266
    :pswitch_6
    const-string v0, "STREAM"

    goto :goto_0

    .line 268
    :pswitch_7
    const-string v0, "BLOCK"

    goto :goto_0

    .line 270
    :pswitch_8
    const-string v0, "COMPRESSED"

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 251
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 263
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setDoInput(Z)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lgnu/inet/ftp/FTPURLConnection;->doInput:Z

    .line 149
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lgnu/inet/ftp/FTPURLConnection;->doOutput:Z

    .line 157
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 294
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 298
    :cond_0
    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    const-string v0, "representationType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 304
    const-string v0, "A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ASCII"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    :cond_3
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    goto :goto_0

    .line 309
    :cond_4
    const-string v0, "E"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "EBCDIC"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    :cond_5
    iput v2, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    goto :goto_0

    .line 314
    :cond_6
    const-string v0, "I"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "BINARY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 317
    :cond_7
    iput v3, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    goto :goto_0

    .line 321
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_9
    const-string v0, "fileStructure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 326
    const-string v0, "F"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "FILE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 329
    :cond_a
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    goto :goto_0

    .line 331
    :cond_b
    const-string v0, "R"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "RECORD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 334
    :cond_c
    iput v2, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    goto :goto_0

    .line 336
    :cond_d
    const-string v0, "P"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "PAGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 339
    :cond_e
    iput v3, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    goto/16 :goto_0

    .line 343
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_10
    const-string v0, "transferMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    const-string v0, "S"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "STREAM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 351
    :cond_11
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    goto/16 :goto_0

    .line 353
    :cond_12
    const-string v0, "B"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "BLOCK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 356
    :cond_13
    iput v2, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    goto/16 :goto_0

    .line 358
    :cond_14
    const-string v0, "C"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "COMPRESSED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 361
    :cond_15
    iput v3, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    goto/16 :goto_0

    .line 365
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
