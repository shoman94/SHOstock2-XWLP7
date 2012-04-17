.class Lcom/android/email/activity/MessageListXL$TextSizeItem;
.super Ljava/lang/Object;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextSizeItem"
.end annotation


# instance fields
.field private final mSize:F

.field private final mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;F)V
    .locals 0
    .parameter
    .parameter "text"
    .parameter "size"

    .prologue
    .line 2356
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$TextSizeItem;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2357
    iput-object p2, p0, Lcom/android/email/activity/MessageListXL$TextSizeItem;->mText:Ljava/lang/String;

    .line 2358
    iput p3, p0, Lcom/android/email/activity/MessageListXL$TextSizeItem;->mSize:F

    .line 2359
    return-void
.end method


# virtual methods
.method public getTextSize()F
    .locals 1

    .prologue
    .line 2366
    iget v0, p0, Lcom/android/email/activity/MessageListXL$TextSizeItem;->mSize:F

    return v0
.end method

.method public getTextSizeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$TextSizeItem;->mText:Ljava/lang/String;

    return-object v0
.end method
