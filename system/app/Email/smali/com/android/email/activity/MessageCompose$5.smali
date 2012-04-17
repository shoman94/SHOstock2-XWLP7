.class Lcom/android/email/activity/MessageCompose$5;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowSecurityPolicyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1451
    if-nez p2, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onSave()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$800(Lcom/android/email/activity/MessageCompose;)V

    .line 1456
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1457
    return-void

    .line 1453
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onDiscard()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_0
.end method
