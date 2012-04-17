.class Lcom/android/email/activity/MessageWebView$1;
.super Landroid/os/Handler;
.source "MessageWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageWebView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->onScrollChangeWebView()V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->onSizeChangeWebView()V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->onScaleChangeWebView()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
