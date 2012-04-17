.class Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;
.super Ljava/lang/Object;
.source "ContactHistoryViewByActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->RegisterActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->access$000(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->linkListItemToOption()V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->access$000(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->doSaveAction([Z)V

    .line 71
    return-void
.end method
