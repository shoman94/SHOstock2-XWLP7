.class Lcom/android/email/activity/MessageListItem$SearchItem;
.super Ljava/lang/Object;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchItem"
.end annotation


# instance fields
.field index:I

.field position:I

.field searchStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListItem;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 835
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem$SearchItem;->this$0:Lcom/android/email/activity/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput v0, p0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    .line 839
    iput v0, p0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    return-void
.end method
