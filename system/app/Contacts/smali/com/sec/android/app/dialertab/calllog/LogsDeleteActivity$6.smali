.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;
.super Landroid/os/Handler;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    const v1, 0x7f0a02bb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
