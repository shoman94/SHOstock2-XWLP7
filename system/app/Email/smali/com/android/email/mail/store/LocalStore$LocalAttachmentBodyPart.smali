.class public Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;
.super Lcom/android/emailcommon/internet/MimeBodyPart;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalAttachmentBodyPart"
.end annotation


# instance fields
.field private mAttachmentId:J

.field final synthetic this$0:Lcom/android/email/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/LocalStore;Lcom/android/emailcommon/mail/Body;J)V
    .locals 2
    .parameter
    .parameter "body"
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->this$0:Lcom/android/email/mail/store/LocalStore;

    .line 1760
    invoke-direct {p0, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;)V

    .line 1757
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 1761
    iput-wide p3, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 1762
    return-void
.end method


# virtual methods
.method public getAttachmentId()J
    .locals 2

    .prologue
    .line 1771
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    return-wide v0
.end method

.method public setAttachmentId(J)V
    .locals 0
    .parameter "attachmentId"

    .prologue
    .line 1775
    iput-wide p1, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 1776
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
