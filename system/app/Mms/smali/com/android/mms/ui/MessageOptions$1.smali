.class Lcom/android/mms/ui/MessageOptions$1;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$lockUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$1;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$1;->val$lockUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$1;->val$values:Landroid/content/ContentValues;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$1;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$1;->val$lockUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    return-void
.end method
