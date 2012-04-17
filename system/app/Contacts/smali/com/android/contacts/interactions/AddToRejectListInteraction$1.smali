.class Lcom/android/contacts/interactions/AddToRejectListInteraction$1;
.super Ljava/lang/Object;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 236
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.sec.android.app.callsetting"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, pkg_name:Ljava/lang/String;
    const-string v3, ".allcalls.AutoReject"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-virtual {v3, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startActivity(Landroid/content/Intent;)V

    .line 242
    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->clearJobs()V
    invoke-static {v3}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 243
    return-void
.end method
