.class Lcom/android/mms/data/WorkingMessage$6;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$6;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$6;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$6;->val$selectionArgs:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$6;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2203
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$6;->val$uri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$6;->val$selection:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage$6;->val$selectionArgs:[Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2204
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$6;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 2205
    .local v1, threadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2207
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "delete sms from asyncDeleteMmsMessage()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "type=3"

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2215
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$6;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 2216
    .local v0, tempConv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 2217
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$6;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 2220
    .end local v0           #tempConv:Lcom/android/mms/data/Conversation;
    :cond_0
    return-void
.end method
