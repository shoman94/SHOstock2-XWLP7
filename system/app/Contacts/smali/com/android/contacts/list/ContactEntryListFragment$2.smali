.class Lcom/android/contacts/list/ContactEntryListFragment$2;
.super Landroid/content/CursorLoader;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoaderToSupportSimContacts()Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 497
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$2;,"Lcom/android/contacts/list/ContactEntryListFragment.2;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 3

    .prologue
    .line 500
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$2;,"Lcom/android/contacts/list/ContactEntryListFragment.2;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment$2;->getSelection()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, selectionString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const-string v1, " AND (link_type1 != \'vnd.sec.contact.sim\')"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 508
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment$2;->setSelection(Ljava/lang/String;)V

    .line 513
    .end local v0           #selectionString:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/content/CursorLoader;->onContentChanged()V

    .line 514
    return-void
.end method
