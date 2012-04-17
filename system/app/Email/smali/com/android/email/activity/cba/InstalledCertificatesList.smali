.class public Lcom/android/email/activity/cba/InstalledCertificatesList;
.super Landroid/app/Activity;
.source "InstalledCertificatesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;,
        Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;
    }
.end annotation


# instance fields
.field private importButtonLayout:Landroid/widget/LinearLayout;

.field private mActiveCertificate:Ljava/lang/String;

.field private mCertificateManager:Lcom/android/email/cba/CertificateMgr;

.field private mCertificatesList:Landroid/widget/ListView;

.field private mDeleteItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteMode:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private noCertificateImg:Landroid/widget/ImageView;

.field private noCertificateText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 53
    iput-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 513
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/cba/InstalledCertificatesList;)Lcom/android/email/cba/CertificateMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/cba/InstalledCertificatesList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    return-void
.end method

.method private fillCertificateList()V
    .locals 10

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, counter:I
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    invoke-virtual {v6}, Lcom/android/email/cba/CertificateMgr;->getAliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 133
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 136
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, alias:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    invoke-virtual {v6, v0}, Lcom/android/email/cba/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v5

    .line 139
    .local v5, key:Ljava/security/Key;
    if-eqz v5, :cond_0

    .line 140
    new-instance v6, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v0           #alias:Ljava/lang/String;
    .end local v5           #key:Ljava/security/Key;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_1
    iget-boolean v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    if-nez v6, :cond_3

    .line 155
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_2
    return-void

    .line 150
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 151
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 162
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :catch_0
    move-exception v3

    .line 163
    .local v3, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0804cb

    const/16 v8, 0xbb8

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 159
    .end local v3           #e:Lcom/android/emailcommon/cba/CertificateManagerException;
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v8, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v8, p0, p0, v6}, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList;Landroid/content/Context;[Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method deleteCertificates()V
    .locals 7

    .prologue
    const/16 v6, 0xbb8

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, isAliasActiveCertificate:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 318
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->getAlias()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mActiveCertificate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    const/4 v1, 0x1

    .line 325
    :cond_1
    if-nez v1, :cond_2

    .line 327
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->showDialog(I)V

    .line 329
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/email/activity/cba/InstalledCertificatesList$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/cba/InstalledCertificatesList$2;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 405
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_0
    return-void

    .line 382
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 384
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 386
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804cd

    const/16 v5, 0xbb8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804ce

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public importCertificate()V
    .locals 3

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/cba/ImportCertificate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    const-string v1, "KEYSTORE_PASSWORD"

    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 411
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 416
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 418
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    invoke-virtual {v1}, Lcom/android/email/cba/CertificateMgr;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 426
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    .line 428
    :cond_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to instantiate Certificate Manager "

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x4

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v2, 0x7f04004c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 64
    const v2, 0x7f1000ed

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    .line 66
    const v2, 0x7f1000f1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->importButtonLayout:Landroid/widget/LinearLayout;

    .line 68
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->importButtonLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    const v2, 0x7f1000ef

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    .line 70
    const v2, 0x7f1000f0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 77
    :cond_0
    const-string v2, "KEYSTORE_PASSWORD"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    .line 78
    const-string v2, "CERTIFICATE_ALIAS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mActiveCertificate:Ljava/lang/String;

    .line 79
    const-string v2, "EMAIL_ADDRESS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    .line 81
    :try_start_0
    new-instance v2, Lcom/android/email/cba/CertificateMgr;

    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 87
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/cba/InstalledCertificatesList$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/cba/InstalledCertificatesList$1;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to instantiate Certificate Manager "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 432
    packed-switch p1, :pswitch_data_0

    .line 440
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 434
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0804cf

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    .line 272
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->importCertificate()V

    goto :goto_0

    .line 275
    :sswitch_1
    iput-boolean v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 276
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    goto :goto_0

    .line 280
    :sswitch_2
    iput-boolean v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 281
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->deleteCertificates()V

    .line 290
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    goto :goto_1

    .line 293
    :sswitch_3
    iput-boolean v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 294
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 295
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 296
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    goto :goto_0

    .line 301
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->finish()V

    goto :goto_0

    .line 270
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f100029 -> :sswitch_3
        0x7f10002a -> :sswitch_2
        0x7f1002b0 -> :sswitch_0
        0x7f1002b1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f1002b1

    const/4 v4, 0x1

    .line 240
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 241
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 242
    .local v1, size:I
    iget-boolean v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    if-ne v2, v4, :cond_1

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 244
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f10002a

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f100029

    if-eq v2, v3, :cond_0

    .line 246
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 251
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 252
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1002b0

    if-eq v2, v3, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 254
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 256
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 260
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 261
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0201b4

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 265
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 263
    :cond_4
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method
