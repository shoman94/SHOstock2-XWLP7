.class Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;
.super Ljava/lang/Object;
.source "ContactDetailUpdatesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailUpdatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/StreamItemEntry;

    .line 75
    .local v2, streamItemEntry:Lcom/android/contacts/util/StreamItemEntry;
    if-nez v2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    #calls: Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    invoke-static {v4, v2}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->access$000(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 81
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    sget-object v4, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 83
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, v0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v4, v1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
