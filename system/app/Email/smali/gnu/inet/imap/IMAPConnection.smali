.class public Lgnu/inet/imap/IMAPConnection;
.super Ljava/lang/Object;
.source "IMAPConnection.java"

# interfaces
.implements Lgnu/inet/imap/IMAPConstants;


# static fields
.field public static final IMAP_TRACE:Ljava/util/logging/Level;

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private alerts:Ljava/util/List;

.field private ansiDebug:Z

.field protected asyncResponses:Ljava/util/List;

.field protected in:Lgnu/inet/imap/IMAPResponseTokenizer;

.field protected out:Lgnu/inet/util/CRLFOutputStream;

.field private tagIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "gnu.inet.imap"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    .line 103
    new-instance v0, Lgnu/inet/util/TraceLevel;

    const-string v1, "imap"

    invoke-direct {v0, v1}, Lgnu/inet/util/TraceLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    return-void
.end method

.method private fetchImpl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1555
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v1

    .line 1556
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1558
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1559
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1560
    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1561
    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 1563
    if-lez v0, :cond_0

    .line 1565
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1567
    :cond_0
    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1569
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1570
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    :goto_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v2

    .line 1575
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v3

    .line 1576
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1578
    const-string v4, "FETCH"

    if-ne v3, v4, :cond_2

    .line 1580
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getCount()I

    move-result v3

    .line 1581
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v2

    .line 1582
    new-instance v4, Lgnu/inet/imap/MessageStatus;

    invoke-direct {v4, v3, v2}, Lgnu/inet/imap/MessageStatus;-><init>(ILjava/util/List;)V

    .line 1583
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1587
    :cond_2
    iget-object v3, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1590
    :cond_3
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1592
    invoke-direct {p0, v2}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    .line 1593
    const-string v1, "OK"

    if-ne v3, v1, :cond_4

    .line 1595
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lgnu/inet/imap/MessageStatus;

    .line 1596
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1597
    return-object v1

    .line 1601
    :cond_4
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1606
    :cond_5
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private processAlerts(Lgnu/inet/imap/IMAPResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 378
    invoke-virtual {p1}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    const-string v1, "ALERT"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-virtual {p1}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    return-void
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x22

    .line 2363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2365
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2367
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2369
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2371
    :cond_1
    return-object p0
.end method

.method static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x22

    .line 2347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2350
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2352
    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2355
    :cond_0
    return-object p0
.end method


# virtual methods
.method public alertsPending()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public examine(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    const-string v0, "EXAMINE"

    invoke-virtual {p0, p1, v0}, Lgnu/inet/imap/IMAPConnection;->selectImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v0

    return-object v0
.end method

.method public fetch([I[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1489
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1490
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1492
    if-lez v0, :cond_0

    .line 1494
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1496
    :cond_0
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    :cond_1
    const-string v0, "FETCH"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lgnu/inet/imap/IMAPConnection;->fetchImpl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;

    move-result-object v0

    return-object v0
.end method

.method public getAlerts()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 400
    iget-object v1, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 401
    return-object v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1026
    const-string v0, "LIST"

    invoke-virtual {p0, v0, p1, p2}, Lgnu/inet/imap/IMAPConnection;->listImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v0

    return-object v0
.end method

.method protected listImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1043
    if-nez p2, :cond_0

    .line 1045
    const-string p2, ""

    .line 1047
    :cond_0
    if-nez p3, :cond_1

    .line 1049
    const-string p3, ""

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v7

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    :goto_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1062
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1064
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v9

    .line 1065
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v10

    .line 1070
    if-nez v9, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 1071
    :goto_1
    const/4 v3, 0x0

    .line 1072
    const/4 v4, 0x0

    .line 1073
    const/4 v5, 0x0

    .line 1074
    const/4 v6, 0x0

    .line 1075
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_7

    .line 1077
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1078
    const-string v11, "\\Noinferiors"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1080
    const/4 v3, 0x1

    .line 1075
    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1070
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 1082
    :cond_4
    const-string v11, "\\Noselect"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1084
    const/4 v4, 0x1

    goto :goto_3

    .line 1086
    :cond_5
    const-string v11, "\\Marked"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1088
    const/4 v5, 0x1

    goto :goto_3

    .line 1090
    :cond_6
    const-string v11, "\\Unmarked"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    const/4 v6, 0x1

    goto :goto_3

    .line 1095
    :cond_7
    const/16 v0, 0x20

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1096
    const/4 v2, 0x0

    .line 1097
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string v9, "NIL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1100
    invoke-static {v1}, Lgnu/inet/imap/IMAPConnection;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1102
    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/inet/imap/IMAPConnection;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-static {v0}, Lgnu/inet/imap/UTF7imap;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    new-instance v0, Lgnu/inet/imap/ListEntry;

    invoke-direct/range {v0 .. v6}, Lgnu/inet/imap/ListEntry;-><init>(Ljava/lang/String;CZZZZ)V

    .line 1106
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1110
    :cond_9
    iget-object v1, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1113
    :cond_a
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1115
    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    .line 1116
    const-string v2, "OK"

    if-ne v1, v2, :cond_b

    .line 1118
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/inet/imap/ListEntry;

    .line 1119
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1120
    return-object v0

    .line 1124
    :cond_b
    new-instance v2, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1129
    :cond_c
    new-instance v2, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected newTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/inet/imap/IMAPConnection;->tagIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/inet/imap/IMAPConnection;->tagIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noop()Lgnu/inet/imap/MailboxStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v4

    .line 510
    const-string v0, "NOOP"

    invoke-virtual {p0, v4, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v3, Lgnu/inet/imap/MailboxStatus;

    invoke-direct {v3}, Lgnu/inet/imap/MailboxStatus;-><init>()V

    .line 513
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    .line 518
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/imap/IMAPResponse;

    .line 521
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 527
    :goto_1
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v6

    .line 528
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 530
    if-nez v1, :cond_0

    invoke-virtual {p0, v3, v6, v0}, Lgnu/inet/imap/IMAPConnection;->updateMailboxStatus(Lgnu/inet/imap/MailboxStatus;Ljava/lang/String;Lgnu/inet/imap/IMAPResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 548
    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 530
    goto :goto_2

    .line 532
    :cond_3
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 534
    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    .line 535
    const-string v2, "OK"

    if-ne v6, v2, :cond_5

    .line 537
    if-eqz v1, :cond_4

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 541
    :cond_5
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_6
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method protected readResponse()Lgnu/inet/imap/IMAPResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->in:Lgnu/inet/imap/IMAPResponseTokenizer;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponseTokenizer;->next()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    .line 360
    sget-object v0, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    const-string v2, "<EOF"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 363
    :cond_0
    iget-boolean v1, p0, Lgnu/inet/imap/IMAPConnection;->ansiDebug:Z

    if-eqz v1, :cond_1

    .line 365
    sget-object v1, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->toANSIString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-object v0

    .line 369
    :cond_1
    sget-object v1, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public search(Ljava/lang/String;[Ljava/lang/String;)[I
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

    const/16 v5, 0x20

    .line 1375
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v3

    .line 1376
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "SEARCH"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1378
    if-eqz p1, :cond_0

    .line 1380
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move v0, v1

    .line 1383
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    .line 1385
    if-lez v0, :cond_1

    .line 1387
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1389
    :cond_1
    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    .line 1396
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v5

    .line 1397
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1399
    const-string v2, "SEARCH"

    if-ne v5, v2, :cond_5

    .line 1401
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_3

    .line 1408
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1409
    :goto_2
    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    .line 1411
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1413
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_2

    .line 1415
    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1417
    :catch_0
    move-exception v1

    .line 1419
    new-instance v1, Lgnu/inet/imap/IMAPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1424
    :cond_5
    iget-object v2, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1427
    :cond_6
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1429
    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    .line 1430
    const-string v2, "OK"

    if-ne v5, v2, :cond_7

    .line 1432
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1433
    new-array v3, v2, [I

    .line 1434
    :goto_3
    if-ge v1, v2, :cond_9

    .line 1436
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1442
    :cond_7
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1447
    :cond_8
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1438
    :cond_9
    return-object v3
.end method

.method public select(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    const-string v0, "SELECT"

    invoke-virtual {p0, p1, v0}, Lgnu/inet/imap/IMAPConnection;->selectImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v0

    return-object v0
.end method

.method protected selectImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v0

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance v1, Lgnu/inet/imap/MailboxStatus;

    invoke-direct {v1}, Lgnu/inet/imap/MailboxStatus;-><init>()V

    .line 844
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v2

    .line 845
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v3

    .line 846
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 848
    invoke-virtual {p0, v1, v3, v2}, Lgnu/inet/imap/IMAPConnection;->updateMailboxStatus(Lgnu/inet/imap/MailboxStatus;Ljava/lang/String;Lgnu/inet/imap/IMAPResponse;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 850
    iget-object v3, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    invoke-direct {p0, v2}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    .line 856
    const-string v0, "OK"

    if-ne v3, v0, :cond_3

    .line 858
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "READ-WRITE"

    if-ne v0, v2, :cond_2

    .line 861
    const/4 v0, 0x1

    iput-boolean v0, v1, Lgnu/inet/imap/MailboxStatus;->readWrite:Z

    .line 863
    :cond_2
    return-object v1

    .line 867
    :cond_3
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_4
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/inet/util/CRLFOutputStream;->write(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->writeln()V

    .line 300
    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->flush()V

    .line 301
    return-void
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 1140
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v4

    .line 1141
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "STATUS"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move v0, v1

    .line 1146
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 1148
    if-lez v0, :cond_0

    .line 1150
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1152
    :cond_0
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1154
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1155
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v5, Lgnu/inet/imap/MailboxStatus;

    invoke-direct {v5}, Lgnu/inet/imap/MailboxStatus;-><init>()V

    .line 1159
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    .line 1160
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v6

    .line 1161
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1163
    const-string v2, "STATUS"

    if-ne v6, v2, :cond_9

    .line 1165
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v7

    .line 1166
    if-nez v7, :cond_4

    move v2, v1

    :goto_2
    move v3, v1

    .line 1167
    :goto_3
    if-ge v3, v2, :cond_2

    .line 1171
    :try_start_0
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 1172
    add-int/lit8 v0, v3, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1173
    const-string v9, "MESSAGES"

    if-ne v8, v9, :cond_5

    .line 1175
    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->messageCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :cond_3
    :goto_4
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_3

    .line 1166
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_2

    .line 1177
    :cond_5
    :try_start_1
    const-string v9, "RECENT"

    if-ne v8, v9, :cond_6

    .line 1179
    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1194
    :catch_0
    move-exception v0

    .line 1196
    new-instance v0, Lgnu/inet/imap/IMAPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_6
    :try_start_2
    const-string v9, "UIDNEXT"

    if-ne v8, v9, :cond_7

    .line 1183
    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->uidNext:I

    goto :goto_4

    .line 1185
    :cond_7
    const-string v9, "UIDVALIDITY"

    if-ne v8, v9, :cond_8

    .line 1187
    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->uidValidity:I

    goto :goto_4

    .line 1189
    :cond_8
    const-string v9, "UNSEEN"

    if-ne v8, v9, :cond_3

    .line 1191
    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->firstUnreadMessage:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1202
    :cond_9
    iget-object v2, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1205
    :cond_a
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1207
    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    .line 1208
    const-string v1, "OK"

    if-ne v6, v1, :cond_b

    .line 1210
    return-object v5

    .line 1214
    :cond_b
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_c
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method protected updateMailboxStatus(Lgnu/inet/imap/MailboxStatus;Ljava/lang/String;Lgnu/inet/imap/IMAPResponse;)Z
    .locals 8
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

    const/4 v4, 0x1

    .line 881
    const-string v1, "OK"

    if-ne p2, v1, :cond_5

    .line 884
    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v6

    .line 885
    if-nez v6, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    move v5, v0

    .line 886
    :goto_1
    if-ge v3, v2, :cond_4

    .line 888
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 889
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 891
    check-cast v0, Ljava/lang/String;

    .line 892
    add-int/lit8 v1, v3, 0x1

    if-ge v1, v2, :cond_0

    .line 894
    add-int/lit8 v1, v3, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 895
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 897
    check-cast v1, Ljava/lang/String;

    .line 900
    :try_start_0
    const-string v7, "UNSEEN"

    if-ne v0, v7, :cond_2

    .line 902
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lgnu/inet/imap/MailboxStatus;->firstUnreadMessage:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    add-int/lit8 v0, v3, 0x1

    move v1, v4

    :goto_2
    move v3, v0

    move v5, v1

    .line 886
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 885
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 907
    :cond_2
    :try_start_1
    const-string v7, "UIDVALIDITY"

    if-ne v0, v7, :cond_9

    .line 909
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lgnu/inet/imap/MailboxStatus;->uidValidity:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 910
    add-int/lit8 v0, v3, 0x1

    move v1, v4

    .line 911
    goto :goto_2

    .line 914
    :catch_0
    move-exception v2

    .line 916
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    :cond_3
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_0

    .line 922
    const-string v7, "PERMANENTFLAGS"

    if-ne v0, v7, :cond_0

    .line 924
    check-cast v1, Ljava/util/List;

    iput-object v1, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    .line 925
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .line 926
    goto :goto_3

    :cond_4
    move v4, v5

    .line 951
    :goto_4
    return v4

    .line 934
    :cond_5
    const-string v1, "EXISTS"

    if-ne p2, v1, :cond_6

    .line 936
    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getCount()I

    move-result v0

    iput v0, p1, Lgnu/inet/imap/MailboxStatus;->messageCount:I

    goto :goto_4

    .line 939
    :cond_6
    const-string v1, "RECENT"

    if-ne p2, v1, :cond_7

    .line 941
    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getCount()I

    move-result v0

    iput v0, p1, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I

    goto :goto_4

    .line 944
    :cond_7
    const-string v1, "FLAGS"

    if-ne p2, v1, :cond_8

    .line 946
    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lgnu/inet/imap/MailboxStatus;->flags:Ljava/util/List;

    goto :goto_4

    :cond_8
    move v4, v0

    .line 951
    goto :goto_4

    :cond_9
    move v0, v3

    move v1, v5

    goto :goto_2
.end method
