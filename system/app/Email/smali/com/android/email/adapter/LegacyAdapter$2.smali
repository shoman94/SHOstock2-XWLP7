.class Lcom/android/email/adapter/LegacyAdapter$2;
.super Ljava/lang/Object;
.source "LegacyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/LegacyAdapter;->updateMailboxList(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/LegacyAdapter;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/LegacyAdapter;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/adapter/LegacyAdapter$2;->this$0:Lcom/android/email/adapter/LegacyAdapter;

    iput-wide p2, p0, Lcom/android/email/adapter/LegacyAdapter$2;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v1, p0, Lcom/android/email/adapter/LegacyAdapter$2;->val$accountId:J

    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 149
    return-void
.end method
