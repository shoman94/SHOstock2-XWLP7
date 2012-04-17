.class public Lgnu/inet/nntp/FileNewsrc;
.super Ljava/lang/Object;
.source "FileNewsrc.java"

# interfaces
.implements Lgnu/inet/nntp/Newsrc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/nntp/FileNewsrc$Range;,
        Lgnu/inet/nntp/FileNewsrc$RangeList;
    }
.end annotation


# instance fields
.field protected debug:Z

.field protected dirty:Z

.field protected file:Ljava/io/File;

.field protected groups:Ljava/util/List;

.field protected lines:Ljava/util/Map;

.field protected subs:Ljava/util/List;


# virtual methods
.method public isSeen(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc;->subs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lgnu/inet/nntp/FileNewsrc;->load()V

    .line 311
    :cond_0
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc;->lines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 314
    new-instance v1, Lgnu/inet/nntp/FileNewsrc$RangeList;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 316
    :cond_1
    check-cast v0, Lgnu/inet/nntp/FileNewsrc$RangeList;

    .line 317
    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {v0, p2}, Lgnu/inet/nntp/FileNewsrc$RangeList;->isSeen(I)Z

    move-result v0

    .line 321
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method load()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 100
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 101
    const-wide/32 v0, 0x7fffffff

    .line 102
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    :goto_0
    long-to-int v0, v0

    .line 104
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgnu/inet/nntp/FileNewsrc;->groups:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    div-int/lit8 v2, v0, 0x14

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lgnu/inet/nntp/FileNewsrc;->lines:Ljava/util/Map;

    .line 106
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgnu/inet/nntp/FileNewsrc;->subs:Ljava/util/List;

    .line 111
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 112
    iget-boolean v3, p0, Lgnu/inet/nntp/FileNewsrc;->debug:Z

    if-eqz v3, :cond_0

    .line 114
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG: nntp: newsrc loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgnu/inet/nntp/FileNewsrc;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lgnu/inet/nntp/FileNewsrc;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 119
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 121
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_1
    if-eqz v0, :cond_5

    .line 124
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 125
    if-le v4, v8, :cond_3

    .line 128
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 129
    iget-object v6, p0, Lgnu/inet/nntp/FileNewsrc;->groups:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v6, p0, Lgnu/inet/nntp/FileNewsrc;->subs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 137
    iget-object v4, p0, Lgnu/inet/nntp/FileNewsrc;->lines:Ljava/util/Map;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 102
    goto/16 :goto_0

    .line 143
    :cond_3
    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 144
    if-le v4, v8, :cond_1

    .line 147
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 148
    iget-object v6, p0, Lgnu/inet/nntp/FileNewsrc;->groups:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v4, v4, 0x1

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 155
    iget-object v4, p0, Lgnu/inet/nntp/FileNewsrc;->lines:Ljava/util/Map;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 172
    :catch_0
    move-exception v0

    .line 188
    :cond_4
    :goto_3
    iput-boolean v7, p0, Lgnu/inet/nntp/FileNewsrc;->dirty:Z

    .line 189
    return-void

    .line 163
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 165
    iget-boolean v0, p0, Lgnu/inet/nntp/FileNewsrc;->debug:Z

    if-eqz v0, :cond_4

    .line 167
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG: nntp: newsrc load: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgnu/inet/nntp/FileNewsrc;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " groups in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v1, v3, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 175
    :catch_1
    move-exception v0

    .line 177
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: nntp: unable to read newsrc file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    iget-boolean v1, p0, Lgnu/inet/nntp/FileNewsrc;->debug:Z

    if-eqz v1, :cond_4

    .line 180
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_3

    .line 183
    :catch_2
    move-exception v0

    .line 185
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: nntp: no read permission on newsrc file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method
