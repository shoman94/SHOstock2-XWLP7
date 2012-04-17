.class Lcom/android/email/MessagingController$14;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter

    .prologue
    .line 3135
    iput-object p1, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "newUid"

    .prologue
    .line 3137
    return-void
.end method
