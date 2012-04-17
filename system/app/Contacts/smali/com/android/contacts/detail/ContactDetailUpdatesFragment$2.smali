.class Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;
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
    .line 91
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    .line 95
    .local v2, tag:Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    if-nez v2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->streamItem:Lcom/android/contacts/util/StreamItemEntry;

    #calls: Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->access$000(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 100
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->getStreamItemPhotoUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemPhotoActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v3, v1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
