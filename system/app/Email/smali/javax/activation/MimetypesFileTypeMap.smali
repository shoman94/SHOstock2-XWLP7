.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "MimetypesFileTypeMap.java"


# static fields
.field private static debug:Z


# instance fields
.field private mimetypes:[Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    .line 75
    :try_start_0
    const-string v0, "javax.activation.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->init(Ljava/io/Reader;)V

    .line 91
    return-void
.end method

.method private getSystemResources(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    :try_start_0
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 415
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    .line 421
    :cond_0
    return-object v0
.end method

.method private init(Ljava/io/Reader;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    move v0, v1

    .line 128
    :goto_0
    iget-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    if-eqz p1, :cond_2

    .line 134
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load PROG"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    :cond_1
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {p0, v0, p1}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 147
    :cond_2
    :goto_1
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_3

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load HOME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_3
    :try_start_1
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_4

    .line 156
    iget-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ".mime.types"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Ljavax/activation/MimetypesFileTypeMap;->parseFile(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6

    .line 166
    :cond_4
    :goto_2
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_5

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load SYS"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    :cond_5
    :try_start_2
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "mime.types"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljavax/activation/MimetypesFileTypeMap;->parseFile(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5

    .line 182
    :goto_3
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_6

    .line 184
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load JAR"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    :cond_6
    const-string v0, "META-INF/mime.types"

    invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getSystemResources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 187
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 188
    if-lez v5, :cond_9

    move v3, v1

    .line 190
    :goto_4
    if-ge v3, v5, :cond_a

    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 196
    :try_start_3
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    :try_start_4
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 204
    if-eqz v1, :cond_7

    .line 208
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 190
    :cond_7
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 199
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 204
    :goto_6
    if-eqz v0, :cond_7

    .line 208
    :try_start_6
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 210
    :catch_1
    move-exception v0

    goto :goto_5

    .line 204
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_8

    .line 208
    :try_start_7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 212
    :cond_8
    :goto_8
    throw v0

    .line 219
    :cond_9
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    aget-object v0, v0, v6

    const-string v1, "/META-INF/mime.types"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->parseResource(Ljava/util/Map;Ljava/lang/String;)V

    .line 222
    :cond_a
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_b

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MimetypesFileTypeMap: load DEF"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    :cond_b
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "/META-INF/mimetypes.default"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->parseResource(Ljava/util/Map;Ljava/lang/String;)V

    .line 227
    return-void

    .line 210
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_8

    .line 204
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 199
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_6

    .line 179
    :catch_5
    move-exception v0

    goto :goto_3

    .line 162
    :catch_6
    move-exception v0

    goto/16 :goto_2

    .line 142
    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method private parse(Ljava/util/Map;Ljava/io/Reader;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 345
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 347
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 351
    if-eqz v4, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1

    .line 347
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 355
    :cond_1
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3

    .line 357
    if-nez v0, :cond_2

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    :cond_2
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 363
    :cond_3
    if-eqz v0, :cond_4

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/activation/MimetypesFileTypeMap;->parseEntry(Ljava/util/Map;Ljava/lang/String;)V

    move-object v0, v1

    .line 367
    goto :goto_1

    .line 371
    :cond_4
    invoke-direct {p0, p1, v2}, Ljavax/activation/MimetypesFileTypeMap;->parseEntry(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_5
    return-void
.end method

.method private parseEntry(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 379
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 381
    array-length v4, v3

    .line 382
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    .line 383
    :goto_0
    if-ge v1, v4, :cond_3

    .line 385
    aget-char v6, v3, v1

    .line 386
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 388
    if-nez v0, :cond_1

    .line 390
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_0
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 383
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 394
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 399
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 401
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 403
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_4
    return-void
.end method

.method private parseFile(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 291
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :try_start_1
    invoke-direct {p0, p1, v0}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 299
    if-eqz v0, :cond_0

    .line 303
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 299
    :goto_1
    if-eqz v0, :cond_0

    .line 303
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 305
    :catch_1
    move-exception v0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 303
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 307
    :cond_1
    :goto_3
    throw v0

    .line 305
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 299
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 294
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private parseResource(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_2

    .line 320
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :try_start_1
    invoke-direct {p0, p1, v0}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 329
    :goto_0
    if-eqz v0, :cond_0

    .line 333
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 340
    :cond_0
    :goto_1
    return-void

    .line 324
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 329
    :goto_2
    if-eqz v0, :cond_0

    .line 333
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 335
    :catch_1
    move-exception v0

    goto :goto_1

    .line 329
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 333
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 337
    :cond_1
    :goto_4
    throw v0

    .line 335
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 329
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 324
    :catch_4
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 265
    monitor-enter p0

    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 266
    if-gez v0, :cond_1

    .line 268
    const-string v0, "application/octet-stream"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 270
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 273
    const-string v0, "application/octet-stream"

    goto :goto_0

    .line 275
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 277
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    if-nez v0, :cond_0

    .line 275
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 283
    :cond_3
    const-string v0, "application/octet-stream"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
