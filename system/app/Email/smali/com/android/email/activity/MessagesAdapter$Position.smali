.class Lcom/android/email/activity/MessagesAdapter$Position;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Position"
.end annotation


# instance fields
.field listPosition:I

.field parentIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "pos"
    .parameter "pInx"

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    .line 290
    iput p2, p0, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    .line 291
    return-void
.end method
