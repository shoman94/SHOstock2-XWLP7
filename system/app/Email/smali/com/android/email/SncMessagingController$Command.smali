.class Lcom/android/email/SncMessagingController$Command;
.super Ljava/lang/Object;
.source "SncMessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Command"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field info:Lcom/android/email/SncMessagingController$CommandInfo;

.field public runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4939
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/SncMessagingController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4939
    invoke-direct {p0}, Lcom/android/email/SncMessagingController$Command;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4946
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4947
    .local v0, str:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/email/SncMessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4948
    iget-object v1, p0, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    if-eqz v1, :cond_0

    .line 4949
    const-string v1, " ]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v2, v2, Lcom/android/email/SncMessagingController$CommandInfo;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v2, v2, Lcom/android/email/SncMessagingController$CommandInfo;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4952
    :cond_0
    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4953
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
