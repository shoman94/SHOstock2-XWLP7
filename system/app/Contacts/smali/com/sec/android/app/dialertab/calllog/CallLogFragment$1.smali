.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.app.action.BLUETOOTH_DIAL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, TAB_INDEX_DIALER:I
    const/4 v2, 0x1

    .line 185
    .local v2, TAB_INDEX_CALL_LOG:I
    const/4 v0, 0x0

    .line 186
    .local v0, DIAL_INFO_NUMBER:I
    const/4 v1, 0x1

    .line 188
    .local v1, DIAL_INFO_TYPE:I
    const-string v6, "CallLogFragment"

    const-string v7, "mBroadcastReceiver, receive the BLUETOOTH_DIAL intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/contacts/activities/DialtactsActivity;

    if-nez v6, :cond_1

    .line 214
    .end local v0           #DIAL_INFO_NUMBER:I
    .end local v1           #DIAL_INFO_TYPE:I
    .end local v2           #TAB_INDEX_CALL_LOG:I
    .end local v3           #TAB_INDEX_DIALER:I
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v0       #DIAL_INFO_NUMBER:I
    .restart local v1       #DIAL_INFO_TYPE:I
    .restart local v2       #TAB_INDEX_CALL_LOG:I
    .restart local v3       #TAB_INDEX_DIALER:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/DialtactsActivity;

    .line 196
    .local v5, parent:Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {v5}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 197
    const-string v6, "bluetoohdial"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, numberInfo:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 207
    aget-object v6, v4, v9

    const-string v7, "vcall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    aget-object v6, v4, v8

    invoke-static {p1, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    aget-object v6, v4, v8

    invoke-static {p1, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
