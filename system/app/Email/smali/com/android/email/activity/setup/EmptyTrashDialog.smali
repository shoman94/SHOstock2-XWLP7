.class public Lcom/android/email/activity/setup/EmptyTrashDialog;
.super Landroid/preference/DialogPreference;
.source "EmptyTrashDialog.java"


# instance fields
.field private mAccountId:J

.field private mController:Lcom/android/email/Controller;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    .line 24
    iput-object v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    .line 25
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->emptyTrash(J)V

    .line 45
    iget-object v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 49
    :cond_0
    return-void
.end method

.method setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    .line 29
    return-void
.end method

.method setController(Lcom/android/email/Controller;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    .line 33
    return-void
.end method

.method setPositiveResultDialog(Landroid/app/Dialog;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    .line 37
    return-void
.end method
