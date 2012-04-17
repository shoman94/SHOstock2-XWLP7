.class Lcom/android/email/activity/setup/AccountSetupOptions$4;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->showErrorDialog(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iput p2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->val$msgResId:I

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->val$args:[Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 711
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->val$msgResId:I

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupOptions$4$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$4$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 723
    return-void
.end method
