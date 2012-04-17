.class Lcom/seven/Z7/app/Z7AppBaseActivity$5;
.super Landroid/os/Handler;
.source "Z7AppBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$5;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 222
    const-string v0, "Z7AppBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$5;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->startErrorActivity(Landroid/os/Message;)V

    .line 227
    :cond_0
    return-void
.end method
