.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "MailcapCommandMap.java"


# static fields
.field private static debug:Z


# instance fields
.field private mailcaps:[[Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    .line 77
    :try_start_0
    const-string v0, "javax.activation.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->init(Ljava/io/Reader;)V

    .line 93
    return-void
.end method

.method private addField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    if-nez p3, :cond_0

    .line 707
    const/16 v0, 0x3d

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 708
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 710
    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 711
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 714
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 732
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 720
    if-nez v0, :cond_4

    .line 722
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 723
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 725
    :goto_1
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 726
    if-nez v0, :cond_3

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_3
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private getCommands(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x2f

    .line 736
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 737
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 742
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 743
    if-nez v1, :cond_0

    .line 767
    :goto_0
    return-object v0

    .line 747
    :cond_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 749
    goto :goto_0

    .line 751
    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 752
    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 753
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 756
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 757
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 758
    if-nez v3, :cond_2

    .line 760
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 764
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 767
    goto :goto_0
.end method

.method private getSystemResources(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    :try_start_0
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 778
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 783
    :catch_0
    move-exception v1

    .line 786
    :cond_0
    return-object v0
.end method

.method private init(Ljava/io/Reader;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 134
    filled-new-array {v7, v5}, [I

    move-result-object v0

    const-class v2, Ljava/util/Map;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/util/Map;

    iput-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    move v2, v1

    .line 135
    :goto_0
    if-ge v2, v7, :cond_1

    move v0, v1

    .line 137
    :goto_1
    if-ge v0, v5, :cond_0

    .line 139
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v3, v3, v2

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    aput-object v4, v3, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 142
    :cond_1
    if-eqz p1, :cond_3

    .line 144
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_2

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load PROG"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    :cond_3
    :goto_2
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_4

    .line 159
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load HOME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    :cond_4
    :try_start_1
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_5

    .line 166
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ".mailcap"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->parseFile(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7

    .line 176
    :cond_5
    :goto_3
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_6

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load SYS"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_6
    const/4 v0, 0x2

    :try_start_2
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

    const-string v3, "mailcap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljavax/activation/MailcapCommandMap;->parseFile(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    .line 193
    :goto_4
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_7

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load JAR"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    :cond_7
    const-string v0, "META-INF/mailcap"

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->getSystemResources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 198
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 199
    if-lez v5, :cond_c

    move v3, v1

    .line 201
    :goto_5
    if-ge v3, v5, :cond_d

    .line 203
    const/4 v1, 0x0

    .line 204
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 207
    :try_start_3
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_8

    .line 209
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :cond_8
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 212
    const/4 v0, 0x3

    :try_start_4
    invoke-direct {p0, v0, v2}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 224
    if-eqz v2, :cond_9

    .line 228
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 201
    :cond_9
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 214
    :catch_0
    move-exception v0

    .line 216
    :goto_7
    :try_start_6
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_a

    .line 218
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    :cond_a
    if-eqz v1, :cond_9

    .line 228
    :try_start_7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    .line 230
    :catch_1
    move-exception v0

    goto :goto_6

    .line 224
    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v1, :cond_b

    .line 228
    :try_start_8
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 232
    :cond_b
    :goto_9
    throw v0

    .line 239
    :cond_c
    const-string v0, "/META-INF/mailcap"

    invoke-direct {p0, v6, v0}, Ljavax/activation/MailcapCommandMap;->parseResource(ILjava/lang/String;)V

    .line 242
    :cond_d
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_e

    .line 244
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MailcapCommandMap: load DEF"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    :cond_e
    const/4 v0, 0x4

    const-string v1, "/META-INF/mailcap.default"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MailcapCommandMap;->parseResource(ILjava/lang/String;)V

    .line 247
    return-void

    .line 152
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 230
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_9

    .line 224
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_8

    .line 214
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 189
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 172
    :catch_7
    move-exception v0

    goto/16 :goto_3
.end method

.method private static nameOf(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 515
    packed-switch p0, :pswitch_data_0

    .line 528
    const-string v0, "ERR"

    :goto_0
    return-object v0

    .line 518
    :pswitch_0
    const-string v0, "PROG"

    goto :goto_0

    .line 520
    :pswitch_1
    const-string v0, "HOME"

    goto :goto_0

    .line 522
    :pswitch_2
    const-string v0, "SYS"

    goto :goto_0

    .line 524
    :pswitch_3
    const-string v0, "JAR"

    goto :goto_0

    .line 526
    :pswitch_4
    const-string v0, "DEF"

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parse(ILjava/io/Reader;)V
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

    .line 609
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 611
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 613
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 615
    if-eqz v4, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1

    .line 611
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 619
    :cond_1
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3

    .line 621
    if-nez v0, :cond_2

    .line 623
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    :cond_2
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 627
    :cond_3
    if-eqz v0, :cond_4

    .line 629
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/activation/MailcapCommandMap;->parseEntry(ILjava/lang/String;)V

    move-object v0, v1

    .line 631
    goto :goto_1

    .line 635
    :cond_4
    invoke-direct {p0, p1, v2}, Ljavax/activation/MailcapCommandMap;->parseEntry(ILjava/lang/String;)V

    goto :goto_1

    .line 638
    :cond_5
    return-void
.end method

.method private parseEntry(ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 643
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 644
    array-length v8, v7

    .line 647
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    move v0, v3

    move v2, v3

    .line 649
    :goto_0
    if-ge v6, v8, :cond_5

    .line 651
    aget-char v5, v7, v6

    .line 652
    const/16 v11, 0x5c

    if-ne v5, v11, :cond_0

    .line 654
    add-int/lit8 v6, v6, 0x1

    aget-char v5, v7, v6

    .line 656
    :cond_0
    const/16 v11, 0x3b

    if-ne v5, v11, :cond_2

    if-nez v2, :cond_2

    .line 658
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 659
    const-string v11, "x-java-fallback-entry"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v0, v1

    .line 663
    :cond_1
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 649
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 668
    :cond_2
    const/16 v11, 0x22

    if-ne v5, v11, :cond_3

    .line 670
    if-nez v2, :cond_4

    move v2, v1

    .line 672
    :cond_3
    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    move v2, v3

    .line 670
    goto :goto_2

    .line 675
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 676
    const-string v5, "x-java-fallback-entry"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v1

    .line 680
    :cond_6
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 683
    if-ge v5, v4, :cond_8

    .line 685
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_7

    .line 687
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mailcap entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 700
    :cond_7
    return-void

    .line 692
    :cond_8
    if-eqz v0, :cond_9

    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    move-object v2, v0

    .line 694
    :goto_3
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 695
    const-string v3, "view-command"

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3, v1}, Ljavax/activation/MailcapCommandMap;->addField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 696
    :goto_4
    if-ge v3, v5, :cond_7

    .line 698
    const/4 v4, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v0, v4, v1}, Ljavax/activation/MailcapCommandMap;->addField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 692
    :cond_9
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v0, v0, p1

    aget-object v0, v0, v3

    move-object v2, v0

    goto :goto_3
.end method

.method private parseFile(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 537
    :try_start_0
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    :cond_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :try_start_1
    invoke-direct {p0, p1, v2}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 554
    if-eqz v2, :cond_1

    .line 558
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 565
    :cond_1
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 546
    :goto_1
    :try_start_3
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_2

    .line 548
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    :cond_2
    if-eqz v1, :cond_1

    .line 558
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 560
    :catch_1
    move-exception v0

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 558
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 562
    :cond_3
    :goto_3
    throw v0

    .line 560
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 554
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 544
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private parseResource(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 572
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_4

    .line 575
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_0

    .line 577
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 579
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :try_start_1
    invoke-direct {p0, p1, v2}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 593
    :goto_0
    if-eqz v2, :cond_1

    .line 597
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 604
    :cond_1
    :goto_1
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 585
    :goto_2
    :try_start_3
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_2

    .line 587
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
    :cond_2
    if-eqz v1, :cond_1

    .line 597
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 599
    :catch_1
    move-exception v0

    goto :goto_1

    .line 593
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 597
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 601
    :cond_3
    :goto_4
    throw v0

    .line 599
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 593
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 583
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MailcapCommandMap: add to PROG"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 377
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailcapCommandMap: createDataContentHandler for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    move v3, v2

    .line 382
    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_6

    move v1, v2

    .line 384
    :goto_1
    const/4 v0, 0x5

    if-ge v1, v0, :cond_5

    .line 386
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_1

    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  search DB #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    :cond_1
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-direct {p0, v0, p1}, Ljavax/activation/MailcapCommandMap;->getCommands(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 391
    if-eqz v4, :cond_4

    .line 393
    const-string v0, "content-handler"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 394
    if-nez v0, :cond_2

    .line 396
    const-string v0, "x-java-content-handler"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 398
    :cond_2
    if-eqz v0, :cond_4

    .line 400
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_3

    .line 403
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  In "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljavax/activation/MailcapCommandMap;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", content-handler="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/DataContentHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 436
    :goto_2
    monitor-exit p0

    return-object v0

    .line 411
    :catch_0
    move-exception v0

    .line 413
    :try_start_2
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_4

    .line 415
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 384
    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 418
    :catch_1
    move-exception v0

    .line 420
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_4

    .line 422
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 425
    :catch_2
    move-exception v0

    .line 427
    :try_start_3
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_4

    .line 429
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 382
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 436
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
