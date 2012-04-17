.class public Lcom/android/email/activity/cba/ImportCertificate;
.super Landroid/app/Activity;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;
    }
.end annotation


# static fields
.field private static toast:Landroid/widget/Toast;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mCertToImport:Ljava/io/File;

.field private mCertificateManager:Lcom/android/email/cba/CertificateMgr;

.field private mDialogResult:I

.field private mImportedCertificateName:Ljava/lang/String;

.field private mKeystorePassword:Ljava/lang/String;

.field mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 160
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/cba/ImportCertificate;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertToImport:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/email/activity/cba/ImportCertificate;)Lcom/android/email/cba/CertificateMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/cba/ImportCertificate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->reopenDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/cba/ImportCertificate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->createFileList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/cba/ImportCertificate;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->getViewText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/cba/ImportCertificate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->hideError()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/cba/ImportCertificate;I)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->showError(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/cba/ImportCertificate;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/cba/ImportCertificate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/cba/ImportCertificate;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->renameCertificate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/cba/ImportCertificate;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->importCertificate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/cba/ImportCertificate;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    return-object v0
.end method

.method private createFileList()V
    .locals 11

    .prologue
    const/16 v10, 0xbb8

    .line 98
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 99
    const-string v7, "ImportCertificate"

    const-string v8, "finishing, exit createFileList()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0804c0

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->finish()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 109
    .local v5, root:Ljava/io/File;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v4, p12Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 111
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 112
    .local v1, files:[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v1

    if-ge v2, v7, :cond_5

    .line 113
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, fileName:Ljava/lang/String;
    const-string v7, ".p12"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ".pfx"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 115
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #i:I
    :cond_4
    const v7, 0x7f0804c1

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 121
    :cond_5
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/external_sd"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v6, root_2:Ljava/io/File;
    if-eqz v6, :cond_8

    .line 123
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 124
    .restart local v1       #files:[Ljava/io/File;
    const-string v7, "AJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name 2nd root "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v1, :cond_9

    .line 126
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_9

    .line 127
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0       #fileName:Ljava/lang/String;
    const-string v7, ".p12"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, ".pfx"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 129
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "external_sd/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 134
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #i:I
    :cond_8
    const-string v7, "ImportCertificate"

    const-string v8, "external_sd is not founded"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_9
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 140
    .local v3, items:[Ljava/lang/String;
    const-string v7, "ImportCertificate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz v3, :cond_a

    array-length v7, v3

    if-lez v7, :cond_a

    .line 142
    iget-object v7, p0, Lcom/android/email/activity/cba/ImportCertificate;->listView:Landroid/widget/ListView;

    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090003

    invoke-direct {v8, p0, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 147
    :cond_a
    sget-object v7, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    if-nez v7, :cond_b

    .line 148
    const v7, 0x7f0804c2

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    sput-object v7, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    .line 154
    :cond_b
    sget-object v7, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->finish()V

    goto/16 :goto_0
.end method

.method private createOnClickListener(I)Landroid/content/DialogInterface$OnClickListener;
    .locals 3
    .parameter "id"

    .prologue
    .line 238
    const v1, 0x7f040099

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    .line 240
    new-instance v0, Lcom/android/email/activity/cba/ImportCertificate$2;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/cba/ImportCertificate$2;-><init>(Lcom/android/email/activity/cba/ImportCertificate;I)V

    .line 279
    .local v0, onClickHandler:Landroid/content/DialogInterface$OnClickListener;
    return-object v0
.end method

.method private createSingleEditLineDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createOnClickListener(I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 358
    .local v2, onClick:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createOnDismissListener(I)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v3

    .line 360
    .local v3, onDismiss:Landroid/content/DialogInterface$OnDismissListener;
    const-string v5, ""

    .line 361
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    const v7, 0x7f100269

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 363
    .local v4, text:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    const v7, 0x7f10026a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 365
    .local v1, dialogEditTextRename:Landroid/widget/EditText;
    packed-switch p1, :pswitch_data_0

    .line 378
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 382
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 384
    new-instance v6, Lcom/android/email/activity/cba/ImportCertificate$4;

    invoke-direct {v6, p0, p1, v4, v1}, Lcom/android/email/activity/cba/ImportCertificate$4;-><init>(Lcom/android/email/activity/cba/ImportCertificate;ILandroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 414
    return-object v0

    .line 367
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    const v6, 0x7f0804c5

    invoke-virtual {p0, v6}, Lcom/android/email/activity/cba/ImportCertificate;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    iget-object v6, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 372
    :pswitch_1
    const v6, 0x7f0804c3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/cba/ImportCertificate;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 374
    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewText(I)Ljava/lang/String;
    .locals 1
    .parameter "viewId"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

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
    .line 437
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 439
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_0
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f100268

    invoke-direct {p0, v0}, Lcom/android/email/activity/cba/ImportCertificate;->hide(I)V

    .line 444
    return-void
.end method

.method private importCertificate(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertToImport:Ljava/io/File;

    invoke-virtual {v1, v2, p1}, Lcom/android/email/cba/CertificateMgr;->importCertificate(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    const-string v1, "ImportCertificate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CertificateManagerException!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/emailcommon/cba/CertificateManagerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/cba/ImportCertificate$5;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private renameCertificate(Ljava/lang/String;)V
    .locals 3
    .parameter "certificateName"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/email/cba/CertificateMgr;->renameCertificate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$6;

    invoke-direct {v1, p0}, Lcom/android/email/activity/cba/ImportCertificate$6;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private reopenDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 447
    iget v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    if-ne v0, v2, :cond_1

    .line 448
    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/ImportCertificate;->showDialog(I)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->showDialog(I)V

    goto :goto_0
.end method

.method private showError(I)Landroid/widget/TextView;
    .locals 3
    .parameter "msgId"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    const v2, 0x7f100268

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 428
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :cond_0
    return-object v0
.end method

.method private stopSdCardMonitor()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    invoke-virtual {v0}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->stopWatching()V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public createOnDismissListener(I)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "id"

    .prologue
    .line 284
    new-instance v0, Lcom/android/email/activity/cba/ImportCertificate$3;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/cba/ImportCertificate$3;-><init>(Lcom/android/email/activity/cba/ImportCertificate;I)V

    .line 352
    .local v0, onDismissHandler:Landroid/content/DialogInterface$OnDismissListener;
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 418
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 419
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v3, 0x7f04005d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/cba/ImportCertificate;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 66
    const-string v3, "KEYSTORE_PASSWORD"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 69
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "keystore password can not be null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_2
    :try_start_0
    new-instance v3, Lcom/android/email/cba/CertificateMgr;

    iget-object v4, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;
    :try_end_0
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    const v3, 0x7f100143

    invoke-virtual {p0, v3}, Lcom/android/email/activity/cba/ImportCertificate;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->listView:Landroid/widget/ListView;

    .line 79
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->createFileList()V

    .line 81
    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/email/activity/cba/ImportCertificate$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/cba/ImportCertificate$1;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    new-instance v3, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    invoke-direct {v3, p0}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    .line 94
    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->startWatching()V

    .line 95
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804c9

    const/16 v5, 0xbb8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 216
    packed-switch p1, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    iput v2, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 219
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createSingleEditLineDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 222
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createSingleEditLineDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0804c7

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->stopSdCardMonitor()V

    .line 207
    return-void
.end method
