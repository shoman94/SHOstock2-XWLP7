.class public Lcom/android/contacts/util/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;,
        Lcom/android/contacts/util/DialogManager$DialogShowingView;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mUseDialogId2:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    .line 58
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/util/DialogManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static final isManagedId(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 50
    const v0, 0x7f0d0015

    if-eq p0, v0, :cond_0

    const v0, 0x7f0d0016

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    .line 86
    const v3, 0x7f0d0015

    if-ne p1, v3, :cond_0

    .line 87
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    .line 93
    :goto_0
    const-string v3, "view_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bundle does not contain a ViewId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_0
    const v3, 0x7f0d0016

    if-ne p1, v3, :cond_2

    .line 89
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    goto :goto_0

    .line 96
    :cond_1
    const-string v3, "view_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, viewId:I
    iget-object v3, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    if-nez v3, :cond_3

    .line 112
    .end local v1           #view:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_2
    :goto_1
    return-object v0

    .line 101
    .restart local v1       #view:Landroid/view/View;
    .restart local v2       #viewId:I
    :cond_3
    check-cast v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1, p2}, Lcom/android/contacts/util/DialogManager$DialogShowingView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 102
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_2

    .line 107
    new-instance v3, Lcom/android/contacts/util/DialogManager$1;

    invoke-direct {v3, p0, p1}, Lcom/android/contacts/util/DialogManager$1;-><init>(Lcom/android/contacts/util/DialogManager;I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1
.end method

.method public showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "bundle"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 70
    .local v1, viewId:I
    const-string v2, "view_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bundle already contains a view_id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View does not have a proper ViewId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_1
    const-string v2, "view_id"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget-boolean v2, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0d0016

    .line 78
    .local v0, dialogId:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0, p2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 79
    return-void

    .line 77
    .end local v0           #dialogId:I
    :cond_2
    const v0, 0x7f0d0015

    goto :goto_0
.end method
