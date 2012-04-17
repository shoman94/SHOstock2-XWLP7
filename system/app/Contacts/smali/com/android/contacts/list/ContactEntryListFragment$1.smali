.class Lcom/android/contacts/list/ContactEntryListFragment$1;
.super Landroid/os/Handler;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$1;,"Lcom/android/contacts/list/ContactEntryListFragment.1;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 215
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$1;,"Lcom/android/contacts/list/ContactEntryListFragment.1;"
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    .line 218
    :cond_0
    return-void
.end method
