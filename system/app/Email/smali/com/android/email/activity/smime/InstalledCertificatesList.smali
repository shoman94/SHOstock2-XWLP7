.class public Lcom/android/email/activity/smime/InstalledCertificatesList;
.super Landroid/app/Fragment;
.source "InstalledCertificatesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;,
        Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;
    }
.end annotation


# instance fields
.field private importButtonLayout:Landroid/widget/LinearLayout;

.field private mActiveCertificate:Ljava/lang/String;

.field private mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

.field private mCertificatesList:Landroid/widget/ListView;

.field private mDeleteItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteMode:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private noCertificateImg:Landroid/widget/ImageView;

.field private noCertificateText:Landroid/widget/TextView;

.field private pa:Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 67
    iput-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 470
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/smime/InstalledCertificatesList;)Lcom/android/emailcommon/smime/CertificateMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/smime/InstalledCertificatesList;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->pa:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/smime/InstalledCertificatesList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    return-void
.end method

.method private fillCertificateList()V
    .locals 11

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, counter:I
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v6}, Lcom/android/emailcommon/smime/CertificateMgr;->getAliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 158
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, alias:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v5

    .line 163
    .local v5, key:Ljava/security/Key;
    if-eqz v5, :cond_0

    .line 164
    new-instance v6, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0           #alias:Ljava/lang/String;
    .end local v5           #key:Ljava/security/Key;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 170
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_1
    iget-boolean v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    if-nez v6, :cond_3

    .line 178
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1090003

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_2
    return-void

    .line 173
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 174
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :catch_0
    move-exception v3

    .line 185
    .local v3, e:Lcom/android/emailcommon/smime/CertificateManagerException;
    invoke-virtual {v3}, Lcom/android/emailcommon/smime/CertificateManagerException;->printStackTrace()V

    .line 186
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0804cb

    const/16 v8, 0xbb8

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 181
    .end local v3           #e:Lcom/android/emailcommon/smime/CertificateManagerException;
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v8, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v8, p0, v9, v6}, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList;Landroid/content/Context;[Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method deleteCertificates()V
    .locals 4

    .prologue
    .line 318
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/email/activity/smime/InstalledCertificatesList;->showDialog(I)Landroid/app/Dialog;

    .line 319
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/email/activity/smime/InstalledCertificatesList$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$2;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0804ce

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public importCertificate()V
    .locals 7

    .prologue
    .line 355
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 356
    const-string v0, "KEYSTORE_PASSWORD"

    iget-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 358
    const-class v1, Lcom/android/email/activity/smime/ImportCertificate;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0804bc

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 361
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 367
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v1}, Lcom/android/emailcommon/smime/CertificateMgr;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 376
    :cond_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to instantiate Certificate Manager "

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 77
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 195
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 197
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 85
    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->pa:Landroid/preference/PreferenceActivity;

    .line 87
    const v2, 0x7f1000ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    .line 89
    const v2, 0x7f1000f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->importButtonLayout:Landroid/widget/LinearLayout;

    .line 90
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->importButtonLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    const v2, 0x7f1000ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    .line 92
    const v2, 0x7f1000f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KEYSTORE_PASSWORD"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CERTIFICATE_ALIAS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mActiveCertificate:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EMAIL_ADDRESS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    .line 98
    :try_start_0
    new-instance v2, Lcom/android/emailcommon/smime/CertificateMgr;

    iget-object v3, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 106
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/smime/InstalledCertificatesList$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$1;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to instantiate Certificate Manager "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 312
    :goto_0
    return v2

    .line 285
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->importCertificate()V

    goto :goto_0

    .line 288
    :sswitch_1
    iput-boolean v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 289
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 290
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 293
    :sswitch_2
    iput-boolean v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 294
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->deleteCertificates()V

    .line 303
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    goto :goto_1

    .line 306
    :sswitch_3
    iput-boolean v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 307
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 308
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 309
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_3
        0x7f10002a -> :sswitch_2
        0x7f1002b0 -> :sswitch_0
        0x7f1002b1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f1002b1

    const/4 v4, 0x1

    .line 253
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 254
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 255
    .local v1, size:I
    iget-boolean v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    if-ne v2, v4, :cond_1

    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 257
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

    .line 259
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 256
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 264
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 265
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

    .line 267
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 269
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 273
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 274
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0201b4

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    :goto_4
    return-void

    .line 276
    :cond_4
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method protected showDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_0

    .line 387
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 381
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0804cf

    invoke-virtual {p0, v1}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 384
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
