.class Lcom/android/email/activity/setup/AccountSetupNames$1;
.super Ljava/lang/Object;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupNames;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$1;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$1;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    #calls: Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupNames;->access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 207
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 210
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 213
    return-void
.end method
