.class Lcom/android/email/winset/MessageScrollView$1;
.super Landroid/os/Handler;
.source "MessageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/winset/MessageScrollView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/winset/MessageScrollView;


# direct methods
.method constructor <init>(Lcom/android/email/winset/MessageScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView$1;->this$0:Lcom/android/email/winset/MessageScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView$1;->this$0:Lcom/android/email/winset/MessageScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
