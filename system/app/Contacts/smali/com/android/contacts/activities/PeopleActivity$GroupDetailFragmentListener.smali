.class Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupDetailFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "accountTypeString"
    .parameter "dataSet"

    .prologue
    .line 1346
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactUri"

    .prologue
    .line 1360
    return-void
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 1350
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1351
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1352
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1354
    return-void
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1334
    return-void
.end method

.method public onGroupTitleUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1340
    return-void
.end method
