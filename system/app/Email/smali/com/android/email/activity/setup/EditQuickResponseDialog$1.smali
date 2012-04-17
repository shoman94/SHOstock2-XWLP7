.class Lcom/android/email/activity/setup/EditQuickResponseDialog$1;
.super Ljava/lang/Object;
.source "EditQuickResponseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/EditQuickResponseDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->val$text:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    #getter for: Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;
    invoke-static {v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->access$000(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Lcom/android/emailcommon/provider/QuickResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/QuickResponse;->isSaved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    #getter for: Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;
    invoke-static {v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->access$000(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Lcom/android/emailcommon/provider/QuickResponse;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/QuickResponse;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "quickResponse"

    iget-object v2, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    #getter for: Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;
    invoke-static {v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->access$000(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Lcom/android/emailcommon/provider/QuickResponse;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/QuickResponse;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method
