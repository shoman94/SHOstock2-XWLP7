.class Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;
.super Ljava/lang/Object;
.source "GroupChangeOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->access$000(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->onDoneClicked()V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->finish()V

    .line 86
    return-void
.end method
