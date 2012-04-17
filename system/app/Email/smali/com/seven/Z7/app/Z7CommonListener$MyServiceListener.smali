.class final Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "Z7CommonListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/Z7CommonListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7CommonListener;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/app/Z7CommonListener;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7CommonListener;

    .line 48
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 53
    const-string v1, "event-id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, what:I
    const-string v1, "Z7CommonListener"

    const-string v2, "do not show private informations.!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 57
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;->this$0:Lcom/seven/Z7/app/Z7CommonListener;

    iget-object v1, v1, Lcom/seven/Z7/app/Z7CommonListener;->mApp:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/adapter/SevenAdapter;->deleteSevenAccount(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 65
    :cond_0
    return-void
.end method
