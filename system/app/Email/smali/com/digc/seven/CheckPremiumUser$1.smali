.class Lcom/digc/seven/CheckPremiumUser$1;
.super Ljava/lang/Object;
.source "CheckPremiumUser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digc/seven/CheckPremiumUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digc/seven/CheckPremiumUser;


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 196
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/digc/seven/CheckPremiumUser$1;->this$0:Lcom/digc/seven/CheckPremiumUser;

    #calls: Lcom/digc/seven/CheckPremiumUser;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/digc/seven/CheckPremiumUser;->access$000(Lcom/digc/seven/CheckPremiumUser;)V

    .line 198
    iget-object v0, p0, Lcom/digc/seven/CheckPremiumUser$1;->this$0:Lcom/digc/seven/CheckPremiumUser;

    invoke-virtual {v0}, Lcom/digc/seven/CheckPremiumUser;->finish()V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
