.class public Lcom/android/mms/transaction/ProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "ProgressCallbackEntity.java"


# instance fields
.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private final mToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J[B)V
    .locals 1
    .parameter "context"
    .parameter "token"
    .parameter "b"

    .prologue
    .line 46
    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 48
    iput-object p1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    .line 49
    if-eqz p4, :cond_0

    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    .line 50
    iput-wide p2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    .line 51
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private broadcastProgressIfNeeded(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 87
    iget-wide v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "token"

    iget-wide v2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x2

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 61
    .local v0, completed:Z
    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 63
    const/4 v2, 0x0

    .local v2, pos:I
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    .line 64
    .local v3, totalLen:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 65
    sub-int v1, v3, v2

    .line 66
    .local v1, len:I
    const/16 v4, 0x1000

    if-le v1, v4, :cond_1

    .line 67
    const/16 v1, 0x1000

    .line 69
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 70
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 72
    add-int/2addr v2, v1

    .line 74
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v1           #len:I
    .end local v2           #pos:I
    .end local v3           #totalLen:I
    :catchall_0
    move-exception v4

    if-nez v0, :cond_2

    .line 81
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    :cond_2
    throw v4

    .line 63
    .restart local v2       #pos:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 77
    .restart local v3       #totalLen:I
    :cond_4
    const/16 v4, 0x64

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const/4 v0, 0x1

    .line 80
    if-nez v0, :cond_5

    .line 81
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 84
    :cond_5
    return-void
.end method
