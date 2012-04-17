.class Lcom/android/contacts/group/GroupDetailFragment$4;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;

.field final synthetic val$accountType:Lcom/android/contacts/model/AccountType;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/model/AccountType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->val$accountType:Lcom/android/contacts/model/AccountType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 357
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J
    invoke-static {v3}, Lcom/android/contacts/group/GroupDetailFragment;->access$700(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->val$accountType:Lcom/android/contacts/model/AccountType;

    iget-object v2, v2, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->val$accountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/group/GroupDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method
