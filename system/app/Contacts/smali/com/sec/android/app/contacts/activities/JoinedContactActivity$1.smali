.class Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;
.super Ljava/lang/Object;
.source "JoinedContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->access$000(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->showDialog(I)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    #calls: Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->showJoinAggregateActivity()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->access$100(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V

    goto :goto_0
.end method
