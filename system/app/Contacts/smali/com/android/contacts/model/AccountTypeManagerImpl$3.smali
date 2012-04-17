.class Lcom/android/contacts/model/AccountTypeManagerImpl$3;
.super Landroid/os/Handler;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->processBroadcastIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
