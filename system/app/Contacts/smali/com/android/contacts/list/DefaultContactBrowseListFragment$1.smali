.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;
.super Lcom/android/contacts/list/ProfileAndContactsLoader;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCursorLoaderToSupportSimContacts()Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0, p2}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->getSelection()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, selectionString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v1, " AND (link_type1 != \'vnd.sec.contact.sim\')"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->setSelection(Ljava/lang/String;)V

    .line 222
    .end local v0           #selectionString:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/list/ProfileAndContactsLoader;->onContentChanged()V

    .line 223
    return-void
.end method
