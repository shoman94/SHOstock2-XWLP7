.class Lcom/android/email/Controller$13;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageReadLocal([JZJ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$isRead:Z

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;[JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3214
    iput-object p1, p0, Lcom/android/email/Controller$13;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$13;->val$messageIds:[J

    iput-boolean p3, p0, Lcom/android/email/Controller$13;->val$isRead:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3216
    iget-object v8, p0, Lcom/android/email/Controller$13;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3217
    .local v7, resolver:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/email/Controller$13;->val$messageIds:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v0, v2

    .line 3218
    .local v3, id:J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3219
    .local v1, cv:Landroid/content/ContentValues;
    iget-boolean v8, p0, Lcom/android/email/Controller$13;->val$isRead:Z

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    .line 3220
    .local v6, readMark:I
    :goto_1
    const-string v8, "EasLocalReadFlag"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3221
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v1, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3219
    .end local v6           #readMark:I
    :cond_0
    const/4 v6, 0x2

    goto :goto_1

    .line 3223
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #id:J
    :cond_1
    return-void
.end method
