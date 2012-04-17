.class Lcom/android/email/activity/setup/AccountSetupOptions$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, -0x1

    .line 358
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptions;->oldSyncTime:I
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 360
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0805dd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    const v3, 0x7f0805de

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupOptions$1$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$1$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 372
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 374
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/AccountSetupOptions;->oldSyncTime:I
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$002(Lcom/android/email/activity/setup/AccountSetupOptions;I)I

    .line 376
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
