.class public Lcom/android/email/Controller$PendingDownloadController;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingDownloadController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/android/email/Controller$PendingDownloadController;->this$0:Lcom/android/email/Controller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/email/Controller$PendingDownloadController;->this$0:Lcom/android/email/Controller;

    #calls: Lcom/android/email/Controller;->processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V
    invoke-static {v0}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)V

    .line 2693
    return-void
.end method
