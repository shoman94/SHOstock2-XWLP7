.class Lcom/android/contacts/list/ContactEntryListFragment$3;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;


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
    .line 1256
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$3;,"Lcom/android/contacts/list/ContactEntryListFragment.3;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 1259
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$3;,"Lcom/android/contacts/list/ContactEntryListFragment.3;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    .line 1260
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 1261
    return-void
.end method
