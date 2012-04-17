.class Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageData"
.end annotation


# instance fields
.field accountKey:I

.field accountSchema:Ljava/lang/String;

.field convId:Ljava/lang/String;

.field convThreadId:I

.field displayName:Ljava/lang/String;

.field flagAttachment:I

.field flagFavorite:I

.field flagRead:I

.field flagReadConv:I

.field flagReply:I

.field flagStatus:I

.field flags:I

.field followflagComConv:I

.field followflagSetConv:I

.field importance:I

.field lastVerb:I

.field localRead:I

.field mailBoxKey:I

.field mailboxType:I

.field messageType:I

.field recordID:Ljava/lang/Long;

.field sFlag:I

.field serverId:Ljava/lang/String;

.field smime:I

.field snippet:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field templateId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

.field threadId:Ljava/lang/Long;

.field timeStamp:J

.field typeMsg:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->this$0:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
