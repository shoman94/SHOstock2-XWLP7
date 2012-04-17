.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$000(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    .line 172
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 175
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 178
    return-void
.end method
