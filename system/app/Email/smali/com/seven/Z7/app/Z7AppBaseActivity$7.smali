.class Lcom/seven/Z7/app/Z7AppBaseActivity$7;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 272
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$7;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 274
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://socialhub.samsungmobile.com/store/device/disclaimer.sh?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$7;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-static {v2}, Lcom/seven/util/SamsungUrlEncryptionUtils;->getIMSIOfSubscriptionRenewalParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, url:Ljava/lang/String;
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$7;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/seven/Z7/app/Z7AppBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$7;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->doAfterPremiumAdded()V

    .line 319
    return-void
.end method
