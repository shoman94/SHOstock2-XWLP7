.class public Lcom/android/contacts/interactions/DeleteContactsInteraction;
.super Landroid/app/Fragment;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;
    }
.end annotation


# static fields
.field private static mActive:Z

.field private static mCanceled:Z

.field private static mIsTaskRunning:Z

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishActivityWhenDone:Z

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 190
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    return p0
.end method

.method public static isContactsDeleting(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 94
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "deleteContacts"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 96
    .local v0, fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isTaskRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x1

    .line 99
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/android/contacts/interactions/DeleteContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startDeleteContacts()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    if-nez v0, :cond_0

    .line 174
    sput-boolean v3, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 175
    sput-boolean v2, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    .line 176
    new-instance v0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    .line 177
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    new-array v1, v2, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    :cond_0
    return-void
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;
    .locals 4
    .parameter "activity"
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/android/contacts/interactions/DeleteContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 79
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "deleteContacts"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 81
    .local v0, fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .end local v0           #fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;-><init>()V

    .line 83
    .restart local v0       #fragment:Lcom/android/contacts/interactions/DeleteContactsInteraction;
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setDeleteUris(Ljava/util/ArrayList;)V

    .line 84
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "deleteContacts"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setDeleteUris(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isAdded()Z

    move-result v0

    return v0
.end method

.method public isTaskRunning()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    .line 167
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactUri:Landroid/net/Uri;

    .line 168
    const-string v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mFinishActivityWhenDone:Z

    .line 170
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 131
    :cond_0
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->setTarget(Ljava/lang/Object;)V

    .line 134
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "active"

    sget-boolean v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    const-string v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 120
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startDeleteContacts()V

    .line 121
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 142
    :cond_0
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    .line 151
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 152
    return-void
.end method

.method public setDeleteUris(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    .line 183
    iput-object p1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startDeleteContacts()V

    .line 188
    :cond_0
    return-void
.end method
