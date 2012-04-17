.class Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v1, 0x70a

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1349
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_7

    .line 1350
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x709

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v0, v1, v2, v5}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZZ)V

    .line 1384
    :cond_1
    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    const-string v0, "GATE"

    const-string v1, "<GATE-M>MSG_DELETED</GATE-M>"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_2
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1394
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1395
    const-string v0, "Mms/ConversationList.DeleteThreadListener"

    const-string v1, "GCF Mode On"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    sput v5, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 1398
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v8, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1402
    .end local v8           #intent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 1360
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v0

    array-length v0, v0

    if-le v0, v3, :cond_5

    .line 1361
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v0

    array-length v9, v0

    .line 1366
    .local v9, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    new-instance v4, Lcom/android/mms/ui/DeleteInfo;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v10}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-int/lit8 v10, v9, -0x1

    if-ne v10, v7, :cond_6

    move v10, v3

    :goto_2
    invoke-direct {v4, v11, v12, v10}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    .line 1366
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    move v10, v5

    .line 1367
    goto :goto_2

    .line 1373
    .end local v7           #i:I
    .end local v9           #length:I
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1374
    :cond_8
    sput-boolean v3, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 1378
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v10

    new-instance v4, Lcom/android/mms/ui/DeleteInfo;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v11}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v11

    invoke-direct {v4, v11, v12, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move v3, v10

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    goto/16 :goto_0
.end method
