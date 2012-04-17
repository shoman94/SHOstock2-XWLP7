.class public Lcom/android/email/mail/transport/DiscourseLogger;
.super Ljava/lang/Object;
.source "DiscourseLogger.java"


# instance fields
.field private mBuffer:[Ljava/lang/String;

.field private final mBufferSize:I

.field private mPos:I

.field private mPrefixDate:Z

.field private final mReceivingLine:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "bufferSize"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    .line 48
    iput p1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    .line 49
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->initBuffer()V

    .line 50
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .parameter "bufferSize"
    .parameter "prefixDate"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    .line 53
    iput-boolean p2, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPrefixDate:Z

    .line 54
    iput p1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    .line 55
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->initBuffer()V

    .line 56
    return-void
.end method

.method private addLine(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 64
    iget-boolean v2, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPrefixDate:Z

    if-eqz v2, :cond_0

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    iget v3, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    aput-object p1, v2, v3

    .line 72
    iget v2, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 73
    iget v2, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    iget v3, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    if-lt v2, v3, :cond_1

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 76
    :cond_1
    return-void
.end method

.method private addReceivingLineToBuffer()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addLine(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    return-void
.end method

.method private initBuffer()V
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public addReceivedByte(I)V
    .locals 5
    .parameter "b"

    .prologue
    .line 91
    const/16 v1, 0x20

    if-gt v1, p1, :cond_1

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivingLineToBuffer()V

    goto :goto_0

    .line 95
    :cond_2
    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, hex:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public addSentCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/email/mail/transport/DiscourseLogger;->addLine(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method getLines()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivingLineToBuffer()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 118
    .local v4, start:I
    iget v1, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    .line 120
    .local v1, pos:I
    :cond_0
    iget-object v5, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 121
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mBufferSize:I

    rem-int v1, v5, v6

    .line 125
    if-ne v1, v4, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 128
    .local v2, ret:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    return-object v2
.end method

.method public logLastDiscourse()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse(Z)V

    .line 140
    return-void
.end method

.method public logLastDiscourse(Z)V
    .locals 9
    .parameter "useError"

    .prologue
    .line 148
    const-string v6, "Z7App"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last activities: [Current Position - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/email/mail/transport/DiscourseLogger;->mPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->getLines()[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, lines:[Ljava/lang/String;
    array-length v6, v4

    if-nez v6, :cond_1

    .line 163
    :cond_0
    return-void

    .line 153
    :cond_1
    const/4 v1, 0x0

    .line 154
    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/email/mail/transport/DiscourseLogger;->getLines()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 155
    .local v5, r:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 156
    const-string v6, "Z7App"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_2
    const-string v6, "Z7App"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public logString(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/email/mail/transport/DiscourseLogger;->addLine(Ljava/lang/String;)V

    .line 109
    return-void
.end method
