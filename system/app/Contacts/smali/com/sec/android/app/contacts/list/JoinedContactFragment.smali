.class public Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.super Landroid/app/ListFragment;
.source "JoinedContactFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;,
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final RAW_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static mLinkedContactsCount:I

.field private static mSelectedContactUri:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

.field private mJustCreated:Z

.field private mList:Landroid/widget/ListView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/net/Uri;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->doSplitContactAction(Landroid/net/Uri;J)Z

    move-result v0

    return v0
.end method

.method private doSplitContactAction(Landroid/net/Uri;J)Z
    .locals 3
    .parameter "contactLookupUri"
    .parameter "targetRawContactId"

    .prologue
    .line 215
    new-instance v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 217
    .local v0, dialog:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setContactId(JJ)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SplitContactConfirmationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x1

    return v1
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 167
    const-string v0, "JoinedContact"

    const-string v3, "JoinedContact startQuery"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->cancelOperation(I)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    sget-object v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v4, "raw_contacts2"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method


# virtual methods
.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 121
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mDisplayName:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 124
    .local v0, data:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 125
    .local v2, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 128
    sput-object v2, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 131
    :cond_0
    if-nez v2, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mJustCreated:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 149
    const v0, 0x7f040092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    .line 151
    new-instance v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 157
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 416
    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 419
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 174
    return-void
.end method

.method public onSplitCompleted(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 410
    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 412
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 413
    return-void
.end method

.method public onSplitContactConfirmed(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v5, 0x1

    const-class v6, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    const-string v7, "splitCompleted"

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSplitContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 407
    return-void
.end method
