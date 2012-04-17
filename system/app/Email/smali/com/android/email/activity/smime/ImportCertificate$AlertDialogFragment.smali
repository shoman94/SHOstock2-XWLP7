.class public Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/smime/ImportCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->hideError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->showError(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->onDismissDialog(I)V

    return-void
.end method

.method private getViewText(I)Ljava/lang/String;
    .locals 1
    .parameter "viewId"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hide(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 447
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :cond_0
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 451
    const v0, 0x7f100268

    invoke-direct {p0, v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->hide(I)V

    .line 452
    return-void
.end method

.method public static newInstance(I)Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;
    .locals 3
    .parameter "id"

    .prologue
    .line 325
    new-instance v1, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;-><init>()V

    .line 326
    .local v1, frag:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    invoke-virtual {v1, v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 329
    return-object v1
.end method

.method private onDismissDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v3

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I
    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$800(Lcom/android/email/activity/smime/ImportCertificate;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 466
    move v1, p1

    .line 467
    .local v1, dialogId:I
    const v3, 0x7f100269

    invoke-direct {p0, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, data:Ljava/lang/String;
    const v3, 0x7f10026a

    invoke-direct {p0, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, renameData:Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 511
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #dialogId:I
    .end local v2           #renameData:Ljava/lang/String;
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v3

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I
    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$800(Lcom/android/email/activity/smime/ImportCertificate;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 494
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;

    invoke-direct {v4, p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v3

    #calls: Lcom/android/email/activity/smime/ImportCertificate;->reopenDialog()V
    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$1600(Lcom/android/email/activity/smime/ImportCertificate;)V

    goto :goto_0
.end method

.method private showError(I)Landroid/widget/TextView;
    .locals 3
    .parameter "msgId"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    const v2, 0x7f100268

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 456
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :cond_0
    return-object v0
.end method


# virtual methods
.method getOwner()Lcom/android/email/activity/smime/ImportCertificate;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/smime/ImportCertificate;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 338
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/smime/ImportCertificate;

    .line 339
    .local v3, target:Lcom/android/email/activity/smime/ImportCertificate;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 340
    .local v2, id:I
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040099

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    .line 342
    const-string v5, ""

    .line 343
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    const v7, 0x7f100269

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 345
    .local v4, text:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    const v7, 0x7f10026a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 348
    .local v1, dialogEditTextRename:Landroid/widget/EditText;
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/smime/ImportCertificate;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/email/activity/smime/ImportCertificate;->access$602(Lcom/android/email/activity/smime/ImportCertificate;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 350
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v6

    const v7, 0x7f0804c7

    invoke-virtual {p0, v7}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v6

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    .line 356
    :cond_0
    if-ne v2, v9, :cond_2

    .line 357
    const v6, 0x7f0804c3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 365
    :cond_1
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;

    invoke-direct {v8, p0, v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;

    invoke-direct {v8, p0, v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 407
    .local v0, d:Landroid/app/Dialog;
    new-instance v6, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$3;

    invoke-direct {v6, p0, v2, v4, v1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$3;-><init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;ILandroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0

    .line 359
    .end local v0           #d:Landroid/app/Dialog;
    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 360
    const v6, 0x7f0804c5

    invoke-virtual {p0, v6}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 361
    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$700(Lcom/android/email/activity/smime/ImportCertificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method
