.class final Lcom/android/mms/data/Conversation$3;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/android/mms/data/Conversation$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$1000(Landroid/content/Context;)V

    .line 1150
    return-void
.end method
